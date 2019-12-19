-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')
require('jiema')
require('name')

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

function upidfa(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name or '打卡助手'
	idfalist.idfa = idfa or account
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or device.name()
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other or tturl
	return post(url,idfalist)
end



appbid = 'com.amgtec.DaKa'
itemid = "8758"

打卡助手 = {}
打卡助手.立即注册 = {{{580, 84, 0x464646},{532, 93, 0x333333},{603, 81, 0x333333},}, 85, 514, 63, 622, 103}
打卡助手.注册界面 = {{{529, 525, 0x586bfb},{368, 519, 0x596cfc},{337, 515, 0x7282fc},{558, 513, 0x8492fd},}, 85, 328, 499, 576, 545}
打卡助手.获取验证码 = {{{533, 312, 0x333333},{442, 296, 0x586bfb},{569, 330, 0xffffff},{570, 335, 0x586bfb},}, 85, 433, 280, 586, 345}
打卡助手.注册下一步 = {{{317, 455, 0xffffff},{163, 443, 0x586bfc},{439, 472, 0x586bfc},}, 85, 92, 382, 514, 509}
打卡助手.弹窗下一步 = {{{321, 1059, 0x586bfb},{316, 1016, 0x586bfb},{328, 1103, 0x586bfb},}, 85, 214, 982, 420, 1119}
打卡助手.登录信息界面 = {{{ 70, 157, 0xafafaf},{ 70, 199, 0xdadada},{330, 157, 0xb5b5b5},{338, 199, 0x747474},{350, 195, 0x161616},}, 85, 53, 144, 365, 222}
打卡助手.登录信息界面_完成 = {{{417, 505, 0x586bfc},{208, 473, 0x586bfc},{408, 460, 0x586bfc},{309, 483, 0xffffff},}, 85, 163, 425, 478, 533}
打卡助手.完成注册 = {{{139, 729, 0xffffff},{496, 847, 0xffffff},{166, 878, 0x666666},{478, 892, 0x666666},}, 85, 117, 666, 545, 967}



function main()
	local timeline = os.time()
	local outtime = rd(120,150)
	local 取号 = true
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
	while os.time() - timeline < outtime do
		if active(appbid,5) then
			if d(打卡助手.立即注册,'打卡助手.立即注册',true) then
			elseif d(打卡助手.注册界面,'打卡助手.注册界面') then
				if d(打卡助手.注册下一步,'打卡助手.注册下一步',true) then
				elseif d(打卡助手.获取验证码,'打卡助手.获取验证码',true) then
				elseif 取号 then
					phone = laixin_phone()
					input(phone)
					取号 = false
					验证码 = true
				elseif 验证码 then
					yzm = laixin_yzm()
					log(yzm)
					if #yzm == 4 then
						click(108, 325)
						delay(2)
						input(yzm)
						验证码 = false
						提交 = true
					end
				end
			elseif d(打卡助手.登录信息界面,'打卡助手.登录信息界面') then
				if d(打卡助手.登录信息界面_完成,'打卡助手.登录信息界面_完成',true) then
				elseif 提交 then
					account = random_name()
					input(account)
					delay(2)
					click(82, 329)
					password = myRand(4,math.random(8,10))
					input(password)
					提交 = false
					注册完成 = true
				end	
			elseif 注册完成 then
				if d(打卡助手.完成注册,'打卡助手.完成注册') then
					upidfa(name,other)
					delay(2)
					return true
				end	
			else
				d(打卡助手.弹窗下一步,'打卡助手.弹窗下一步',true)
			end

		end
		delay(1)
	end	
    return false
end




--function reg()
--	vpnx()
--	delay(3)
--	if vpn() then
--		if XXTfakerNewPhone(appbid)	then
--			if main() then
--				upidfa()
--				delay(3)
--			end
--		end
--	end
--end
--while true do
--	local ret,errMessage = pcall(reg)
--	if ret then
--		log(errMessage)
--	end
--end	
	
	
	
	var = laixin_login()

	log(var)






