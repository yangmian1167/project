-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')
require('alz')
require('LuaDemo')



----main

var = {}
safaribid = 'com.apple.mobilesafari'
appbid = 'com.tongzheng.sylife'

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


-------safari
三言 = {}
三言.加载中= {{{47, 117, 0x007aff},}, 85, 26, 105, 627, 126}
三言.主页面= {{{ 74, 588, 0xfecb7d},{555, 589, 0xff9900},{ 85, 675, 0xff9900},{553, 674, 0xfecb7d},}, 85, 24, 163, 629, 1036}
	三言.主页面_请输入手机号= {{{168, 555, 0xfdfcf9},{ 60, 529, 0xb4b2b1},{ 85, 562, 0xa3a2a1},{ 73, 558, 0x333333},}, 85, 39, 145, 342, 838}
	三言.主页面_获取验证码= {{{512, 402, 0x333333},{443, 390, 0x989796},{562, 410, 0x5e5e5e},{563, 390, 0xb1b0af},}, 85, 427, 297, 592, 563}
	三言.主页面_注册= {{{327, 797, 0xffffff},{218, 768, 0xe72501},{410, 821, 0xe93514},}, 85, 87, 670, 583, 917}
三言.完成= {{{604, 584, 0x007aff},{566, 576, 0x007aff},{606, 597, 0x007aff},}, 85, 542, 521, 636, 664}
三言.appstore打开连接= {{{496, 636, 0x007aff},{364, 637, 0x007aff},{144, 560, 0x000000},{ 83, 536, 0xffffff},}, 85, 61, 519, 573, 672}
function reg()
	local 取号 = true
	local 图形验证 = false
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
	
	while true do 
		if active(safaribid,5) then
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
						注册完成 = true
					end
				end	
			elseif 注册完成 and d(三言.appstore打开连接,'三言.appstore打开连接',true) then
				upidfa('三言注册','初次注册')
				delay(10)
				return true
				
			end
		end
		delay(1)
	end	
end



------appbid
三言.首页 = {{{ 48, 1085, 0xffb649},{ 56, 1126, 0x141414},{307, 1103, 0xff9900},{590, 1088, 0x999999},}, 85, 19, 1040, 624, 1133}
三言.登录界面 = {{{566, 111, 0xffa900},{ 97, 432, 0xcccccc},{520, 523, 0xcccccc},{581, 433, 0xffffff},}, 85, 0, 0, 0, 0}
三言.登录界面_获取验证码 = {{{490, 569, 0x424242},{427, 565, 0x424242},{565, 560, 0x424242},}, 85, 408, 538, 584, 590}
三言.登录界面_提交 = {{{331, 759, 0xffffff},{168, 728, 0xff7400},{467, 785, 0xff7400},}, 85, 94, 657, 577, 977}




function lg()
	local 取号 = true
	local 图形验证 = false
	local 验证码 = false
	local 提交 = false
	
	while true do
		if active(appbid,5) then
			if d(三言.首页,'三言.首页') then
				click(307,1083)
			elseif d(三言.登录界面,'三言.登录界面') then
				if 取号 then
					if GET_Phone_a(phone) then
						click(184,396)
						input(phone)
						取号 = false
						图形验证 = true
					end	
				elseif 图形验证 then
					screen.image(401, 443, 571, 517):save_to_png_file("/private/var/mobile/yzm.jpg")
					imgfile = "/private/var/mobile/yzm.jpg"
					orcYZM()
					delay(3)
					click(172, 486)

					input(string.lower(yzm_jg))
					图形验证 = false
					验证码 = true
				elseif 验证码 then
					if d(三言.登录界面_获取验证码,'三言.登录界面_获取验证码',true) then
					elseif GET_message(phone) then
						click(146, 576)	
						input(sms)
						验证码 = false
						提交 = true						
					end	
				elseif 提交 then
					if d(三言.登录界面_提交,'三言.登录界面_提交',true) then
					else
						click(271, 196)
					end	
				end
			end
		end
		delay(1)
	end
end




	openUrl(url)
	delay(5)
	if reg() then
		lg()
	end	







