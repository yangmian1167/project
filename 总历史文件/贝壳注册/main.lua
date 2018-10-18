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
bid.贝壳找房 = 'com.lianjia.beike'

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
kfy.id = '11107'
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







page={}

page.allow={{{477,665,0x007aff},{187,668,0x007aff},}, 85, 71, 440, 580, 702}
page.app主界面={{{561,1094,0x9399a6},{82,1060,0x3073f8},},85}
page.app_我的={{{559,1094,0x3072f7},{560,1089,0xffffff},{560,1084,0x3072f6},{116,167,0xffffff},},85}	--4
page.app_登录界面={{{564,85,0x101d37},{560,79,0xffffff},{56,84,0x101d37},{52,82,0xffffff},},85}
	page.app_获取验证码={{{536,395,0x101d37},{534,386,0xc3c7cd},{520,396,0x101d37},}, 85, 399, 357, 605, 448}
	page.app_登录按钮={{{318,662,0x4a80ec},{324,658,0xeef3fe},}, 85, 234, 621, 395, 700}	
page.app_登录成功={{{430,1062,0xfa5741},{452,1071,0xffffff},}, 85, 26, 1024, 620, 1133}	
page.app_个人信息={{{36,83,0x101d37},{36,87,0xffffff},{415,71,0x101d37},{415,73,0xffffff},{420,73,0x101d37},},85}
page.app_我的界面={{{559,1083,0x3277ff},{560,1094,0x3072f6},{560,1090,0xffffff},},85}

function checkphone()
	local TimeLine = os.time()
	local OutTime = 60*4

	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	local 密码 = true
	local 提交过了 = false

	local 取短信次数 = 0
	password = myRand(4,rd(8,12))

	while os.time()-TimeLine < OutTime do
		if active(bid.贝壳找房,5)then
			if d(page.app主界面,"page.app主界面",true) then
--			elseif 提交过了 and d(page.app_我的界面,"page.app_我的界面",true) then
--				delay(1)
--				screen.image():save_to_album()
--				log("截图成功",true)
--				delay(8)
--				return true
			elseif d(page.app_个人信息,"page.app_个人信息",true,1) then
				delay(1)
				screen.image():save_to_album()
				log("截图成功",true)
				delay(1)
				return true
			elseif d(page.app_登录成功,"page.app_登录成功") then
				screen.image():save_to_album()
				log("截图成功",true)
				delay(1)
				return true
			elseif d(page.app_我的,"page.app_我的",true,4) then
			elseif d(page.app_登录界面,"page.app_登录界面")then
				delay(1)
				if 取号 then
					if GET_Phone_a(phone)then
						click(280, 387)
						phoneKey(phone)
						click(586, 644)
						取号 = false
						验证码 = true
					end
				elseif 验证码 then
					if d(page.app_获取验证码,"page.app_获取验证码",true)then
						验证码 = false
						短信 = true
					end
				elseif 短信 then
					if GET_message_a(phone)then
						phoneKey(sms)
						click(586, 644)
						短信 = false
						提交 = true
					else
						delay(2)
					end
				elseif 提交 then
					if d(page.app_登录按钮,"app_登录按钮",true)then
						up(appname(bid.贝壳找房),"万成平")
						delay(2)
						提交过了 = true
					end
				end
			else
				
				if d(page.allow,"page.allow",true)then
				
				
				end
			end
		end
		delay(0.5)
	end
end




page.url_注册界面={{{571,679,0x2561ae},{565,150,0x1a4b9d},{29,162,0x19489c},{25,672,0x1b52a2},}, 85, 0, 0, 0, 0}
	page.url_请输入手机号={{{160,796,0xced1d6},{217,782,0xcfd2d7},{54,799,0xced1d6},}, 85, 38, 764, 255, 827}
	page.url_done={{{602,659,0x007aff},{609,653,0x007aff},}, 85, 568, 393, 633, 850}
	page.url_发送验证码={{{549,793,0x4b5568},{546,781,0x101d37},{532,789,0x101d37},}, 85, 415, 738, 606, 841}
	page.url_提交={{{385,1027,0x477dec},{393,1011,0x477eed},{400,1043,0x447aea},}, 85, 254, 991, 421, 1067}
page.url_验证码界面={{{390,491,0x5389f1},{171,491,0x3072f7},{94,188,0xffffff},{557,177,0xffffff},}, 85, 46, 128, 590, 585}
	page.url_验证码界面_yzm={{{438,393,0x646464},{426,310,0x646464},}, 85, 314, 278, 580, 434}
page.url_验证码界面_下掉了={{{475,729,0x437ae8},{462,718,0xffffff},{178,722,0x3072f7},}, 85, 52, 643, 591, 805}
page.url_注册成功={{{319,523,0x3072f6},{324,557,0xffffff},{342,637,0x030303},{321,771,0x4c82ee},}, 85, 0, 0, 0, 0}
page.url_已经注册过={{{319,536,0xffda6a},{321,570,0xf55065},{324,592,0xffda6a},{331,824,0x4c81ee},}, 85, 125, 442, 464, 974}

