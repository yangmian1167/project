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

function up(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = '疯牛直播'
	flaccount.mail = phone
	flaccount.password = password
	flaccount.phone = phone
	flaccount.phonename = device.name()
	flaccount.lastname = state or "暂未购买"
	flaccount.map = text
	--get.locationMatching='include&locationLevel=c&location=江苏'
	return post(url,flaccount)
end


appbid = {
	['健身跟我做'] = 'com.wenhong.fitnessfollowme',
	['safari'] = 'com.apple.mobilesafari',
	['疯牛直播'] = 'com.51qiniu.pay',
}

fl={}
fl.首页={{{574,1068,0xcdcdcd},{63,1076,0xff5038},{70,99,0xfe4501},}, 85}
fl.我的={{{578,1086,0xff5038},{524,953,0xff5038},{323,156,0x3a3a3a},}, 85}
fl['登录/注册']={{{376,80,0x000000},{381,82,0x000000},{382,82,0x000000},}, 85}
	fl.注册灰={{{493,171,0xacacac},{493,216,0xdadada},}, 85}
	fl.注册激活={{{493,171,0xfe4502},{463,216,0xfe4502},}, 85}
		fl.获取={{{561,282,0xfe6129},{564,261,0xfe6c37},}, 85, 457, 252, 606, 293}
		fl.注册按钮={{{313,823,0xffffff},{315,816,0xfe4502},}, 85, 270, 791, 373, 838}
fl.注册完成 = {{{32,58,0xfcfcfc},{222,123,0xff4f2e},{235,1092,0x2c2c2c},}, 85}
fl['注册成功-我的界面'] = {{{78,507,0x4285f4},{531,142,0xff5038},{578,1088,0xff5038},}, 85}
fl['个人资料界面']={{{532,727,0xb0aaa5},{354,740,0x373737},{447,733,0xffffff},}, 85}

function reg()
	local timeLine = os.time()
	local outTimes = 60*4
	
	local 取号 = true
	local 获取 = false
		local 获取一次 = true
	local 短信 = false
	local 其它 = false
	local 注册 = false
	local 短信次数 = 0
	sumbimt = false
	get_sms_times = 0
	
	gift_code = {
			{1219608,"梁艺献"   },
			{1222605,"徐文"     },
			{1222744,"陈伟豪"   },
			{1219864,"邵颂富"   },
			{1225893,"徐伟"     },
			{1053064,"彭亦涵"   },
		}
	password = myRand(4,math.random(6,12))
	
	while os.time() - timeLine < outTimes do
		if active(appbid['疯牛直播'],5) then
			if d(fl.首页,'首页',true,1)then
			elseif d(fl['个人资料界面'],'个人资料界面')then
				local orcmun = screen.ocr_text(437, 320, 615, 378)
				flid = orcmun:atrim()
				click(40,40)
				up(flid)
				return true
			elseif d(fl.我的,'我的',true,3)then
			elseif d(fl['登录/注册'],'登录/注册')then
				if d(fl.注册灰,'注册灰',true,1)then
				elseif d(fl.注册激活,'注册激活')then
					if 取号 then
						if GET_Phone() then
							click(214, 271)
							input(phone)
							取号 = false
							获取 = true
						end
					elseif 获取 then
						if 获取一次 and d(fl.获取,"fl.获取",true)then
							获取一次 = false
						else
							其它 = true
							获取 = false
						end
					elseif 其它 then
						click(209, 445)
						input(random_name()..myRand(4,5))
						click(214, 539)
						input(password)
						click(211, 625)
						input(gift_code[rd(1,#gift_code)][1])
						其它 = false
						短信 = true
					elseif 短信 then
						if GET_message(phone) then
							click(213, 360)
							input(sms)
							click(40,678) --完成
							短信 = false
							注册 = true
						else
							短信次数 = 短信次数 + 1
							if 短信次数 > 40 then
								return false
							end
							delay(3)
						end
					elseif 注册 then
						if d(fl.注册按钮,"注册按钮",true)then
							--screen.image():save_to_album()
							up('提交注册')
							delay(6)
							sumbimt = true
						end
					end
				end
			elseif d(fl['注册成功-我的界面'],"注册成功-我的界面",true,1)then
			elseif d(fl.注册完成,'注册完成',true,1)then
			else
				moveTo(500,300,100,300,50)
				delay(1)
			end
		end
		delay(1)
	end
	log("注册超时")
	if sumbimt then
		up('注册超时')
	end
end
	

	
	fl.登录按钮={{{313,509,0xffffff},{315,481,0xfe4502},}, 85, 273, 468, 362, 528}
fl.高校挑战赛={{{488,66,0xff5038},{226,499,0xf5a139},{320,1073,0xff5038},}, 85}
fl.模拟交易={{{386,76,0xffffff},{368,74,0x363636},{366,80,0x000000},}, 85}
	fl.买入={{{67,536,0xf64040},{67,532,0xffffff},{69,526,0xf74141},}, 85, 37, 504, 109, 571}
fl.交易中心={{{310,79,0x393939},{310,81,0x686868},{313,81,0xededed},{314,81,0xffffff},}, 85}
	fl['交易中心-代码']={{{299,302,0xe5e5e5},{299,289,0xcecece},{311,285,0xc6c6c6},}, 85, 287, 273, 335, 320}
	fl['交易中心-买入价']={{{238,417,0xdfdfe2},{239,414,0xffffff},{238,408,0xdfdfe2},{235,397,0xd3d3d8},}, 85, 228, 387, 248, 436}
	fl.立即买入={{{171,688,0xfffbfb},{194,666,0xff0000},}, 85, 138, 659, 273, 707}
	fl.搜索界面={{{316,80,0x3d3d3d},{314,81,0x181818},{314,83,0x898989},{314,86,0xa1a1a1},}, 85}
		fl.出现股票={{{113,242,0x595959},{104,243,0xffffff},{89,235,0x3c3c3c},}, 85, 17, 216, 201, 274}
fl.模拟买入委托={{{452,746,0x4696e2},{311,741,0xffffff},{162,741,0x4c9ae3},}, 85, 121, 703, 510, 777}
fl.我的界面={{{319,1076,0xcdcdcd},{577,1071,0xff5038},{531,941,0xff5038},}, 85}
fl.基础信息={{{271,86,0x373737},{271,83,0xffffff},{271,81,0x313131},{276,81,0xffffff},}, 85}
	fl['基础信息-选择学校']={{{328,177,0xa9a9a9},{329,192,0xb6b6b6},{342,170,0xa9a9a9},{341,176,0xffffff},}, 85, 319, 152, 363, 206}
	fl['基础信息-立即报名']={{{271,560,0xffffff},{272,549,0xd9a668},}, 85, 239, 524, 397, 579}

--弹窗部分
fl.立即报名={{{441,667,0x007aff},{312,662,0xf8f8f8},{194,668,0x007aff},}, 85, 102, 442, 498, 693}
	fl['弹窗-我知道了']={{{514,925,0xf1f1f1},{354,1071,0xffffff},{321,1079,0x33100b},},85}
	fl['弹窗-我晓得啦']={{{493,554,0xbbbbbb},{514,552,0x333333},{517,549,0x333333},}, 85}
	fl['弹窗-领取红包']={{{214,668,0x572708},{319,811,0xffffff},}, 85}

	
function buy()
	--[[
	phone = '18780021381'
	password = 'YT5492696807'
	--]]
	local 股票代码 = true
	local 立即买入 = false
	填学校 = true
	local 购买 = false

	local timeLine = os.time()
	closedTime = os.time()
	local outTimes = 60*4.5*5
	while os.time()-timeLine<outTimes do
		--[[
		if os.time()-closedTime > 4.5*60 then
			closeX(appbid['疯牛直播'])
			closedTime = os.time()
		end
		--]]
		looking()
		if active(appbid['疯牛直播'],5) then
			if 购买 then
				return true
			end
			
			if d(fl.首页,"fl.首页")then
				click(323, 1077)
			elseif d(fl.基础信息,"fl.基础信息")then
				if d(fl['基础信息-选择学校'],'基础信息-选择学校',true)then
					for i = 1,11 do
						click(166, 1003)
					end
					for i = 1,13 do
						click(484, 1001, 0.8)
					end
					click(553,  667)	--完成
					click(218, 279)
					input("\b\b\b\b\b\b")
					input(random_name())
				end
				if d(fl['基础信息-立即报名'],"基础信息-立即报名",true)then
					delay(3)
				end
			elseif d(fl['个人资料界面'],'个人资料界面')then
				click(40,40)
			elseif d(fl.我的界面,"我的界面",true,1)then
			elseif d(fl.高校挑战赛,"高校挑战赛",true,2)then
			elseif d(fl.模拟交易,"模拟交易")then
				if d(fl.买入,"买入",true)then
	
				end
			elseif d(fl.交易中心,"交易中心")then
				if d(fl['交易中心-代码'],'交易中心-代码',true)then
					click(192, 294)
					股票代码 = false
					立即买入 = true
				elseif d(fl['交易中心-买入价'],'交易中心-买入价')then
					click(204, 295)
				elseif 立即买入 then
					click(335, 605)--1/4价格
					d(fl.立即买入,"立即买入",true)
				end
			elseif d(fl.搜索界面,"搜索界面")then
				click(58, 166)
				click(593, 164)
				input('600600')
				if not(d(fl.出现股票,"fl.出现股票",true))then
					click(34, 84)
					click(34, 84)
				end
				delay(2)
			elseif d(fl.模拟买入委托,"模拟买入委托",true)then
				up(flid,"购买成功")
				delay(3)
				购买 = true
			else
				if d(fl['登录/注册'],'登录/注册') then
					click(149, 274)
					input(phone)
					click(154, 358)
					input(password)
					if d(fl.登录按钮,"登录按钮",true)then
						delay(3)
					end
				elseif d(fl.立即报名,"立即报名",true)then
				elseif d(fl['弹窗-我知道了'],"弹窗-我知道了",true,1)then
				elseif d(fl['弹窗-我晓得啦'],'弹窗-我晓得啦',true,1)then
				elseif d(fl['弹窗-领取红包'],"弹窗-领取红包",true,2)then
				
				end
			end
		end
		delay(1)
	end
	log("购买超时")
end

ONEcolor={}
function looking()
	screenTime = screenTime or os.time()
	
	local oldcolorWZ = {
		{126,  290, 0x1aa5f7},
		{449,  286, 0x1e1e1f},
		{471,  731, 0xbba7a3},
		{170,  724, 0xb9b7b9},
		{405, 1036, 0xffffff},
	}
	
	frist = frist or 0
	if frist == 0 then
		screen.keep()
		for i,v in ipairs(oldcolorWZ)do
			ONEcolor[i]=screen.get_color(v[1],v[2])
		end
		screen.unkeep()
		frist = 1
	end
	
	--log(ONEcolor)
	
	sameColor = 0
	screen.keep()
	for i,v in ipairs(oldcolorWZ)do
		local colordian = screen.get_color(v[1],v[2])
		if colordian == ONEcolor[i] then
			log("颜色相同")
			sameColor = sameColor + 1
		else
			log("颜色不同")
			ONEcolor[i] = colordian
		end
	end
	screen.unkeep()
	
	if sameColor >= 5 then
		log("卡屏了")
		if os.time() - screenTime > 60*1 then
			closeX(app.front_bid())
			screenTime = os.time()
		end
	else
		log("屏幕有变化")
		screenTime = os.time()
	end
	
	sys.msleep(1000)
end





--[[ ]]
vpnx()
while true do
	work_time_h = tonumber(os.date("%H"))
	if work_time_h < 15 or work_time_h >= 18 then
	
		if false or XXTfakerNewPhone(appbid['疯牛直播'])then
			if false or vpn()then
				if reg()then
					buy()
				end
				vpnx()
			end
		end
		
	else
		sys.alert("is no time" , 60 )
	end
end

--]]





























