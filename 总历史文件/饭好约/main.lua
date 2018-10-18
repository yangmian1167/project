nLog = require('nLog')()
require('faker')
require('xxtsp')
require("alz")
require("name")
require("LuaDemo")



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

atexit(function() 
		sys.toast('脚本结束了！')
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
			closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.饭好约 = 'com.fanhaoyue.Hestia'
safari = "com.apple.mobilesafari"
phonenamelist = {}

for i=1,40 do
	key = "iPhone"..i
	phonenamelist[key]="nj"..i
end

local appbids = app.front_bid()
if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
	closeX(appbids)
end

--[[

local success = vpnconf.create{
    dispName = 'nj-'..device.name(),       -- VPN 的显示名
    VPNType = "L2TP",              -- VPN 的类型，支持 PPTP、L2TP、IPSec、IKEv2
    server = 'yhtip.com',    -- 服务器地址
    authorization = phonenamelist[device.name()],      -- 账号
    password = 'Aa112211',           -- 密码
    secret = '1',            -- 密钥，PPTP 可不填
    encrypLevel = 1,               -- 加密级别，选填，默认 1
    group = '',                    -- 群组名称，选填，默认 ""
    VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
}
if success then
    sys.alert('创建成功')
else
    sys.alert('创建失败，确定人品没有问题？')
end
os.exit()
--]]


screen.init(0)
var = {}
var.lun = 0

--YUMI()
kfy.id = '13944'
--全局变量

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkip()
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.checkip&ip='..ip
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
fhy ={}
fhy.请输入手机号码 ={{{104, 917, 0xaaaaaa},{245, 918, 0xf2f2f2},{ 97, 712, 0xf75b5b},{ 96, 712, 0xf1e0e0},{ 96, 543, 0xfbbabc},}, 85, 69, 500, 252, 926}
fhy.发送验证码 ={{{512, 428, 0x808080},{515, 428, 0xffffff},{481, 191, 0xff4514},{483, 191, 0xffffff},{247, 158, 0xf28c85},}, 85, 86, 144, 548, 465}
fhy.请输入验证码 ={{{108, 444, 0xa9a9a9},{430, 435, 0xffffff},{484, 429, 0xffffff},{247, 158, 0xf28c85},{488, 440, 0xffffff},}, 85, 89, 144, 524, 473}
fhy.立即领取 ={{{255, 412, 0xec2f1d},{268, 410, 0xf9b9b3},{128, 158, 0xee5f6d},{128, 159, 0xdfe0e0},{468, 127, 0xffc9be},}, 85, 90, 96, 540, 472}
function fhyurl()
	local urls = "https://d.fanhaoyue.com/presell-activity/page/presellRedEnvelopes.html?channel_id=355675350111420416&activity_id=339519126437396480#/index"
	openUrl(urls)
	delay(5)
	local 取号 = true
	local 验证码 = false
	local 取短信 = false
	local 提交 = false
	local timeline = os.time()
	local outtime = 60*2.5
	while os.time() - timeline < outtime do
		if 取号 then
			if d(fhy.请输入手机号码,"fhy.请输入手机号码",true)then
				if GET_Phone() then
					phoneKey(phone)
					d(fhy.发送验证码,"fhy.发送验证码",true)
					取号 = false
					取短信 = true
			
				end
			end	
		elseif 取短信 then
			if GET_message(phone) then
				d(fhy.请输入验证码,"fhy.请输入验证码",true)
				phoneKey(sms)
				取短信 = false
				提交 = true
				
			end
		elseif 提交 then
			if d(fhy.立即领取,"fhy.立即领取",true)then
				up("safari")
				delay(3)
				closeX(safari)
				return true
			end
		end
		delay(3)
	end
	closeX(safari)
end




fhyapp = {}
fhyapp.跳过 = {{{501, 61, 0xfc7c65},{545, 41, 0xe77c62},{598, 61, 0xe5755f},{558, 87, 0xe77d62},{527, 55, 0xfff1ef},{527, 54, 0xfba697},}, 85, 499, 35, 601, 94}
fhyapp.新人红包弹窗关闭 = {{{319, 808, 0xffffff},{307, 683, 0xfdcc42},{163, 413, 0xef6147},{476, 407, 0xf7ccc9},}, 85, 128, 308, 506, 864}
fhyapp.定位城市关闭 = {{{ 64, 83, 0x333333},{262, 67, 0xcbcbcb},{363, 67, 0xc9c9c9},{389, 96, 0xb6b6b6},{368, 97, 0xc3c3c3},}, 85, 32, 49, 412, 117}
fhyapp.我的 = {{{577, 1061, 0xff0404},{576, 1061, 0xffffff},{569, 1061, 0xffffff},{568, 1061, 0x959595},{541, 1129, 0xa5a5a5},}, 85, 536, 1051, 614, 1134}
fhyapp.登录注册 = {{{266, 360, 0xf2b8b1},{254, 172, 0xe76856},{255, 173, 0xffffff},{291, 173, 0xfdb9ab},{298, 173, 0xfcb9ac},}, 85, 229, 112, 422, 381}
fhyapp.手机快捷登录界面 = {{{196, 70, 0xa5a5a5},{195, 70, 0xffffff},{444, 80, 0xb9b9b9},{445, 80, 0xe0e0e0},{442, 85, 0xd1d1d1},{445, 97, 0xbcbcbc},}, 85, 44, 60, 464, 120}
fhyapp.请输入手机号码 = {{{184, 207, 0xa0a0a0},{403, 207, 0xcdcdcd},{150, 218, 0x595959},{129, 217, 0x7f7f7f},{128, 217, 0xffffff},}, 85, 122, 202, 424, 246}
fhyapp.获取验证码 = {{{438, 322, 0xaeaeae},{437, 322, 0xf9f9f9},{440, 346, 0xbababa},{593, 346, 0xd2d2d2},{594, 319, 0x9d9d9d},}, 85, 433, 310, 600, 351}
fhyapp.请输入验证码 = {{{ 55, 317, 0xf0f0f0},{ 53, 326, 0xbcbcbc},{ 57, 343, 0xededed},{243, 343, 0xe8e8e8},{241, 344, 0xcdcdcd},{242, 344, 0xfbfbfb},}, 85, 50, 310, 252, 355}
fhyapp.登录 = {{{291, 525, 0xffffff},{291, 524, 0xf78779},{ 73, 511, 0xfe5c38},{ 80, 563, 0xfd5b38},{581, 536, 0xe31813},}, 85, 37, 476, 606, 586}

function checkphone()
	local 取号 = true
	local 验证码 = false
	local 取短信 = false
	local 提交 = false
	local timeline = os.time()
	local outtime = 60*3
	local closekey = true
	while os.time() - timeline < outtime do
		if active(bid.饭好约,5) then
			if closekey then
				delay(5)
				closeX(bid.饭好约)
				closekey = false
			elseif d(fhyapp.跳过,"fhyapp.跳过",true) then
			elseif d(fhyapp.新人红包弹窗关闭,"fhyapp.新人红包弹窗关闭",true) then
			elseif d(fhyapp.定位城市关闭,"fhyapp.定位城市关闭",true) then
			elseif d(fhyapp.我的,"fhyapp.我的",true) then
			elseif d(fhyapp.登录注册,"fhyapp.登录注册",true) then
			elseif d(fhyapp.手机快捷登录界面,"fhyapp.手机快捷登录界面",true) then
				if 取号 then
					if d(fhyapp.请输入手机号码,"fhyapp.请输入手机号码",true) then
						if GET_Phone_a(phone)then
							phoneKey(phone)
							d(fhyapp.获取验证码,"fhyapp.获取验证码",true) 
							取号 = false
							取短信 = true
						end
					end	
				elseif 取短信 then
					if d(fhyapp.请输入验证码,"fhyapp.请输入验证码",true) then
						if GET_message_a(phone)then
							phoneKey(sms)
							取短信 = false
							提交 = true
						else
							delay(2)
						end
					end	
				elseif 提交 then
					if d(fhyapp.登录,"fhyapp.登录",true) then
						up(appname(bid.饭好约),"登录成功")
						delay(3)
						提交 = false
						return true
					end

				end
			end
		end
		delay(2)
	end
end

while true do
	if vpn() then
		ip = get_ip() or "192.168.1.1"
		if ip ~= "192.168.1.1" then
			if checkip()then
				if fhyurl() then
					if XXTfakerNewPhone(bid.饭好约) then
						idfa = XXTfakerGetinfo(bid.饭好约)['IDFA']
						checkphone()
					end
				end
			end
		end		
	end	
	vpnx()
	delay(2)
end












