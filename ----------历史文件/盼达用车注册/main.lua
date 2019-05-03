nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
require('LuaDemo')

----mian----
var = {}

safari_bid = 'com.apple.mobilesafari'
url = 'https://act.pand-auto.com//h5sharePage/?code=0G6874'
kfy.id = '15255'




if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

---杭州经纬度
function hzlocal()
	local jwd={}
	local jdleft = math.floor(120.112456*1000000)
	local jdright = math.floor(120.260497*1000000)
	 jwd.jd = math.random(jdleft,jdright)/1000000
	log(jwd.jd) 
	local wdtop = math.floor(30.354791*100000)
	local wdbottom = math.floor(30.202593*100000)
	 jwd.wd = math.random(wdbottom,wdtop)/100000
	log(jwd.wd)
	return jwd
end
---伪装定位
function gpswz(应用包名,纬度,经度)
	gps.fake(应用包名,纬度,经度)
end
---横向键盘
function keyNumber(str)
	local keyboard =	{
			{ 35, 769, 0x000000},
			{ 97, 766, 0x404040},
			{159, 766, 0x000000},
			{222, 766, 0xffffff},
			{290, 767, 0xffffff},
			{352, 766, 0xffffff},
			{416, 768, 0x010101},
			{481, 764, 0x000000},
			{543, 766, 0xffffff},
			[0]={611, 770, 0xffffff},
		}
	for i = 1,string.len(str) do
		local key = string.sub(str,i,i)
		key = tonumber(key)
		click(keyboard[key][1],keyboard[key][2],1)
	end
	delay(1)
end

function upidfa(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name or '盼达用车'
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or device.name()
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end


pd = {}
pd.加载中 = {{{36, 116, 0x007aff},}, 85, 23, 98, 620, 123}
pd.主页面1 =  {{{ 35, 753, 0x98732d},{349, 739, 0x028887},{609, 768, 0x160e09},{619, 847, 0xfefefe},}, 85, 0, 0, 0, 0}
pd.主页面2 = {{{319, 432, 0x86d0ab},{ 85, 396, 0x27282d},{558, 462, 0x27282d},}, 85, 0, 0, 0, 0}
	pd.主页面_获取验证码 = {{{502,  968, 0xa6d4ae},{418,  928, 0xa6d4ae},{570, 1007, 0xa6d4ae},}, 85, 279, 184, 629, 1047}
	pd.主页面_输入验证码 = {{{112,  973, 0xa9a9a9},{414, 1001, 0xcccccc},{553,  929, 0xcccccc},}, 85, 43, 889, 619, 1042}
	pd.主页面_领取用车券 = {{{300, 429, 0x82c9a6},{ 82, 394, 0x27282d},{551, 452, 0x27282d},}, 85, 36, 143, 619, 1101}
pd.tips_验证码界面 = {{{438, 185, 0xd7d7d7},{461, 165, 0x767676},{441, 362, 0xa6d4ae},{442, 451, 0xffffff},}, 85, 367, 142, 491, 477}
pd.tips_完成 = {{{610, 580, 0x007aff},{582, 586, 0x007aff},{566, 575, 0x007aff},}, 85, 530, 500, 639, 657}
pd.tips_允许访问位置 = {{{462, 673, 0x007aff},{454, 680, 0xe2e1e6},{189, 667, 0x5ba2ef},}, 85, 81, 629, 581, 717}
pd.tips_点击下载APP= {{{284, 161, 0xfbd249},{455, 256, 0x000000},{320, 426, 0xffffff},}, 85, 60, 144, 574, 517}
function reg()
	local 取号 = true
	local 验证码 = false
	local 取短信 = false
	local 提交 = false
	local timeline = os.time()
	local outtime = math.random(100,120)
	while os.time() - timeline < outtime do
		if active(safari_bid,5) then
			if d(pd.加载中,'pd.加载中') then
			elseif d(pd.主页面1,'pd.主页面1') or d(pd.主页面2,'pd.主页面2') then
				if 取号 then
					if GET_Phone() then
						delay(3)
						click(182, 861)
						input(phone)
						d(pd.主页面_获取验证码,'pd.主页面_获取验证码',true)
						取号 = false
						取短信 = true
					end	
				elseif 取短信 then
					if GET_message(phone) then
						
						d(pd.主页面_输入验证码,'pd.主页面_输入验证码',true)
						input(sms)
						d(pd.主页面_领取用车券,'pd.主页面_领取用车券',true)
					else
						delay(3)
					end	
				end
			elseif d(pd.tips_验证码界面,'pd.tips_验证码界面') then
					delay(2)
					screen.image(137,143,371,237):save_to_png_file("/private/var/mobile/yzm.jpg")
					imgfile = "/private/var/mobile/yzm.jpg"
					orcYZM()
					keyNumber(yzm_jg)	
					d(pd.tips_完成,'pd.tips_完成',true)
			elseif d(pd.tips_点击下载APP,'pd.tips_点击下载APP') then
				upidfa('盼达用车','初次注册')
				return true
			else
				if d(pd.tips_完成,'pd.tips_完成',true)then
				elseif d(pd.tips_允许访问位置,'pd.tips_允许访问位置',true)  then
				end
			end
		end	
		delay(1)
    end
	
end



while true do
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(safari_bid) then
			gpswz(safari_bid,hzlocal()['wd'],hzlocal()['jd'])
			openUrl(url)
			delay(3)
			reg()
		end
	end

end
























