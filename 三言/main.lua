-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')
require('alz')
require('LuaDemo')



----main

var = {}
appbid = 'com.apple.mobilesafari'
url = 'http://vlife.soubiji.com/shares/inviteuser?invitecode=325907'
kfy.id = '15180'
if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

function upidfa(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name or '三言注册'
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or device.name()
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

三言 = {}
三言.加载中= {{{47, 117, 0x007aff},}, 85, 26, 105, 627, 126}
三言.主页面= {{{ 74, 588, 0xfecb7d},{555, 589, 0xff9900},{ 85, 675, 0xff9900},{553, 674, 0xfecb7d},}, 85, 24, 163, 629, 1036}
	三言.主页面_请输入手机号= {{{168, 555, 0xfdfcf9},{ 60, 529, 0xb4b2b1},{ 85, 562, 0xa3a2a1},{ 73, 558, 0x333333},}, 85, 39, 145, 342, 838}
	三言.主页面_获取验证码= {{{512, 402, 0x333333},{443, 390, 0x989796},{562, 410, 0x5e5e5e},{563, 390, 0xb1b0af},}, 85, 427, 297, 592, 563}
	三言.主页面_注册= {{{310, 711, 0xfffbfb},{217, 684, 0xe72501},{419, 731, 0xe72501},{424, 686, 0xe72501},}, 85, 542, 521, 636, 664}
三言.完成= {{{604, 584, 0x007aff},{566, 576, 0x007aff},{606, 597, 0x007aff},}, 85, 542, 521, 636, 664}

function reg()
	local 取号 = true
	local 图形验证 = false
	local 验证码 = false
	local 提交 = false
	
	
	while true do 
		if active(appbid,5) then
			if d(三言.加载中,'三言.加载中') then
			elseif d(三言.主页面,'三言.主页面') then
				if 取号 then
					if GET_Phone() then
						d(三言.主页面_请输入手机号,'三言.主页面_请输入手机号',true)
						input(phone)
						取号 = false
						图形验证 = true
					end	
				elseif 图形验证 then
						screen.image(422, 372, 584, 435):save_to_png_file("/private/var/mobile/yzm.jpg")
						imgfile = "/private/var/mobile/yzm.jpg"
						orcYZM()
						delay(3)
						click(137, 411)
						input(string.lower(yzm_jg))
						图形验证 = false
						验证码 = true
				elseif 验证码 then
					if d(三言.主页面_获取验证码,'三言.主页面_获取验证码',true) then	
					elseif GET_message(phone) then
						click(116, 469)
						input(sms)
						验证码 = false
						提交 = true
					end
				elseif 提交 then
					if d(三言.完成,'三言.完成',true) then
					elseif 	d(三言.主页面_注册,'三言.主页面_注册',true) then
						upidfa('三言注册','初次注册')
						return true

					end
				end	
			end
		end
		delay(1)
	end	
end

openUrl(url)
delay(5)
reg()


























