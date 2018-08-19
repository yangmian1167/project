width,height = screen.size();
sys.toast(width.."*"..height)
nLog(app.front_bid())

function log(txt,key)
	nLog(txt)
	if key then
		sys.toast(txt)
	end
end
--解锁屏幕
function lock()
	if device.is_screen_locked() then
		-- 屏幕已锁定
		device.unlock_screen()
	else
		-- 屏幕是解锁状态
		return true
	end
end
--启动app
function active(app_bid,t)
	local t = t or 3
	if lock()then
		if app_bid == app.front_bid() then
			return true
		else
			log('RunApp'..app_bid)
			if app.run(app_bid) == 0 then
				sys.msleep(t*1000)
			end
		end
	end
end
--杀掉进程和app
function closeX(app_bid,key,t)
	local key = key or false
	local t = t or 2
	if key then
		app.quit(app_bid)
	else
		app.close(app_bid)
	end
	delay(t)
end
--随机偏移点击函数
function click(x,y,t,wait,txt)
	local t = t or 1
	local wait = wait or 0.2
	local txt = txt or false
	if txt then
		log(txt,true)
	end
	local offset = math.random(-3,3)
	touch.tap(x+offset,y+offset,wait*1000,t*1000)
end
--滑动函数(x1,y1,x2,y2,步长，每步延迟，弹起时间)
function moveTo(x1,y1,x2,y2,setp,times,wait)
	local setp = setp or 5
	local times = times or 2
	local wait = wait or 0.5
	touch.on(x1,y1)
		:step_len(setp)
		:step_delay(times)
		:move(x2,y2)
		:msleep(1000 * wait)
	:off()
end
--多点找色函数
function cpic(t,name,clicks,mun)
	local mun = mun or 0
	x, y = screen.find_color(t[1],t[2],t[3],t[4],t[5],t[6])
	if x~=-1 and y ~= -1 then
		if clicks then
			log('多点找色-->点击-->'..name)
			click(x,y)
			delay(mun)
		else
			log('多点找色-->'..name)
		end
		return true
	end
end
--多点比色函数
function done(t,name,clicks,mun)
	local mun = mun or 1
	local s = t[2] or 85
	local Arr = t[1]
	if screen.is_colors(Arr,s) then
		log('多点比色-->'..name)
		if clicks then
			click(t[1][mun][1],t[1][mun][2])
		end
		return true
	end
end
--d
function d(t,name,clicks,mun)
	if #t > 3 then
		return cpic(t,name,clicks,mun)
	else
		return done(t,name,clicks,mun)
	end
end

--vpnTable 示例
vpnlist ={
		dispName = 'adad01',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'adad01',
		password = 'Aa112211',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}
--创建一个vpn
function creat_vpn(table)
	local success = vpnconf.create{
		dispName = table.dispName,
		VPNType = table.VPNType,
		server = table.server,
		authorization = table.authorization,
		password = table.password,
		secret = table.secret,
		encrypLevel = table.encrypLevel,
		group = table.group,
		VPNSendAllTraffic = table.VPNSendAllTraffic,
	}
	if success then
		return true
	else
		sys.toast('创建失败，确定人品没有问题？')
	end
end
--creat_vpn(vpnlist)
--读出vpn的列表
function vpn_list()
	local list = vpnconf.list()
	for k,v in ipairs(list)do
		sys.toast(v.dispName)
	end
	return list
end

--url打开
function openUrl(url)
	app.open_url(url)
end

function delay(T)
	local T = T or 1
	nLog("休息-"..T.."-秒")
	sys.msleep(1000*T)
end

--连接vpn
function vpn()
	local timeline = os.time()
	local timeused = 60 * 2
	while (os.time()-timeline < timeused ) do
		if vpnconf.status()["connected"]then
			return true
		elseif vpnconf.connect() then
		end
		delay(3)
	end
end
--断开vpn
function vpnx()
	if vpnconf.disconnect() then
		return true
	end
end
--判断一个[文件or目录] (是否存在)  types = file or directory
function existsFile(path,types)
	local types = types or false
	if types == 'file' and file.exists(path) == 'file' then
		return true
	elseif types == 'directory' and file.exists(path) == 'directory' then
		return true
	else
		if file.exists(path) then
			return true
		end
	end
end
--读文件
function readFile(path,types)
	local types = types or false
	if types then  --如果为真则直接读出所有内容
		local data = file.reads(path)
		if data then
			return data
		end
	else
		local linecount = file.line_count(path)	--读出总行数
		fileList = {}
		for i=1,linecount do
			local data = file.get_line(path, i)
			data = string.strip_utf8_bom(data) -- 处理掉可能存在的 UTF8-BOM
			fileList[i] = data
		end
		return fileList
	end
end
--写入文件
function writeFile(path,t,types,hang)
	local types = types or false
	if types then
		local hang = hang or 0
		local success = file.insert_lines(path, hang, t)
		if success then
			return true
		end
	else
		--如何为真写覆盖
		local success = file.set_lines(path, t)
		if success then
			return true
		end
	end
end
--输入文字
function input(txt,times,types)
	local types = types or 1
	local times = times or 1
	if types == 1 then
		app.input_text(txt)		--app.input_text(普通输入)
	else
		sys.input_text(txt)		--sys.input_text(系统输入)
	end
	delay(times)
