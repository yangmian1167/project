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
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end



var = ''
appbid = 'com.apple.mobilesafari'
url = 'https://www.bhex.com/m/register?source=sanyan'

bhex = {}
bhex.发送验证码 = {{{506, 865, 0xffffff},{386, 843, 0x3375e0},{568, 883, 0x3375e0},{560, 843, 0x3375e0},}, 85, 365, 155, 597, 990}
bhex.注册 = {{{318, 776, 0x3375e0},{ 79, 744, 0x3375e0},{555, 795, 0x3375e0},{555, 749, 0x3375e0},}, 85, 51, 405, 591, 1008}
bhex.完成 = {{{604, 586, 0x007aff},{581, 586, 0x007aff},{568, 576, 0x007aff},}, 85, 536, 541, 638, 627}
bhex.请输入手机号 = {{{377, 518, 0xffffff},{299, 505, 0xe0e1e2},{300, 529, 0xd1d2d4},{456, 506, 0xafb2b4},{454, 530, 0xe1e2e3},{461, 516, 0xd0d2d3},}, 85, 273, 260, 503, 542}
bhex.同意条款 = {{{ 93, 701, 0xffffff},{ 73, 686, 0xffffff},{ 68, 693, 0x757575},{100, 691, 0x757575},{308, 692, 0x0f4aff},{251, 690, 0x000000},}, 85, 48, 647, 571, 732}
bhex.注册成功 = {{{583, 1029, 0x3375e0},{581,  949, 0x3375e0},{ 52,  935, 0x3375e0},{ 58, 1029, 0xffffff},{338,  973, 0x3375e0},}, 85, 34, 844, 601, 1128}



function tips()
	if d(bhex.完成,'bhex.完成',true) then

	end
end

function reg()
	local 手机号 = true
	local 密码 = false
	local 短信 = false
	local 提交 = false
	local 注册完成 = false
	local password = 'Aa123456'
	local outtime = os.time()
	local timeline = math.random(100,180)
		滑动key = 1	
	openUrl(url)
	while os.time()- outtime < timeline do
		if active(appbid,5) then
			if d(bhex.发送验证码,'bhex.发送验证码') or d(bhex.注册,'bhex.注册') then
				if 手机号 then
					phone = YiMa_phone()
--					phone = '18129871167'
					log(phone)
					delay(7)
					if phone ~= nil or phone ~= '' then
						if d(bhex.请输入手机号,'bhex.请输入手机号',true) then
							input(phone)
							click(81, 427)	
							input(password)
							click(87, 450)	
							input(password)
							手机号 = false
							短信 = true
						end
					end
				elseif 短信 then
						if d(bhex.发送验证码,'bhex.发送验证码',true) then
						else
							yzm = YiMa_yzm()
							log(yzm)
							if yzm ~= nil or yzm ~= '' then
								click(122, 464)
								input(yzm)
								短信 = false
								提交 = true
							end	
						end
				elseif 提交 then
					if d(bhex.注册成功,'bhex.注册成功') then
						up('BHEX','注册完成')
						delay(3)
						return true
					elseif d(bhex.同意条款,'bhex.同意条款',true) then
					elseif d(bhex.注册,'bhex.注册',true) then

					end	
				end
			else
				tips()
			end
		end
		delay(1)
	end
end


function reg_mail()
	local 手机号 = true
	local 密码 = false
	local 短信 = false
	local 提交 = false
	local 注册完成 = false
	local password = 'Aa123456'
	local outtime = os.time()
	local timeline = math.random(100,180)
		滑动key = 1	
	openUrl(url)
	while os.time()- outtime < timeline do
		if active(appbid,5) then
			if d(bhex.发送验证码,'bhex.发送验证码') or d(bhex.注册,'bhex.注册') then
				if 手机号 then
					phone = YiMa_phone()
--					phone = '18129871167'
					log(phone)
					delay(7)
					if phone ~= nil or phone ~= '' then
						if d(bhex.请输入手机号,'bhex.请输入手机号',true) then
							input(phone)
							click(81, 427)	
							input(password)
							click(87, 450)	
							input(password)
							手机号 = false
							短信 = true
						end
					end
				elseif 短信 then
						if d(bhex.发送验证码,'bhex.发送验证码',true) then
						else
							yzm = YiMa_yzm()
							log(yzm)
							if yzm ~= nil or yzm ~= '' then
								click(122, 464)
								input(yzm)
								短信 = false
								提交 = true
							end	
						end
				elseif 提交 then
					if d(bhex.注册成功,'bhex.注册成功') then
						up('BHEX','注册完成')
						delay(3)
						return true
					elseif d(bhex.同意条款,'bhex.同意条款',true) then
					elseif d(bhex.注册,'bhex.注册',true) then

					end	
				end
			else
				tips()
			end
		end
		delay(1)
	end
end


--[[
while true do
	device.turn_on_airplane()
	delay(15)
	device.turn_off_airplane()
	delay(15)
	if XXTfakerNewPhone(appbid) then
		delay(3)
		reg()
	end
end

--]]

reg_mail()












































