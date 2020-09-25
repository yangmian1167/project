
--[[
local cloud_cc = require("cloud_cc")(
	"2BA695C9633E1E712764746FFD90649C",
	{
		"/lua/scripts/faker.lua",
		"/lua/scripts/xxtsp.lua",
		"/lua/scripts/nLog.xxt",
	}
)

]]


nLog = require('nLog')()
require('faker')
require('xxtsp')

local curl = require('lcurl')
local e = curl.easy()

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

function atexit(callback) -- 参数为一个函数，使用 atexit(一个函数) 注册一个函数在脚本结束时执行，建议不要耗时太长
	____atexit_guard____ = ____atexit_guard____ or {}
	if type(____atexit_guard____) == 'table' then
		if not getmetatable(____atexit_guard____) then
			setmetatable(____atexit_guard____, {
					__gc = function(self)
						if type(self.callback) == 'function' then
							pcall(self.callback)
						end
					end
				})
		end
		____atexit_guard____.callback = callback
	else
		error('别用 `____atexit_guard____` 命名你的变量。')
	end
end
--[[
atexit(function() 
		sys.toast('脚本结束了！')
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)
--]]



--服务器对接取号

function _Server_get()
	phone_name = device.name()
	phone_imei = device.serial_number()
	log(phone_name)
	log(phone_imei)
	return{
		login=(function()
			return	
		end),
		addBlack=(function()
			return	
		end),
		getPhone = (function()
				RetStr = get('http://sms.wenfree.cn/public/?service=App.Sms.GetPhone'.."&imei="..phone_imei.."&phonename="..phone_name)
				RetStr = json.decode(RetStr)
				log(RetStr)
				if RetStr then
					if RetStr.data.meg == success or RetStr.data.meg == 'success' then
						phone = RetStr.data.phone
						log(phone)
					end
				else
					log(RetStr)
				end
				delay(3)
				return phone
		end),
		 getMessage=(function()
			local Msg
            for i=1,25,1 do
				sys.msleep(3000)
				RetStr = get("http://sms.wenfree.cn/public/?service=App.Sms.GetMessage".."&imei="..phone_imei.."&phonename="..phone_name)
				RetStr = json.decode(RetStr)
				log(RetStr);
				if RetStr then
					if RetStr.data.meg == success or RetStr.data.meg == 'success' then
						Msg = RetStr.data.sms
						if type(tonumber(Msg))== "number" then log(Msg); return Msg 
						else
							log(Msg)
							local arr = string.split(Msg,"：") 
								Msg = arr[2]
								local i,j = string.find(Msg,"%d+")
								Msg = string.sub(Msg,i,j)
								if type(tonumber(Msg))== "number" then log(Msg); return Msg end
						end
					end
				end
				toast(tostring(RetStr).."\n"..i.."次共25次")
				delay(3)
            end
            return false
        end),
	
	
	}
	
end
dxcode = _Server_get()

function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = bid[name]['keyword'] or account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function up_hb(other)
	local url = 'http://hb.wenfree.cn/api/Public/idfa/'
	local postdate = {}
	postdate.service = 'Idfa.Idfa'
	postdate.name = '美的美居'
	postdate.idfa = idfa
	postdate.phone = phone
	postdate.password = password
	postdate.ip = ip or get_ip() or '192.168.1.1'
	postdate.other = other
	postdate.account = urls
	log(post(url,postdate))
	-- body
end

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function checkidfa(name)
	local url = "http://api.check.adzshd.com/RemoveEcho.ashx"
	local postArr = {}
	postArr.adid = bid[name]['adid']
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.udid = udid
	postArr.ip = ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.os = model
	postArr.KeyWords = bid[name]['keyword']
	postArr.osversion = os_version or sys.version()
	postArr.btype ='1'

	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	url = url..'?'..post_data
	
	log(url)
	log(postArr)
	
	local getdata = get(url)
--	log(getdata)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data[idfa] == '0' or data[idfa] == 0 then
			log(" 排重成功: OK.",true)
			return true
		else
			log("idfa-排重失败",true)
		end
	end
end

