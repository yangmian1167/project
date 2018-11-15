nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
require('name')



appbid = "com.zhongan.insurance"
--za_url = "https://p.viplex.cn/html/zhongan/?frm=x04&__tkpm__=LV5PQW1ETUVXR01eIV8bFGVBS0VXVgwOfQ__&tcode=1411"
za_url = "https://t.viplex.cn/jump/?__dmt=3018b07c40a1fad9f3c6078ffe8fa4f9&tcode=1411"
			

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

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

function checkip()
	ip = get_ip() or "192.168.1.1"
	local url = 'http://hlj.51-gx.com/Public/idfa/?service=idfa.checkip&ip='..ip
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

function up_wenfree()
	local url = 'http://wenfree.cn/api/Public/user/?service=Tjj.paystate'
	local idfalist ={}
	idfalist.phonename = var.phonename or device.name()
	idfalist.imei = var.phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = ip or get_ip() or  '192.168.1.1'
	idfalist.account = var.account or phone
	idfalist.pwd = var.pwd
--	idfalist.tag = tagtb[var.phonename]
	idfalist.phone = phone
	idfalist.bank = var.sheng.."-"..var.diqu
	idfalist.bankphone = var.phone
	idfalist.address = var.address
	idfalist.money = var.money
	idfalist.pay = var.pay
	idfalist.whos = "ym"
	log(idfalist)
	return post(url,idfalist)
end

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
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

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}
web.手机号码 = {{{ 77, 511, 0xf7f7f7},{128, 590, 0xf8baef},{122, 847, 0x85dfff},{425, 924, 0x6db6fe},{564, 792, 0x42a7ff},}, 85,0,0,0, 0}
web.立即领取 = {{{248, 394, 0xf8baef},{572, 588, 0x007aff},{529, 220, 0xffdf32},{ 55,  87, 0xffde32},{121, 124, 0x141923},}, 85, 21, 49, 637, 660}
web.tips_下载app = {{{166, 677, 0x0641d9},{464, 686, 0x0641d9},{334, 675, 0x00ffa1},{271, 572, 0xffd700},{ 64, 459, 0xffd700},}, 85, 47, 441, 594, 770}
web.立即下载 = {{{434, 928, 0xffffff},{392, 930, 0x63d8a8},{226, 935, 0x61d7a7},{279, 298, 0x33e495},{164, 241, 0x417aff},}, 85, 0, 0, 0, 0}
web.tips_打开商店 = {{{477, 633, 0x007aff},{472, 632, 0xffffff},{357, 623, 0xffffff},{358, 623, 0x54a6ff},{420, 556, 0x313131},}, 85, 62, 529, 568, 663}


kfy.id = '10670'
function open(za_url)
	if XXTfakerNewPhone('com.apple.mobilesafari') then
		delay(1)
		openUrl(za_url)
	end	
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.手机号码,"web.手机号码",true,1) then
		elseif d(web.立即领取,"web.立即领取") then	
			if GET_Phone() then
				input(phone)
				d(web.立即领取,"web.立即领取",true,1) 
			end
		elseif d(web.tips_下载app,"web.tips_下载app") then
			delay(math.random(10,15))
			return true
		elseif d(web.立即下载,"web.立即下载",true,1) then
		elseif d(web.tips_打开商店,"web.tips_打开商店",true,1) then
			delay(math.random(10,15))
			return true
		else
			moveTo(439,882,422,694)
		end
		delay(1)
	end
	log("open time ",true)
end

