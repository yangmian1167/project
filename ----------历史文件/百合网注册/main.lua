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
--			closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.app = 'com.baihe.online'

phonenamelist = {}

for i=1,40 do
	key = "iPhone"..i
	phonenamelist[key]="nj"..i
end


local appbids = app.front_bid()
if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
	vpnx()
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


--kfy.id = '10482'
--YUMI()
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
	idfalist.account = account or get_local() or '未知'
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




imgUrl = "http://image.baidu.com/channel/listjson?pn=15000&rn=1&tag1=%E7%BE%8E%E5%A5%B3&tag2=%E5%85%A8%E9%83%A8&ftags=%E5%A4%B4%E5%83%8F&ie=utf8"


page={}

page.基本资料界面={{{380,76,0x000000},{370,72,0xffffff},{368,72,0x000000},{42,83,0x888888},},85}
	page.基本资料界面_请输入={{{444,285,0xc7c7cd},{457,285,0xc7c7cd},{495,285,0xff8432},{501,285,0xffffff},}, 85, 367, 255, 519, 319}
	page.基本资料界面_性别女={{{538,372,0xe2e2e2},{406,376,0x9bc1fd},{386,379,0x9bc1fd},}, 85, 365, 349, 590, 417}
	page.基本资料界面_完成={{{306,1042,0xffffff},{309,1022,0xff645a},{86,1041,0xff7948},{530,1043,0xff4e6b},}, 85, 17, 968, 621, 1125}
page.昵称={{{46,77,0xfd6e27},{306,77,0x525252},{308,72,0xffffff},},85}
	page.昵称完成={{{569,85,0xfd884d},{551,73,0xfd6e27},{545,67,0xffffff},}, 85, 526, 61, 614, 109}
page.我知道了={{{383,840,0xff5962},{369,317,0xffa251},{356,775,0x008eff},},85}
page.本地相册={{{367,860,0xfd6e27},{396,767,0xfd6e27},{569,154,0xffffff},},85}			--3x
page.照片={{{328,78,0x000000},{331,81,0xf9f9f9},{552,80,0x007aff},},85}
page.照片_详情={{{21,83,0x007aff},{309,79,0xf9f9f9},{313,79,0x3a3a3a},{552,86,0x007aff},},85}
page.照片_注册成功={{{569,1097,0x43fe85},{62,1086,0xe83c2d},},85}
page.照片_地址未显示={{{596,404,0xc7c7cc},{568,407,0xd9d9d9},{523,404,0xffffff},{530,404,0xd9d9d9},}, 85, 450, 341, 625, 465}
page.照片_地址_确定={{{602,661,0xfd6e27},{581,667,0xfd6e27},}, 85, 535, 626, 628, 697}

function fix()
	local TimeLine = os.time()
	local OutTime = 60*3
	sex = rd(1,100)
	if sex > 20 then
		sexk = "女"
	else
		sexk = "男"
	end

	while os.time()-TimeLine < OutTime do
		if active(bid.app,5)then
			if d(page.基本资料界面,"page.基本资料界面") then
				if d(page.基本资料界面_请输入,"page.基本资料界面_请输入",true)then
				elseif sex > 20 and d(page.基本资料界面_性别女,"page.基本资料界面_性别女",true)then
				elseif d(page.我知道了,"page.我知道了",true,1)then
				else
					if d(page.基本资料界面_完成,"page.基本资料界面_完成",true)then
					elseif d(page.照片_地址未显示,"page.照片_地址未显示",true)then
						delay(2)
						d(page.照片_地址_确定,"page.照片_地址_确定",true)
					else
						moveTo(316, 733,316, 433)
						delay(2)
					end
				end
			elseif d(page.本地相册,"page.本地相册",false,1)then
				delay(1)
				clear.all_photos()
				delay(1)
				local c, h, r = http.get(img_url(), 10)
				if (c == 200) then
					local img = image.load_data(r)
					img:save_to_album()
					delay(1)
					d(page.本地相册,"page.本地相册",true,1)
				else
					sys.alert("下载失败",3)
				end
				
			elseif d(page.照片_注册成功,"page.照片_注册成功",true,1)then
				up("百合网",sexk)
				delay(10)
				return true
			elseif d(page.照片_详情,"page.照片_详情")then
				click(87,225)
			elseif d(page.照片,"page.照片")then
				click(87,225)
			elseif d(page.昵称,"page.昵称")then
				input(random_name()..myRand(4,rd(4,6)))
				if d(page.昵称完成,"page.昵称完成",true)then
					delay(1)
				end
			
			else
				
				if d(page.tip_bad,"page.tip_bad",true)then
					return false
				elseif d(page.allow,"page.allow",true)then
				elseif d(page.allow_local,"page.allow_local",true)then
				end
			end
		end
		delay(0.5)
	end
