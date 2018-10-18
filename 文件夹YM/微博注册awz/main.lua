nLog = require('nLog')()
require('faker')
require('xxtsp')
require("yumi")
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

--atexit(function() 
--		sys.toast('脚本结束了！')
--		vpnx()
--		local appbids = app.front_bid()
--		if appbids ~= "com.apple.springboard" then
----			app.quit(appbids)
--			closeX(appbids)
--		end
--		sys.msleep(500)
--	end)

bid={}
bid.app = 'com.baihe.online'

phonenamelist = {}

for i=1,40 do
	key = "iPhone"..i
	phonenamelist[key]="nj"..i
end


--local appbids = app.front_bid()
--if appbids ~= "com.apple.springboard" then
----			app.quit(appbids)
--	vpnx()
--	closeX(appbids)
--end

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


--kfy.id = '10482'
YUMI()
--全局变量

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}

	idfalist.phonename = (phonename or device.name())				--如果未指定phonename 则取设备名
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




app.bid = {}
app.bid_weibo = "com.sina.weibo"





wb = {}
wb.主界面 = {{{ 45, 1114, 0x525352},{207, 1113, 0x333333},{346, 1117, 0xff8200},}, 85, 4, 1049, 639, 1133}
wb.主界面_微博界面 = {{{ 66, 1080, 0x333333},{170, 1079, 0x333333},{292, 1083, 0xff8200},}, 85, 3, 1053, 631, 1131}
wb.主界面_微博界面_活动= {{{506,  70, 0xff3d2e},{500,  90, 0xf9ca6a},{528, 105, 0xd41900},}, 85, 482, 63, 546, 111}
wb.主界面_微博界面_注册= {{{26, 72, 0xff8200},{78, 93, 0xff8200},}, 85, 15, 58, 90, 111}
wb.主界面_微博界面_登录= {{{25, 70, 0xff8a11},{81, 95, 0xff8403},}, 85, 18, 62, 87, 102}

wb.注册界面 = {{{141,  999, 0x67d569},{317,  998, 0x62b6ea},{503, 1001, 0xfc7672},}, 85, 48, 911, 589, 1123}
wb.注册界面1 = {{{230,  999, 0x67d569},{414, 1003, 0x62b6ea},}, 85, 192, 989, 449, 1061}
wb.注册界面_获取验证码 = {{{295, 576, 0xff8200},{ 57, 586, 0xff8200},{579, 629, 0xff8200},}, 85, 26, 558, 629, 787}

tips = {}
tips.跳过清除数据 = {{{561, 72, 0x333333},{615, 76, 0x333333},{564, 76, 0xeeeeee},}, 85, 551, 66, 627, 102}

function reg()
	local TimeLine = os.time()
	local OutTime = 60*3

	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
--	local 密码 = true
	local 提交过了 = false

	local 取短信次数 = 0
	password = myRand(4,rd(8,12))

	while os.time()-TimeLine < OutTime do
		if active(app.bid_weibo,5)then
			if 取号 then
				if d(wb.主界面,"wb.主界面") then
					if d(wb.主界面_微博界面,"wb.主界面_微博界面") then
						delay(7)
						if d(wb.主界面_微博界面_注册,"wb.主界面_微博界面_注册",true,1) or d(wb.主界面_微博界面_登录,"wb.主界面_微博界面_登录",true,1)  then
						end	
					end
				elseif d(wb.注册界面,"wb.注册界面") or d(wb.注册界面1,"wb.注册界面1") then
					GET_Phone() 
					delay(2.5)
					click(220, 446)
					phoneKey(phone)
					取号 = false
					验证码 = true	
				end
			elseif 验证码 then
				if d(wb.注册界面_获取验证码,"wb.注册界面_获取验证码",true,1) then
				else	
					验证码 = false	
					短信 = true	
				end	
			elseif 短信 then
				if GET_message(phone) then
					click(51, 449)
					input(sms)	
				end
			
			else
				d(tips.跳过清除数据,"tips.跳过清除数据",true,1)
			end
		end
		delay(0.5)
	end
end
XXTfakerNewPhone(app.bid_weibo)
delay(10)
reg()


--[[

while true do
	if vpn() then
		ip = get_ip() or "192.168.1.1"
		if ip ~= "192.168.1.1" then
			if checkip()then
				if false or XXTfakerNewPhone(bid.app)then
					idfa = XXTfakerGetinfo(bid.app)['IDFA']
					delay(1)
					if reg()then
						fix()
					end
				end
			end
		end
	end
	vpnx()
	delay(2)
end



--]]



--clear.all_photos()














































