function url()
	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020249363&invite_code=66400643&from=linkqr"	--万成平	
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020318938&invite_code=77646995&from=fenxiangye"   --李杨
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023115221&invite_code=59054155&from=fenxiangye"   --罗晨
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020166810&invite_code=34971810&from=fenxiangye"	--李卓君
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023030042&invite_code=29299087&from=fenxiangye"	--郑琳
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020180817&invite_code=19994902&from=fenxiangye"	--王星明
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020196440&invite_code=97690763&from=fenxiangye"	--曾敬
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020199173&invite_code=61959418&from=fenxiangye"	--陈欣
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020359283&invite_code=63698167&from=fenxiangye"	--李雪
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020130367&invite_code=86302551&from=fenxiangye"	--王雄
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020230165&invite_code=49620689&from=fenxiangye"	--谢荣华
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020180812&invite_code=77569557&from=fenxiangye"	--雷涛
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023029276&invite_code=22172994&from=fenxiangye"	--张涛
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020274669&invite_code=70813997&from=fenxiangye"	--何阳
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020386460&invite_code=41188003&from=fenxiangye"	--卿勇杰
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023116268&invite_code=35619146&from=fenxiangye"	--苏雨柔
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020299080&invite_code=60896473&from=fenxiangye"	--张艳
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020292600&invite_code=63967429&from=fenxiangye"	--王超
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023032749&invite_code=74973909&from=fenxiangye"	--龙辛
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020314940&invite_code=40673502&from=fenxiangye"	--秦志成
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020314940&invite_code=40673502&from=fenxiangye"	--吕歌文
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023027340&invite_code=35700380&from=fenxiangye"	--徐略
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020208601&invite_code=76309987&from=fenxiangye"	--魏俊
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020108919&invite_code=36118235&from=fenxiangye"	--康露名
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000023091947&invite_code=42335884&from=fenxiangye"	--邹涛
	--local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020359280&invite_code=95807542&from=fenxiangye"	--唐爽
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000021336244&invite_code=62324060&from=fenxiangye"	--张天运
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020196440&invite_code=97690763&from=fenxiangye"	--曾敬
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020170570&invite_code=29780262&from=fenxiangye"	--陈鹏
--	local urls = "https://m.ke.com/zhuanti/invite?ucid=1000000020065578&invite_code=84888502&from=fenxiangye"	--任文龙
	
	
	
	openUrl(urls)
	delay(3)
	local TimeLine = os.time()
	local OutTime = 60*3
	
	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	local 密码 = false
	local 打码 = 0

	local 取短信次数 = 0
	password = myRand(4,rd(8,12))

	while os.time()-TimeLine < OutTime do
		if d(page.url_注册界面,"page.url_注册界面")then
			if 取号 then
				if d(page.url_请输入手机号,"page.url_请输入手机号",true)then
					if GET_Phone()then
						phoneKey(phone)
						d(page.url_done,"page.url_done",true)
						取号 = false
						验证码 = true
					end
				end
			elseif 验证码 then
				if d(page.url_发送验证码,"page.url_发送验证码",true)then
					验证码 = false
					短信 = true
				end
			elseif 短信 then
				if GET_message(phone)then
					click(204, 913)
					phoneKey(sms)
					d(page.url_done,"page.url_done",true)
					短信 = false
					提交 = true
				else
					取短信次数 = 取短信次数 + 1
					if 取短信次数 > 20 then
						return false
					end
					delay(2)
				end
			elseif 提交 then
				if d(page.url_提交,"page.url_提交",true)then
					delay(2)
				end
			end
		elseif d(page.url_验证码界面,"page.url_验证码界面")then
			delay(2)
			--[[	]]
			if 打码 <3 then
				if (d(page.url_验证码界面_yzm,"page.url_验证码界面_yzm"))then
					screen.image(328, 309,553, 394):save_to_png_file(imgfile)
					delay(0.5)
					if orcYZM()then
						log(yzm_jg)
						phoneKey(yzm_jg)
--						input(yzm_jg,1,2)
						d(page.url_done,"page.url_done",true)
						d(page.url_验证码界面,"page.url_验证码界面",true)
						d(page.url_done,"page.url_done",true)
					end
					打码 = 打码 + 1
				end
			else
				if 打码 > 2 then
					return false
				end
			end
			--]]
		elseif d(page.url_验证码界面_下掉了,"page.url_验证码界面_下掉了",true,1)then
		elseif  d(page.url_已经注册过,"page.url_已经注册过",true)then
			up("safari","注册过了")
			return false
		elseif  d(page.url_注册成功,"page.url_注册成功",true)then
			up("safari","注册成功")
			return true
		else
			if d(page.url_done,"page.url_done",true)then
				
			elseif app.front_bid() ~= safari then
				return false
			end
		end

		delay(1)
	end
end





safari = "com.apple.mobilesafari"


--[[ ]]

while true do
	if vpn() then
		ip = get_ip() or "192.168.1.1"
		if ip ~= "192.168.1.1" then
			if checkip()then
				if XXTfakerNewPhone(safari) then
					delay(1)
					if url()then
						if false or XXTfakerNewPhone(bid.贝壳找房)then
							idfa = XXTfakerGetinfo(bid.贝壳找房)['IDFA']
							delay(1)
							checkphone()
						end
					end
				end
			end
		end
	end
	vpnx()
	delay(2)
end



--]]































































