-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')
require('smdate')

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


var = ''
appbid = 'com.longtugame.yxwd'
url = 'http://hero.longtugame.com/EW2xL1'
clickurl = {}
clickurl_打开链接 = {{{526, 631, 0x007aff},{494, 639, 0x007aff},{389, 634, 0x007aff},}, 85, 330, 604, 559, 662}
ganme = {}
ganme.更新 = {{{223, 722, 0x88694a},{210, 622, 0x715638},{206, 382, 0x28568a},{226, 523, 0x295585},}, 85, 166, 345, 279, 798}
ganme.游客登录 = {{{112, 461, 0x8d8d8d},{107, 410, 0x707070},{198, 431, 0xfa5754},{218, 642, 0xfd5a59},{285, 652, 0xe79100},{371, 654, 0x8abd1e},}, 85, 96, 383, 536, 724}
ganme.忽略 = {{{120, 419, 0xa2a2a1},{124, 464, 0xf8f8f8},{118, 602, 0xfc5655},{135, 725, 0xfc5d5c},{126, 541, 0xa1a1a1},}, 85, 86, 387, 176, 759}
ganme.系统公告 = {{{571, 975, 0x64331c},{566, 963, 0xbd8255},{546, 961, 0xb3430d},{558, 952, 0xe8c18b},{556, 638, 0x855940},{ 94, 481, 0x2f2328},}, 85, 69, 404, 596, 998}
function openU()
	local timeline = os.time()
	local outtime = 30
	openURL(url)
	delay(3)
	while os.time() - timeline < outtime do
		if d(clickurl_打开链接,'clickurl_打开链接',true) then
			delay(20)
			return true
		end
	end	
	return true
end


function reg()
	关闭key = true
	local timeline = os.time()
	local outtime = math.random(300,360)
	while os.time() - timeline < outtime do
		if active(appbid,5) then
			if d(ganme.更新,'ganme.更新',true) then
				vpnx()
				if 关闭key then
				closeX(appbid)	
				 关闭key = false
				end
			elseif d(ganme.游客登录,'ganme.游客登录') then
				if vpn() then
					d(ganme.游客登录,'ganme.游客登录',true)
				end	
			elseif d(ganme.系统公告,'ganme.系统公告') then
				screen.image():save_to_album() -- 全屏截图并保存到相册
				return true
			elseif d(ganme.忽略,'ganme.忽略',true) then
			end	
		end	
		delay(1)
		log('休息1秒')
	end	
	return false
end



while true do
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(appbid) then
			fakerdevice = XXTfakerGetinfo(appbid)
			IDFA = XXTfakerGetinfo(appbid)['IDFA']
			openU()
			if reg() then	
				up('魔法门','注册完成')
			end
		end
	end
end


