function clickidfa(name,callbackkey)
	local url = "http://api.check.adzshd.com/SourceClick.ashx"
	local postArr = {}
	postArr.adid = bid[name]['adid']
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.udid = udid
	postArr.ip = ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.mac = '02:00:00:00:00:00'
	postArr.os = model
	postArr.KeyWords = bid[name]['keyword']
	postArr.osversion = os_version or sys.version()
	postArr.btype ='1'
	
	local index = 0
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	url = url..'?'..post_data
	
	log(url)
	log(postArr)
	
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data["message"] == 'ok' or data["success"] == true then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
		end
	end
end

function activeidfa(name,callbackkey)
	local url = "https://wenfree.cn/api/app.php"
	local postArr = {}
	postArr.service = "App.SharkIdfa.Activate"
	postArr.channel_id = '4'
	postArr.task_id = bid[name]['appid']
	postArr.idfa = idfa
	postArr.ip = ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.os_version = os_version or sys.version()
	postArr.device_type = model
	postArr.keyword = bid[name]['keyword']
	postArr.udid = udid
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	url = url..'?'..post_data
	
	log(url)
	log(postArr)
	
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data.data.code) == 0 or data.data.msg == '请求数据成功!' then
			log("上报成功: OK.",true)
			return true
		else
			log("idfa-上报失败",true)
		end
	end
end

function checkip()
	ip = get_ip() or false
	if ip then
		local url = 'http://wenfree.cn/api/Public/idfa/?service=Ip.Checkip&ip='..ip
		local getdata = get(url)
		if getdata ~= nil then
			local data = json.decode(getdata)
			log(data or "nil")
			if data.data.state == "ok" then
				log("ip可以用:OK.",true)
				return true
			else
				log("ip, 排重失败",true)
			end
		end
	end
end