end
--require("name")
--post function
function post(url,tables)
	local server = url
	local post_data = ''
	local index = 0
	for k,v in pairs(tables)do
		index = index + 1
		if index == #tables then
			post_data = post_data..k..'='..v
		else
			post_data = post_data..k..'='..v..'&'
		end
	end
	
	safari = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3)'
	local code, res_headers, body = http.post(server, 15, {
		["User-Agent"] = safari, -- 模拟 safari
	}, post_data)
	if code == 200 then
		log(body)
		return body
	end
end
--get
function get(url,times)
	local url = url
	local times = times or 9
	local code, res_headers, body = http.get(url, times, {
		["User-Agent"] = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0)"; -- 模拟 IE8 的请求
		["Cookie"] = ""; -- 顺带 Cookie 提交
	})
	if code == 200 then -- 如果返回的状态码是 HTTP_OK
		return body -- 输出百度首页的网页 HTML 内容
	end
end

-- 使用 http://ip.chinaz.com/getip.aspx 获取
function get_ip()
    local done = false
	local outtime = os.time()
    thread.dispatch(function()
		outtime = os.time()
        while (os.time()-outtime < 30) do
            if (done) then
                sys.toast("", -1)
                return
            else
                sys.toast("正在获取 IP 地址...", device.front_orien())
            end
            sys.msleep(2000)
        end
    end)
    while (os.time() - outtime < 30) do
		local c, h, b = http.get("http://ip.chinaz.com/getip.aspx?ts="..tostring(sys.rnd()), 30)
--        local c, h, b = http.get("https://www.ipip.net/",30)
        if (c==200) then
            sys.toast("", -1)
            done = true
            return b:match('%d+%.%d+%.%d+%.%d+')
        end
    end
end



--[[参数1. rnType 表示随机类型
                1为输入随机数字
                2为随机手机号
                3为随机字母
                4为随机字母/数字(先字母后数字)，一般用于输用户名和密码，所以字母在前
                5为随机邮箱
                6为随机16进制
                7为随机中文(常用中文字库到度娘下载吧)
       参数2. rnLen 表示随机的长度
       参数3. rnUL 表示字母的大小写。1为大写、2为小写、其他为不区分，默认为不区分
　　以上三个参数，用不到的参数就不用填，用不到的参数你设置了不会出错，但也不会生效。
　　比如手机号只要一个rnType参数就行，生成数字就只要rnType、rnLen参数
　　如果随机结果有字母，且不区分大小写的话，也不用rnUL参数
 
　　脚本最后有示例，直接调试下就看出来效果了
]]
 
function myRand(rnType,rnLen,rnUL)
	local zmRan,HexRan,myrandS,rns
	rnUL=rnUL or 3
	rns=rns or 0  --用于精确随机种子
	rns=rns+1
	zmRan={"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
	"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
	HexRan={"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","A","B","C","D","E","F"}
	myrandS=""
	math.randomseed(rns..tostring(os.time()):reverse():sub(1, 6))
	if rnType==1 then --生成数字
		myrandS=math.random(9)
		for r1=1,rnLen-1 do
			myrandS=myrandS..math.random(0,9)
		end
	elseif rnType==2 then --生成手机号,rnLen,rn11无需设置
		local mheader={"13","15"}
		myrandS=mheader[math.random(#mheader)]
		for r1=1,9 do
			myrandS=myrandS..math.random(0,9)
		end
	elseif rnType==3 then --生成字母
		for r1=1,rnLen do
			myrandS=myrandS..zmRan[math.random(52)]
		end
	elseif rnType==4 or rnType==5 then --生成数字/字母组合或邮箱
		local rn3=math.random(2,5)
		for r1=1,rn3 do
			myrandS=myrandS..zmRan[math.random(52)]
		end
		for r1=1,rnLen-rn3 do
			myrandS=myrandS..math.random(0,9)
		end
		if rnType==5 then
			local mailheader={"@qq.com","@hotmail.com","@sohu.com"} --自行增减
			myrandS=myrandS..mailheader[math.random(#mailheader)]
		end
	elseif rnType==6 then --生成16进制
		myrandS=HexRan[math.random(2,22)]
		for r1=1,rnLen-1 do
			myrandS=myrandS..HexRan[math.random(22)]
		end
	end
	if rnUL==1 then
		return string.upper(myrandS) --返回大写
	elseif rnUL==2 then
		return string.lower(myrandS) --返回小写
	else
		return myrandS
	end
end
--[[
print(myRand(1,9))
print(myRand(2))
print(myRand(3,9,1))
print(myRand(4,9,2))
print(myRand(5,9,""))
print(myRand(6,9))
print(myRand(7,9))
--]]

function img_url()
--	local imgurl = 'http://image.baidu.com/channel/listjson?pn='..math.random(1,29999)..'&rn=1&tag1=%E7%BE%8E%E5%A5%B3'
	local imgurl = 'http://image.baidu.com/channel/listjson?pn='..math.random(1,15000)..'&rn=1&tag1=%E7%BE%8E%E5%A5%B3&tag2=%E5%85%A8%E9%83%A8&ftags=%E5%A4%B4%E5%83%8F'
	local sz = require("sz")
	local http = require("szocket.http")
	local res, code = http.request(imgurl);
	--nLog(res)
	if code == 200 then
		local json = sz.json
		imgtable = json.decode(res)
		log(imgtable.data[1]['image_url'])
--		log(imgtable.data[1]['thumbnail_url'])
		return imgtable.data[1]['image_url']
	end
end

















