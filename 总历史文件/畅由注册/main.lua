nLog = require('nLog')()
require('xxtsp')
log('xxtsp load')
require('faker')
log('faker load')
require('alz')
log('alz load')
require("name")

log(app.front_bid())
--自动打印出来当前app bid



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

atexit(function() 
    sys.toast('脚本结束了！')
	vpnx()
    sys.msleep(500)
end)

--vpnTable 示例
vpnlist ={
		dispName = 'adad01',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'adad01',
		password = 'Aa112211',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}
	--vpnTable 示例
vpnlist ={
		dispName = 'nj',
		VPNType = "IPsec",
		server = 'ad.chengqiyi.com',
		authorization = 'nj1',
		password = 'nj1',           -- 密码
		secret = 'apple',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}
--[[
creat_vpn(vpnlist)
os.exit()
--vpn()
--]]

function rd(x,y)
	return math.random(x,y)
end

function getName()
	local url = 'http://onlyonelife.online/Public/aso/?service=Aso.get_name'
	local res = get(url,times)
	return json.decode(res)['data']
end

function upreg(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = '畅由刷卡'
	flaccount.mail = phone
	flaccount.password = password
	flaccount.phone = phone
	flaccount.phonename = device.name()
	flaccount.lastname = state or "暂未绑定"
	flaccount.map = text
	--get.locationMatching='include&locationLevel=c&location=江苏'
	return post(url,flaccount)
end
function upbd(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = '畅由刷卡'
	flaccount.mail = phone
	flaccount.password = password
	flaccount.phone = phone
	flaccount.phonename = device.name()
	flaccount.lastname = state or "暂未绑定"
	flaccount.map = text
	--get.locationMatching='include&locationLevel=c&location=江苏'
	return post(url,flaccount)
end


appbid = {
	['健身跟我做'] = 'com.wenhong.fitnessfollowme',
	['safari'] = 'com.apple.mobilesafari',
	['疯牛直播'] = 'com.51qiniu.pay',
	['qq浏览器'] = 'com.tencent.mttlite',
}



cy={}
cy.reg={}
	cy.reg.skip={{{580,47,0x6e6e6e},{264,950,0x00c100},{359,952,0x00b2fb},},85}
	cy.reg.skip_知道了={{{317,850,0x3998ff},{280,485,0xf35b5b},{378,456,0xe74d4e},}, 85, 63, 250, 579, 894}
	
cy.reg.address={{{77,280,0x777777},{64,265,0xfbfcfe},{64,255,0x858585},{496,272,0x4c9afa},}, 85, 11, 79, 631, 327}
cy.reg.前往={{{578,1111,0x007aff},{576,1092,0x3d9aff},{577,1092,0xfeffff},}, 85, 543, 1057, 624, 1125}

cy.reg.loading={{{98,141,0x3192f2},{96,141,0x3293f2},{100,141,0xf5f5f5},}, 85, 4, 102, 635, 171}
cy.reg.home={{{0,0,0xfce9a5},{-212,12,0x3cabfa},{-360,-11,0x2c0801},{-456,9,0x490e00},}, 85, 24, 428, 625, 641}
	cy.reg.Phone_mun={{{190,744,0x8c8072},{188,744,0xffffff},{285,635,0xff6536},}, 85, 39, 532, 486, 800}
	cy.reg.homeSend={{{0,0,0xff9546},{0,-40,0xff9648},{588,-40,0xfff6ef},{620,-40,0xff9546},}, 85, 3, 199, 638, 301}
		cy.reg.homeSendA={{{0,0,0xff8422},{2,-3,0xffffff},{2,-5,0xff8422},}, 85, 409, 426, 548, 478}
		cy.reg.done={{{0,0,0x007aff},{-1,-12,0xf0f1f1},{-1,-20,0x007aff},}, 85, 557, 589, 630, 749}
	cy.reg.homeDL={{{0,0,0xf2a642},{-12,-29,0xffffff},{11,-23,0xf7b451},}, 85, 41, 500, 610, 618}
cy.reg.bengD={{{0,0,0xffffff},{-194,3,0xf7b451},{30,131,0xffffff},{31,134,0xf5b04d},}, 85, 19, 624, 622, 880}
cy.reg.中国移动={{{506,584,0xe2c784},{79,580,0x8ec500},{80,698,0xb71a3f},{72,572,0x0083d3},}, 85, 0, 0, 0, 0}
cy.reg.注册成功={{{237,863,0x0ca0f0},{372,230,0xf5a301},{136,231,0x8ec714},{130,220,0x0088d3},}, 85, 0, 0, 0, 0}


--[[ 
for k,v in pairs(cy.reg)do
	d(v,k)
end
os.exit()
--]]

function open()
	local timeLine = os.time()
	local outTimes = 60*4
	kfy.id = '11904'
	url = 'https://m.changyoyo.com/event/2018/0423/index_reg.html?action1=PhlyLERJeJnJIWhFQ7xzJT6QySxv/Pmx/kfkvh3usO1MmSKbgxPcXFF8hpSUBQKYSercc0axTvIkWaZIzUxmwzMLicapzAIVBAW/gyFVPA33AQ+aJDc1CE92S5vXkIwLwxmv1LOY2wgi7/lEuShE2Dzh7fl1WoBZsBwvIeUJDMc=&action2=152****5271&channel_source=02003973&from=singlemessage'
	password = 11904
	
	local GET_ = true
	local SEND_ = false
	local SMS_ = false
	local DL_ = false
	
	while os.time() - timeLine < outTimes do
		if active(appbid['qq浏览器'],3)then
			if d(cy.reg.address,"cy.reg.address",true,1)then
				input(url)
				d(cy.reg.前往,"cy.reg.前往",true,1)
			elseif d(cy.reg.loading,"loading")then
				delay(2)
			elseif d(cy.reg.home,"home") then
				if GET_ and GET_Phone()then
					click(370, 827)
					input(phone)
					phone1 = phone
					d(cy.reg.done,"done",true)
					GET_ = false
					SEND_ = true
				end
			elseif SEND_ and d(cy.reg.homeSend,"homeSend")then
				if SEND_ and d(cy.reg.homeSendA,"homeSendA",true)then
					SEND_ = false
					SMS_ = true
				end
			elseif SMS_ then
				if GET_message(phone) then
					click(107, 447)
					input(sms)
					d(cy.reg.done,"done",true)
					SMS_ = false
					DL_ = true
				else
					delay(3)
				end
			elseif d(cy.reg.bengD,"bengD",true)then
			elseif d(cy.reg.中国移动,"中国移动",true)then
			elseif d(cy.reg.注册成功,"注册成功")then
				return true
			elseif DL_ then
				if d(cy.reg.homeDL,"homeDL",true)then
					upreg("注册成功","暂未绑定")
				end
			else
				log("other")
				if d(cy.reg.skip,"cy.reg.skip",true,1)then
				elseif d(cy.reg.skip_知道了,"skip_知道了",true)then
				elseif d(cy.reg.前往,"cy.reg.前往",true,1)then
				end
			end
		end
		delay(1)
	end
	log("注册超时")
end
	
	
key_input = {
	{107,  730, 0x000000},
	{319,  729, 0xf9f9f9},
	{532,  725, 0x000000},
	{112,  821, 0x000000},
	{314,  817, 0x000000},
	{527,  821, 0x060606},
	{108,  907, 0x2a2a2a},
	{322,  911, 0x000000},
	{537,  910, 0x000000},
[0]={320, 1005, 0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(key_input[phone_mun][1],key_input[phone_mun][2],0.3)
	end
end

cy.bang={}
cy.bang.注册界面={{{369,233,0xf39f00},{134,231,0x8cc522},{133,249,0x0186ce},{69,437,0x0ca0f0},}, 85, 11, 159, 604, 666}
	cy.bang.获取短信={{{483,616,0xffffff},{486,620,0x0ca0f0},{486,594,0x0ca0f0},}, 85, 403, 588, 568, 638}
	cy.bang.确认提交={{{320,880,0x0ca0f0},{338,861,0xf4fbfe},{338,852,0x1fa7f1},}, 85, 217, 788, 411, 919}
	
cy.bang.兑换弹窗={{{262,675,0xd3b669},{93,328,0xffffff},{178,185,0x404040},}, 85, 0, 0, 0, 0}

cy.bang.tips_comfire = {{{315,743,0x007aff},{324,695,0xc9c9c9},{326,444,0x000000},}, 85, 57, 415, 583, 778}
cy.bang.tips_success = {{{315,744,0x0f82ff},{326,438,0x000000},{323,438,0xffffff},}, 85, 65, 414, 581, 772}
	
function beng()
	local timeLine = os.time()
	local outTimes = 60*4

	kfy.id = '12023'
	server_pwd = '609877'
	
	local GET_ = true
	local SEND_ = false
	local SMS_ = false
	local DL_ = false
	
	while os.time()-timeLine < outTimes do
		if active(appbid['qq浏览器'],3)then
			if d(cy.bang.注册界面,"注册界面")then
				if GET_ and GET_Phone()then
					click( 232, 419)
					phoneKey(phone)
					phone2 = phone
					click( 58, 207)
					GET_ = false
					SEND_ = true
				elseif SEND_ then
					click( 136, 516)
					mimakey(server_pwd)
					--phoneKey(server_pwd)
					if d(cy.bang.获取短信,"获取短信",true)then
						SEND_ = false
						SMS_ = true
					end
				elseif SMS_ then
					if GET_message(phone)then
						click( 133, 603)
						phoneKey(sms)
						click( 58, 207)
						SMS_ = false
						DL_ = true
					end
				elseif DL_ then
					if d(cy.bang.确认提交,"确认提交",true)then
						upbd("绑定成功","暂未兑换")
						delay(5)
					end
				else
					log("other")
				end
			else
				if d(cy.bang.tips_comfire,"tips_comfire",true)then
					delay(2)				
				elseif d(cy.bang.tips_success,"tips_success",true)then
					delay(2)
				end
			end
		else
			return 
		end
		delay(1)
	end
	log("绑定超时")
end

--XXTfakerNewPhone(appbid['qq浏览器'])
--active(appbid['qq浏览器'],3)
--vpn()
--open()
--beng()

function mimakey(mun)
	oldkey =	{
		[1]={107,  730, 0x000000},
		[2]={319,  729, 0xf9f9f9},
		[3]={532,  725, 0x000000},
		[4]={112,  821, 0x000000},
		[5]={314,  817, 0x000000},
		[6]={527,  821, 0x060606},
		[7]={108,  907, 0x2a2a2a},
		[8]={322,  911, 0x000000},
		[9]={537,  910, 0x000000},
		[0]={320, 1005, 0xffffff},
	}
	
	local orcArr = {
		[1]={ 37, 682, 178, 751 },
		[2]={ 242, 689, 387, 749 },
		[3]={ 470, 687, 593, 750 },
		[4]={ 64, 783, 152, 839 },
		[5]={ 269, 781, 372, 843 },
		[6]={ 482, 776, 582, 842 },
		[7]={ 42, 869, 173, 932 },
		[8]={ 264, 871, 374, 933  },
		[9]={ 492, 873, 580, 935 },
		[10]={ 280, 964, 362, 1025 },
	}
	
	newKey = {}
	for k,v in ipairs(orcArr)do
		local txt = screen.ocr_text(v[1],v[2],v[3],v[4],{
		  lang = "eng",
		  white_list = "1234567890",      -- 自定义使用白名单限制仅识别为数字
		}) -- 使用色偏二值化识别
		--log("识别结果："..txt:atrim())
		jiegou = tonumber(txt:atrim()) or 0
		log(jiegou)
		
		if k == 10 then
			newKey[jiegou] = oldkey[0]
		else
			newKey[jiegou] = oldkey[k]
		end
		--delay(0.1)
	end
	function mimaInput(phone)
		for i =1,string.len(phone) do
			local phone_mun = tonumber(string.sub(phone,i,i))
			click(newKey[phone_mun][1],newKey[phone_mun][2],0.5)
		end
	end
	mimaInput(mun)
end

beng()
--[[ 
vpnx()
while true do
	if false or XXTfakerNewPhone(appbid['qq浏览器'])then

	end
end

--]]





