zhongan = {}
zhongan.tips_该手机已注册 = {{{424, 635, 0x007aff},{200, 631, 0x007aff},{281, 533, 0x000000},}, 85}
zhongan.tips_跳过 = {{{542,  87, 0x545454},{542,  97, 0x464646},{583, 102, 0x4b4b4b},{582,  82, 0x464646},{588,  85, 0xe6e6e6},}, 85, 516, 67, 612, 117}
zhongan.tips_领取福利 = {{{241, 686, 0xffd8d5},{174, 694, 0xff6b6e},{426, 619, 0x5c41d0},{314, 546, 0xc0b7f3},}, 85, 92, 406, 551, 814}
zhongan.我要注册 = {{{494,  82, 0x15c388},{490, 107, 0x6edab5},{599, 106, 0x12c286},{601,  81, 0xb9eddb},}, 85, 474, 62, 613, 120}
zhongan.同意阅读 = {{{ 72, 647, 0xffffff},{125, 698, 0xc0efdf},{140, 646, 0xc5c5c5},}, 85}
zhongan.注册界面 = {{{294, 159, 0x717071},{ 28, 118, 0x12c286},{576,  69, 0xffffff},{555,  72, 0xffffff},}, 85}
zhongan.获取验证码 = {{{428, 420, 0x4bd1a3},{463, 435, 0xe8f9f4},{530, 435, 0x6edab5},{565, 435, 0x12c286},}, 85}
zhongan.立即注册 = {{{188, 819, 0x12c286},{290, 828, 0xffffff},{477, 839, 0x12c286},{545, 806, 0x12c286},}, 85}
function reg()
	取号 = true
	验证码 = false
	取短信 = false
	提交 = false
	success = false
	password = myRand(4,rd(7,10))
	timeline = os.time()
	outtime = rd(150,200)
	取短信次数 = 0

	if XXTfakerNewPhone(appbid) then
		idfa = XXTfakerGetinfo(appbid)['IDFA']
		while os.time() - timeline < outtime do
			if active(appbid) then
				if d(zhongan.tips_跳过,"zhongan.tips_跳过",true,1) then
				elseif d(zhongan.tips_领取福利,"zhongan.tips_领取福利",true,1) then
				elseif d(zhongan.我要注册,"zhongan.我要注册",true,1) then
				elseif d(zhongan.注册界面,"zhongan.注册界面") then
					if d(zhongan.同意阅读,"zhongan.同意阅读",true,1) then
					elseif 取号 then
						click(88,324)
						input(phone)
						取号 = false
						验证码 = true
					elseif 验证码 then
						click(120,567)
						input(password)
						验证码 = false
						取短信 = true
					elseif 取短信 then	
						if d(zhongan.获取验证码,"zhongan.获取验证码",true,1) then
							if GET_message(phone) then
								click(92,438)
								input(sms)
								click(289,109)
								取短信 = false
								提交 = true
							end
						end
					elseif 提交 then		
						if d(zhongan.立即注册,"zhongan.立即注册",true,1) then
							if d(zhongan.tips_该手机已注册,"zhongan.tips_该手机已注册") then
								return false
							else
								up("众安保险","众安保险")
								return true
							end
							
						end	
					end
				end
				
				
				
				
				
	--					elseif 验证码 then
	--						if d(apptjj.点击获取验证码,"apptjj.点击获取验证码",true) then
	--							验证码 = false
	--							取短信 = true
	--						end
	--					elseif 取短信 then
	--						if GET_message(phone) then
	--							delay(1)
	--							click(157,359)
	--							input(sms)
	--							取短信 = false
	--							提交 = true
									
	--						elseif d(apptjj.点击获取验证码,"apptjj.点击获取验证码",true) then
	--						else
	--							取短信次数 = 取短信次数 + 1
	--							if 取短信次数 > 25 then
	--								return false
	--							end
	--							delay(2)
	--						end
	--					elseif 提交 then
	--						if d(apptjj.点击登陆,"apptjj.点击登陆",true) then
	--							up(appname(bid.淘集集注册.appbid),'淘集集注册')
	--							success = true
	--							delay(1)
	--						end	
	--					end
	--				elseif success and d(apptjj.要后退,"apptjj.要后退",true) then
						
	--				end
				
			end
			delay(1)
		end
	end
end


while true do
	if  open(za_url) then
		reg()

	end
end
















