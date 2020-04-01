-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
--require('dmpt')
require('faker')
require('name')
require('yima')


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
]]

function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkphone()
	local url = 'http://wenfree.cn/api/Public/idfa/?service=Ip.Checkphone&name=掌门1对1&phone='..phone
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("手机号可以用:OK.",true)
			return true
		else
			log("手机重复, 排重失败",true)
			return false
		end
	end
end


var = ''
appbid = 'com.red.show'
--appbid = 'com.zmlearn.ZMClient'
url = 'http://www.hongrenvv66.top/down+101.html?c=206983'

掌门 = {}
掌门.tips_跳过 = {{{544, 56, 0x666666},{529, 52, 0xffffff},{526, 51, 0xa9a9a9},{598, 55, 0x9d9d9d},}, 85, 513, 38, 610, 78}
掌门.tips_滑动验证码界面 = {{{ 94, 772, 0xcccccc},{ 92, 799, 0xe6e6e6},{106, 789, 0xb0b0b0},{180, 771, 0xbcbcbc},{170, 781, 0xd4d4d4},{178, 792, 0xfafafa},}, 85, 85, 758, 194, 813}
掌门.输入手机号界面 = {{{324, 665, 0xfffdfd},{249, 665, 0xffffff},{132, 631, 0xffabaa},{156, 682, 0xffabaa},{505, 638, 0xffabaa},}, 85, 80, 243, 536, 726}
掌门.获取验证码 = {{{358, 353, 0xffffff},{172, 321, 0xff5655},{198, 378, 0xff5655},{516, 330, 0xff5655},{513, 371, 0xff5655},}, 85, 25, 104, 608, 848}
掌门.输入手机验证码界面 = {{{ 67, 267, 0x5f5f5f},{ 66, 267, 0xffffff},{ 63, 273, 0x333333},{ 70, 306, 0x333333},{355, 277, 0xffffff},{337, 293, 0x656565},}, 85, 48, 245, 380, 337}
掌门.完成注册 = {{{344, 884, 0xfeeeef},{267, 881, 0xffffff},{157, 851, 0xef4c4f},{172, 917, 0xef4c4f},{472, 863, 0xef4c4f},}, 85, 131, 798, 510, 966}
掌门.完成注册1 = {{{444, 889, 0x5f1e1f},{250, 875, 0x5f1e1f},{414, 857, 0x5f1e1f},{428, 832, 0x666666},}, 85, 163, 821, 495, 940}
掌门.完成注册2 = {{{440, 905, 0x5f1e1f},{429, 864, 0x5f1e1f},{223, 862, 0x5f1e1f},{213, 892, 0x5f1e1f},{403, 824, 0x666666},}, 85, 149, 795, 530, 974}




url_打开 = {{{518, 631, 0x3596ff},{513, 631, 0x1f8aff},{403, 633, 0x007aff},}, 85, 342, 597, 544, 662}
function openU()
	openUrl(url)
	delay(3)
	if d(url_打开,'url_打开',true) then
		delay(15)
		return true
	end	
end
function tips()
	if d(掌门.tips_跳过,'掌门.tips_跳过',true) then
	elseif d(掌门.tips_滑动验证码界面,'掌门.tips_滑动验证码界面') then
		if 滑动key > 4 then
				滑动key = 1
		elseif 滑动key == 1 then
			moveTo(129, 679,256, 678)
			滑动key = 滑动key + 1
		elseif 滑动key == 2 then
			moveTo(129, 679,308, 680)
			滑动key = 滑动key + 1
		elseif 	滑动key == 3 then
			moveTo(129, 679,332, 678)	
			滑动key = 滑动key + 1
		elseif 	滑动key == 4 then
			moveTo(129, 679,388, 680)	
			滑动key = 滑动key + 1
		
		end
	end
	delay(1)
end

function reg()
	local 取号 = true
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
	local outtime = os.time()
	local timeline = math.random(100,180)
		滑动key = 1	
	while os.time()- outtime < timeline do
		if active(appbid,5) then
			if d(掌门.完成注册,'掌门.完成注册',true) or d(掌门.完成注册1,'掌门.完成注册1',true) or d(掌门.完成注册2,'掌门.完成注册2',true) then
				pasword = yzm
				delay(2)
				up('掌门1对1','注册完成')
				return true
			elseif d(掌门.输入手机号界面,'掌门.输入手机号界面') then
				if 取号 then
--					if YiMa_phone() then
--						phone = YiMa_phone()
						phone = laixin_phone()
						log(phone)
						if phone ~= nil or phone ~= '' then
							if checkphone() then
								click(119, 487)
								input(phone)
								取号 = false
							else
								return false
							end
						end
					--end
				end
			elseif d(掌门.获取验证码,'掌门.获取验证码',true) then
		elseif d(掌门.输入手机验证码界面,'掌门.输入手机验证码界面') then
				验证码 = true
				if 验证码 then
--					if YiMa_yzm() then
--						yzm = YiMa_yzm()
						yzm = laixin_yzm() 
						log(yzm)
						if yzm ~= nil  or yzm ~= '' then
							input(yzm)
							验证码 = false
							提交 = true
							up('掌门1对1','正在注册')
						end	
--					end
				end	
		else
			tips()
			end
		end
		delay(1)
	end
end
function checkip()
	ip = get_ip() or "192.168.1.1"
	log(ip)
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

function main()
	vpnx()
	delay(3)
	if vpn() then
		if checkip() then
			if XXTfakerNewPhone(appbid) then
				if openU() then
					if reg() then
					end	
				end
			end
		end 
	end
end

--[[
while true do
	local ret,errMessage = pcall(main)
	if ret then
		log(errMessage)
	end
end	
--]]












































