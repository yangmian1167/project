width,height = screen.size();
sys.toast(width.."*"..height)
--require("name")

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
		if app_bid ~= app.front_bid() then
			log('RunApp'..app_bid)
			if app.run(app_bid) == 0 then
				sys.msleep(t*1000)
				return true
			end
		end
	end
end
--杀掉进程和app
function closeX(app_bid,key,t)
	local key = key or false
	if key then
		app.quit(app_bid)
	else
		app.close(app_bid)
	end
	delay(2)
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
function cpic(t,name,clicks)
	x, y = screen.find_color(t[1],t[2],t[3],t[4],t[5],t[6])
	if x~=-1 and y ~= -1 then
		if clicks then
			log('多点找色-->点击-->'..name)
			click(x,y)
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

--vpnTable 示例
vpnlist ={
		dispName = 'app50',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'app50',
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

--post function
function post(url,tables)
	local server = url
	local post_data = ''
	local index = 1
	
	for k,v in pairs(tables) do
		if index == #tables then
			post_data = post_data..k..'='..v
		else
			post_data = post_data..k..'='..v..'&'
		end
		index = index + 1
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























