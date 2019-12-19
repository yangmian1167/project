-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')
require('alz')
require('LuaDemo')



----main

var = {}
safaribid = ''
appbid = 'com.yuemei.kw'

url = ''
kfy.id = '16741'
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
	idfalist.name = name or '悦美注册'
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or device.name()
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

--------------------------gc
ym = {}
ym.首页 = {{
	{576, 1085, 0x999999},
	{437, 1114, 0x888888},
	{ 64, 1076, 0xffebf2},
	{ 73, 1066, 0xff6793},
}, 85, 18, 1048, 620, 1132}
ym.我的界面 = {{
	{575, 1085, 0xff658e},
	{440, 1075, 0x999999},
	{ 55, 1112, 0x909090},
}, 85, 38, 1053, 624, 1125}
ym.手机注册 = {{
	{493, 77, 0x666666},
	{526, 82, 0x939393},
	{601, 96, 0xa1a1a1},
}, 85}
ym.注册界面 = {{
	{292, 72, 0x333333},
	{287, 77, 0xd1d1d1},
	{ 36, 83, 0xadadad},
}, 85}
ym.注册界面_验证码 = {{
	{490, 340, 0xff5c77},
	{391, 299, 0xff5d77},
	{599, 344, 0xff5d77},
}, 85, 383, 277, 604, 383}
ym.注册界面_输入验证码 = {{
	{230, 337, 0xd3d3d8},
	{391, 337, 0xdedede},
	{599, 337, 0xdedede},
}, 85, 166, 287, 622, 391}
ym.注册界面_点注册 = {{
	{332, 579, 0xffffff},
	{ 65, 550, 0xff5c66},
	{588, 607, 0xff5c66},
}, 85, 33, 520, 633, 644}
ym.注册界面_输入密码 = {{
	{319, 443, 0xc7c7cd},
	{166, 423, 0xffffff},
	{453, 463, 0xffffff},
	{256, 432, 0xccccd2},
}, 85, 153, 413, 466, 470}
ym.tips_同意 = {{
	{440, 945, 0xff5c77},
	{364, 945, 0xffffff},
	{200, 945, 0x545454},
}, 85, 133, 903, 529, 986}
ym.tips_图片验证 = {{
	{430, 657, 0xffffff},
	{349, 635, 0xff5c77},
	{269, 644, 0xffffff},
	{525, 674, 0xff5c77},
	{328, 459, 0x333333},
}, 85, 133, 407, 562, 699}
function reg()
	local 取号 = true
	local 图形验证 = false
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
		while true do
			if active(appbid,5) then
				if d(ym.tips_同意,'ym.tips_同意',true) then
				elseif d(ym.首页,'ym.首页',true) then
				elseif d(ym.我的界面,'ym.我的界面') then
					click(117,130)
				elseif d(ym.手机注册,'ym.手机注册',true) then	
				elseif d(ym.注册界面,'ym.注册界面') then	
					if 取号 then
						if GET_Phone() then
							click(186, 230)
							input(phone)
							取号 = false
							验证码 = true
						end	
					elseif 验证码 then	
						if d(ym.注册界面_输入验证码,'ym.注册界面_输入验证码',true) then
							if GET_message(phone) then
								input(sms)
								验证码 = false
								提交 = true
							end
						else
							d(ym.注册界面_验证码,'ym.注册界面_验证码',true) 
						end
					elseif 提交 then
						if d(ym.注册界面_输入密码,'ym.注册界面_输入密码',true) then
							input('Aa112211')
						elseif d(ym.注册界面_点注册,'ym.注册界面_点注册',true) then
						else
							upidfa('悦美注册','初次注册')
							delay(5)
							return true
						end
					end	
				elseif d(ym.tips_图片验证,'ym.tips_图片验证') then
						delay(8)
						screen.image(402, 515, 537, 583):save_to_png_file("/private/var/mobile/yzm.jpg")
						imgfile = "/private/var/mobile/yzm.jpg"
						orcYZM()
						delay(3)
						click(146, 554)
						input(string.lower(yzm_jg))
						d(ym.tips_图片验证,'ym.tips_图片验证',true)
				end
			end
			delay(1)
		end
end

while true do
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(appbid) then
			idfa = XXTfakerGetinfo(appbid)['IDFA']
			if reg() then
			end	
		end
	end
end