end





page.allow={{{477,665,0x007aff},{187,668,0x007aff},}, 85, 71, 440, 580, 702}
page.allow_local={{{360,594,0x007aff},{347,684,0x007aff},{359,777,0x007aff},}, 85, 324, 565, 373, 797}

page.tip_bad={{{154,635,0x007aff},{164,662,0x007aff},{502,646,0x007aff},}, 85, 111, 613, 533, 681}

page.regUI={{{446,264,0xeae3dc},{223,277,0xffffff},{215,271,0xfdfdfe},}, 85, 113, 103, 513, 348}
	page.regUI_login={{{128,393,0xc7c7cd},{124,380,0xc7c7cd},{113,403,0xc7c7cd},}, 85, 63, 357, 269, 433}
	page.regUI_send={{{504,500,0xff5b61},{501,500,0xfffafa},{496,515,0xff5e5f},}, 85, 400, 456, 577, 545}
	page.regUI_pwd={{{355,607,0xc7c7cd},{355,595,0xc7c7cd},{360,619,0xc7c7cd},}, 85, 328, 573, 383, 641}
	page.regUI_reg={{{321,785,0xff635c},{321,775,0xffffff},{321,759,0xff625b},}, 85, 244, 711, 399, 837}
page.success={{{551,266,0xff8432},{284,949,0xff7e44},{73,1070,0xff6659},},85}


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
		if active(bid.app,5)then
			if d(page.success,"page.success") then
				return true
				
			elseif d(page.regUI,"page.regUI") then
				if 取号 then
					if d(page.regUI_login,"page.regUI_login",true)then
						delay(1)
						if GET_Phone()then
							log(phone,true)
							delay(2.8)
							if type(tonumber(phone)) == "number" then
								phoneKey(phone)
								click(604, 610)
								取号 = false
								验证码 = true
							else
								click(604, 610)
							end
						end
					end
				elseif 验证码 then
					if d(page.regUI_send,"page.regUI_send",true)then
						验证码 = false
						短信 = true
					end
				elseif 短信 then
					if d(page.regUI_pwd,"regUI_pwd",true)then
						input(password)
						click(604, 610)				--点击空白
					elseif GET_message(phone)then
						click(160, 499)
						input(sms)
						click(604, 610)				--点击空白
						短信 = false
						提交 = true
					else
						delay(2.5)
					end
				elseif 提交 then
					if d(page.regUI_reg,"page.regUI_reg",true)then
						up("百合网","提交注册")
						delay(3)
					end
				end
			else
				
				if d(page.tip_bad,"page.tip_bad",true)then
					return false
				elseif d(page.allow,"page.allow",true)then
				elseif d(page.allow_local,"page.allow_local",true)then
				end
			end
		end
		delay(0.5)
	end
end


function get_local()
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
--		local c, h, b = http.get("http://ip.chinaz.com/getip.aspx?ts="..tostring(sys.rnd()), 30)
		local c, h, b = http.get("http://ip.cn", 30)
--        local c, h, b = http.get("https://www.ipip.net/",30)
        if (c==200) then
            sys.toast("", -1)
            done = true
            return b:match('所在地理位置：<code>.*</code>')
        end
    end
end

--[[]]

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














































































