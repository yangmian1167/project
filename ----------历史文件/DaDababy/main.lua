nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
require('name')
if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end


screen.init(0)

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
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
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

kfy.id = '14552'

bids = {}
bids.DaDaBABY = "com.dadaabc.DaDaBABY"


regurl = "https://m.dadababy.com/wx/ambassador/invate?id=pfvAjZtO"
regs = {}
regs.注册界面 = {{{103, 564, 0xff6839},{ 71, 600, 0xff6839},{125, 579, 0xffffff},{543, 569, 0xff6839},{577, 607, 0xff6839},{548, 607, 0xfde35d},}, 85, 43, 400, 612, 1108}
regs.注册界面_输入手机号 = {{{140, 749, 0xdcdede},{ 91, 745, 0xe1e3e3},{ 87, 684, 0xe6faf8},{ 88, 684, 0x5fe0d0},{ 98, 707, 0xcdf6f1},{161, 707, 0xd8f8f4},}, 85, 52, 651, 254, 800}
regs.注册界面_获取验证码 = {{{421, 466, 0x00dad4},{421, 496, 0x00c2bd},{437, 477, 0xffffff},{455, 477, 0xaef4ef},{553, 461, 0xecfaf7},{573, 469, 0xabe6c8},{567, 503, 0x00c29b},}, 85, 400, 446, 590, 528}
regs.领取成功打开下载链接 = {{{369, 781, 0x00d4b8},{364, 582, 0xed7248},{347, 430, 0x462c27},}, 85, 38, 308, 601, 816}

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

function reg()
--	XXTfakerNewPhone('com.apple.mobilesafari')
	delay(2)
	openUrl(regurl)
	local TIMEline = os.time()
	local OUTtime = rd(180,200)
	取号 = true
	验证码 = false
	密码 = false
	短信 = false
	提交 = false
	while os.time()- TIMEline < OUTtime do
		if d(regs.注册界面,"regs.注册界面",false) then
			if 取号 then
				if GET_Phone() then
					delay(3)
					d(regs.注册界面_输入手机号,"regs.注册界面_输入手机号",true) 
					input(phone)
					验证码 = true
					取号 = false
					
				end
			elseif 验证码 then
				if d(regs.注册界面_获取验证码,"regs.注册界面_获取验证码",true) then
					短信 = true
					验证码 = false
					
				end
			elseif 短信 then
				if GET_message(phone)then
					click(192,749)
					input(sms)
					提交 = true
					短信 = false
				end
			elseif 提交 then
				log("----------------------->tijiao")
				if d(regs.注册界面,"regs.注册界面,",true) then
					up("safari",'注册提交')
				end	
			end	
		elseif d(regs.领取成功打开下载链接,"regs.领取成功打开下载链接",false) then
				delay(rd(5,10))
				return true
			
		else
		end	
		delay(2)
	end	
end


urls = "http://baby.dadaabc.net/wx/activity/landing_page?source=ambassador"


--function openU(urls)
--	openUrl(urls)
--	delay(3)
--	local timeline = os.time()
--	local outtimes = 60
--	while os.time()-timeline < outtimes do
--		if d(web.open,"web.open",true,1)then
--			delay(math.random(10,15))
--			return true
--		end
--		delay(1)
--	end
--	log("open time ",true)
--end

appbid = {}
appbid.立即体验 = {{{265, 956, 0x2dafff},{157, 956, 0x2dafff},{134, 941, 0xffffff},{518, 969, 0xffffff},{516, 969, 0x33b2ff},}, 85, 114, 913, 531, 1027}
appbid.获取验证码 = {{{385, 442, 0x00cdaf},{386, 493, 0x00cdaf},{546, 491, 0x00cdaf},{547, 450, 0x00cdaf},{399, 459, 0xffffff},}, 85, 344, 406, 580, 523}
appbid.注册界面 = {{{ 65,  57, 0xffce0d},{ 73, 129, 0xeec911},{391,  58, 0x462d27},{527,  64, 0x462d27},{539, 145, 0xdcc117},}, 85, 21, 16, 622, 518}
appbid.登录 = {{{110, 611, 0x00cdaf},{114, 672, 0x00cdaf},{530, 613, 0x00cdaf},{529, 669, 0x00cdaf},{294, 623, 0xffffff},}, 85, 61, 561, 580, 698}
appbid.弹窗 = {{{323, 1030, 0xe4e4e4},{140,  813, 0xd6f9a7},{403,  626, 0xebffc1},{186,  782, 0x442d27},{543,  840, 0xfdc616},}, 85, 36, 447, 606, 1110}
function newidfa(bids)
	if false or  XXTfakerNewPhone(bids)then
		idfa = XXTfakerGetinfo(bids)['IDFA']
		local TIMEline = os.time()
		local OUTtime = rd(180,200)
		取号 = true
		验证码 = false
		密码 = false
		短信 = false
		提交 = false
		
		while os.time()- TIMEline < OUTtime do
			if active(bids,4)then
				if d(appbid.注册界面 ,"appbid.注册界面 ",false) then
					if 取号 then
						if GET_Phone_a(phone)then
								click(281,449)
								phoneKey(phone)
								取号 = false
								短信 = true
						end
					elseif 短信 then
						if d(appbid.获取验证码 ,"appbid.获取验证码 ",true) then
						
						elseif GET_message_a(phone)then
							phoneKey(sms)
							
							短信=false
							提交=true
						else
							delay(2)
						end
					elseif 提交 then
						if d(appbid.登录 ,"appbid.登录 ",true) then
							up(appname(bids),'注册提交')
							delay(rd(3,5))
							return true
						end	
					end	
				else
					if d(appbid.立即体验,"appbid.立即体验",true) then
					elseif d(appbid.弹窗,"appbid.弹窗",true) then
					else
						
						click(132,92)
						log("huadong---------------------------------->")
						moveTo(517,697,113,704)
					end
				end	
			end
			delay(2)
		end
	end
end
appbid.填写资料界面 = {{{128, 536, 0x00cdaf},{132, 586, 0x00cdaf},{543, 546, 0x00cdaf},{543, 595, 0x00cdaf},{290, 545, 0xcef6f0},{348, 581, 0xe2faf6},}, 85, 56, 498, 588, 1122}
appbid.宝宝性别男 = {{{123,  61, 0x006ee1},{127,  89, 0x3c4256},{133, 116, 0x006ee1},{158,  70, 0x006ee1},{168, 102, 0xf0f6f5},}, 85, 61, 32, 315, 600}

function fillin()
	local x1,y1 =157,906
	local x2,y2 =319,910
	local x3,y3 =466,903
	if d(appbid.填写资料界面,"appbid.填写资料界面") then
		if d(appbid.宝宝性别男,"appbid.宝宝性别男",true) then
			click(135,615)
			input(random_name())
			delay(1)
			click(163,413)
			moveTo(x1,y1,157,(y1+rd(50,100)))
			moveTo(x2,y2,319,(y1+rd(50,100)))
			moveTo(x3,y3,466,(y1+rd(50,100)))
			delay(4)
			d(appbid.填写资料界面,"appbid.填写资料界面",true) 
		end
	delay(2)
	end
	
end	
--[[]]

kfy.id = '14552'

while true do
	if vpn() then	
		if reg() then
			newidfa(bids.DaDaBABY)
		end
		vpnx()
		delay(2*3)
	end	
end
--]]
