function callbackapi(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		udid = XXTfakerGetinfo(bid[name]["appbid"])['UDID']
--		if checkidfa(name)then
			if openu(urls) then
--				delay(rd(2,3))
				if reg(name) then
					back_pass(task_id,"ok")
					up(name,bid[name]['keyword'])
				end
			end
--		end
	end
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end


phonekeyArr = {
	{104,  760, 0xffffff},
	{317,  768, 0xffffff},
	{526,  755, 0xffffff},
	{112,  866, 0xffffff},
	{330,  869, 0x696969},
	{522,  874, 0xffffff},
	{115,  977, 0xffffff},
	{322,  978, 0x000000},
	{544,  962, 0x000000},
	[0]={316, 1081, 0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(phonekeyArr[phone_mun][1],phonekeyArr[phone_mun][2],0.3)
	end
end


bid_app = 'com.midea.msmart.appstore'


urls1 = 'https://e.cn.miaozhen.com/r/k=2191014&p=7dwIK&dx=__IPDX__&rt=2&pro=s&ns=__IP__&ni=__IESID__&v=__LOC__&xa=__ADPLATFORM__&tr=__REQUESTID__&mo=__OS__&m0=__OPENUDID__&m0a=__DUID__&m1=__ANDROIDID1__&m1a=__ANDROIDID__&m2=__IMEI__&m4=__AAID__&m5=__IDFA__&m6=__MAC1__&m6a=__MAC__&m11=__OAID__&mn=__ANAME__&o=https://iot4.midea.com.cn/downloads/app/index.html?pgfrom=maimai3'
urls2 ='https://e.cn.miaozhen.com/r/k=2191014&p=7dwIM&dx=__IPDX__&rt=2&pro=s&ns=__IP__&ni=__IESID__&v=__LOC__&xa=__ADPLATFORM__&tr=__REQUESTID__&mo=__OS__&m0=__OPENUDID__&m0a=__DUID__&m1=__ANDROIDID1__&m1a=__ANDROIDID__&m2=__IMEI__&m4=__AAID__&m5=__IDFA__&m6=__MAC1__&m6a=__MAC__&m11=__OAID__&mn=__ANAME__&o=https://iot4.midea.com.cn/downloads/app/index.html?pgfrom=maimai5'
urls3 ='https://e.cn.miaozhen.com/r/k=2191014&p=7dwIJ&dx=__IPDX__&rt=2&pro=s&ns=__IP__&ni=__IESID__&v=__LOC__&xa=__ADPLATFORM__&tr=__REQUESTID__&mo=__OS__&m0=__OPENUDID__&m0a=__DUID__&m1=__ANDROIDID1__&m1a=__ANDROIDID__&m2=__IMEI__&m4=__AAID__&m5=__IDFA__&m6=__MAC1__&m6a=__MAC__&m11=__OAID__&mn=__ANAME__&o=https://iot4.midea.com.cn/downloads/app/index.html?pgfrom=maimai2'

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}
web.点击下载={{{332, 932, 0xffffff},{249, 916, 0x267aff},{448, 957, 0x267aff},{440, 917, 0x267aff},}, 85, 166, 882, 475, 985}
function openu(ur)
	urls = bid[work]['adid']
	if urls == '1' or urls == 1 then
		ur = urls1
	elseif urls == '2' or urls == 2 then
		ur = urls2
	elseif urls == '3' or urls == 3 then
		ur = urls3
	end
	
	openUrl(ur)
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(14,15))
			return true
		elseif d(web.点击下载,'web.点击下载',true) then
		end
		delay(1)
	end
end

page = {}
page.tips_X = {{{ 67, 107, 0xffffff},{ 53, 108, 0x393d3f},{ 64,  96, 0x666666},{ 85, 113, 0x393d3f},{ 77, 118, 0xfdfdfd},}, 85, 39, 75, 91, 136}
page.tips同意 = {{{473, 929, 0xaacbff},{473, 925, 0x5c9cff},{428, 927, 0x267aff},{171, 930, 0x287cff},{161, 923, 0xffffff},{157, 921, 0x267aff},}, 85, 131, 888, 513, 964}
page.未登录 = {{{ 98, 84, 0xffffff},{ 98, 80, 0x8d959e},{ 45, 65, 0x8d959d},{ 50, 72, 0xffffff},{173, 80, 0xffffff},{176, 80, 0xb8bdc2},}, 85, 22, 47, 204, 115}
page.登录注册手机号界面 = {{{422, 657, 0xffffff},{494, 659, 0x267aff},{524, 666, 0x267aff},{237, 662, 0xffffff},{146, 654, 0xffffff},}, 85, 104, 648, 583, 679}
--page.登录注册手机号界面 = {{{251, 235, 0xffffff},{186, 186, 0xffffff},{254, 165, 0xffffff},{550,  83, 0xffffff},{570,  81, 0xffffff},}, 85, 116, 49, 601, 339}
page.登录注册手机号界面_打钩 = {{{86, 653, 0xc7c7cc},{62, 657, 0xc7c7cc},{85, 676, 0x9f9ea4},}, 85, 54, 642, 96, 680}
page.登录注册手机号界面_获取验证码 = {{{324, 555, 0xffffff},{258, 558, 0xffffff},{148, 543, 0x267aff},{544, 579, 0x267aff},}, 85, 46, 508, 576, 619}
page.验证码界面 = {{{255, 240, 0xffffff},{189, 185, 0xffffff},{191, 311, 0xffffff},{559,  89, 0xffffff},{101, 414, 0xf9f9f9},}, 85, 29, 68, 595, 459}
page.验证码界面_注册 = {{{326, 683, 0xffffff},{291, 687, 0xffffff},{151, 664, 0x267aff},{454, 683, 0x267aff},{512, 663, 0x267aff},}, 85, 72, 649, 582, 697}

page.设置密码界面 = {{{255, 208, 0xdbdbdb},{253, 209, 0xbababa},{ 44, 160, 0xc9c9c9},{ 44, 205, 0xc7c7c7},{177, 158, 0xd7d7d7},}, 85, 33, 149, 266, 218}
page.设置密码界面_注册 = {{{543, 583, 0x267aff},{180, 535, 0x267aff},{505, 539, 0x267aff},{514, 514, 0xffffff},}, 85, 46, 502, 581, 615}

page.主界面 = {{{343, 1091, 0xffa911},{281, 1075, 0xff8e2a},{ 61, 1077, 0x000000},{ 69, 1108, 0x000000},}, 85, 38, 1054, 368, 1125}
page.主界面2 = {{{290, 1086, 0x664406},{187, 1086, 0x4f4f51},{126, 1085, 0x666666},{ 68, 1076, 0x000000},{299, 1103, 0x664406},}, 85, 35, 1058, 310, 1120}



page.验证码界面_确定 = {{{333, 551, 0xffffff},{309, 551, 0xd1f1dd},{144, 525, 0x19b955},{547, 575, 0x19b955},{563, 529, 0x19b955},}, 85, 29, 460, 604, 616}
--page.tips_X = {{{319, 914, 0xffffff},{315, 910, 0xffffff},{324, 909, 0xffffff},{323, 919, 0xd9dadb},{298, 927, 0xffffff},}, 85, 283, 882, 359, 943}
page.登录注册手机号界面_X = {{{582, 308, 0xffffff},{579, 305, 0xffffff},{580, 298, 0xcccccc},{594, 313, 0xcdcdcd},}, 85, 568, 292, 599, 322}

page.完成界面刷脸验证 = {{{352,  76, 0xffffff},{191,  70, 0xffffff},{166,  53, 0x253239},{458, 928, 0x19b955},{367, 934, 0xffffff},}, 85, 148, 34, 510, 981}

function reg()
	local TimeLine = os.time()
	local OutTime = 60*5

	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
--	local 密码 = true
	local 提交过了 = false
	local movekey = 1
	取短信次数 = 0
	发验证码次数 = 0
	sex = rd(1,100)
	sex_key = 50
--	password = myRand(4,rd(8,12))
	password = 'AaDd112211'

	while os.time()-TimeLine < OutTime do
		if active(bid_app,10)then
			if d(page.登录注册手机号界面,'page.登录注册手机号界面') then
				if d(page.登录注册手机号界面_打钩,'page.登录注册手机号界面_打钩',true) then
				elseif 取号 then
					phone = dxcode.getPhone()
					number = phone
					if phone ~= nil or phone ~= '' then
						delay(2.8)
						if type(tonumber(phone)) == "number" then
							click(179, 439)
							phoneKey(phone)
							取号 = false
							短信 = true
						end
					end
				elseif d(page.登录注册手机号界面_获取验证码,'page.登录注册手机号界面_获取验证码',true) then 
				end	
			
			elseif 短信 then
				if d(page.验证码界面,'page.验证码界面') then	
					yzm = dxcode.getMessage()
--						log(yzm)
					if yzm ~= nil or yzm ~= '' then
						click(164, 553)
						app.input_text("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b")
						delay(2.8)
						phoneKey(yzm)			
						提交 = true
						短信 = false
--						else
--							return false
					end
				end	
			elseif d(page.验证码界面_注册,'page.验证码界面_注册',true) then
			elseif 提交  and d(page.设置密码界面,'page.设置密码界面') then
				if d(page.设置密码界面_注册,'page.设置密码界面_注册',true) then
				else
					click(73, 433)
					input(password)
				end
			elseif 提交 and d(page.主界面,'page.主界面') or  提交 and d(page.主界面2,'page.主界面2') then
				up_hb('注册成功')
				return true
			elseif d(page.tips同意,'page.tips同意',true) then
			elseif d(page.未登录,'page.未登录',true) then
			elseif d(page.tips_X,'page.tips_X',true) then
			end
		end
		delay(0.5)
	end
end	
apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(25,30)
	while os.time()- TIMEline < OUTtime do
		if active(bid[name]['appbid'],4)then
			if d(apparr.right,"apparr.right",true)then
			else
				moveTo(600,300,100,100,30,50)
				delay(1)
				click(321, 978)
				delay(1)
				click(462, 666)
				delay(1)
			end
		else
			log("启动一次")
		end
	end
	up(name,bid[name]['keyword'])
end

function beewallidfa(name)
	if clickisok(name)then
		delay(rd(2,3))
		newidfa(name)
	end
	delay(1)
end

function main(v)
	if vpn() then
		if checkip()then
			work = v.work
			task_id = v.task_id
			bid={}
			bid[work]={}
			bid[work]['keyword']=v.keyword
			bid[work]['appbid']=v.appbid
			bid[work]['appid']=v.appid
			bid[work]['adid']=v.adid
			callbackapi(work)
		end
		vpnx()
		delay(2)
	end
end




















