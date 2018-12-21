nLog = require('nLog')()
require('xxtsp')
log('xxtsp load')
require('faker')
log('faker load')
require('yumi')
log('yumi load')
require("name")

log(app.front_bid())
--自动打印出来当前app bid
idname = '姓名'
idmun = '18'


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

atexit(
	function() 
		sys.toast('脚本结束了！')
		vpnx()
		sys.msleep(500)
	end
)

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

function getID()
	local url = 'http://tb1.host.apijs.cc/Public/tlbb/?service=Tlbb.getid'
	local res = get(url,times)
	if res ~= nil then
		infos = json.decode(res)['data']
		log(infos)
		idname = infos['idname']
		idmun = infos['idmun']
		return true
	end
end

function up(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = '榕树贷款2'
	flaccount.mail = phone
	flaccount.password = password
	flaccount.phone = phone
	flaccount.phonename = device.name()
	flaccount.lastname = state or "暂未购买"
	flaccount.map = text
	--get.locationMatching='include&locationLevel=c&location=江苏'
	return post(url,flaccount)
end

key_input = {
	{110,  761, 0x010101},
	{320,  765, 0xfefefe},
	{541,  758, 0x000000},
	{117,  870, 0x2b2b2b},
	{319,  854, 0xfefefe},
	{537,  859, 0xffffff},
	{108,  968, 0x000000},
	{321,  967, 0xffffff},
	{535,  961, 0xffffff},
[0]={321, 1081, 0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(key_input[phone_mun][1],key_input[phone_mun][2],0.3)
	end
end

appbid = {
	['健身跟我做'] = 'com.wenhong.fitnessfollowme',
	['safari'] = 'com.apple.mobilesafari',
	['疯牛直播'] = 'com.51qiniu.pay',
	['榕树贷款'] = 'com.shuqu.banyan',
}

IDcardUrl = 'http://tb1.host.apijs.cc/Public/tlbb/?service=Tlbb.getid'
url = 'http://cn.mikecrm.com/XRbdcpg'



rs = {}
rs.url={}
rs.url.loadding={{{79,116,0x007aff},{79,118,0x007aff},{80,118,0xe8e8e9},}, 85, 22, 106, 620, 135}

rs.url.phone={{{494,379,0xffd223},{325,500,0xffffff},{97,228,0x217bff},}, 85, 19, 164, 631, 883}
	rs.url.phonedone={{{582,662,0x007aff},{581,663,0x007aff},}, 85, 551, 638, 626, 682}
rs.url.send={{{532,453,0x4cbaff},{529,454,0xf2f7ff},{527,454,0x62c2ff},}, 85, 427, 423, 585, 498}
rs.url.pwdempty={{{282,571,0xbac7dd},{282,565,0xbac7dd},{282,549,0xbac7dd},}, 85, 232, 514, 568, 614}
rs.url.login={{{325,569,0xffffff},{325,603,0x3b95ff},{317,533,0x3d9aff},}, 85, 233, 510, 407, 646}

rs.url.yz={{{104,715,0x03a9f4},{114,714,0xf6f7f7},{123,716,0x03a8f3},{139,717,0x03a9f4},}, 85, 86, 688, 159, 751}
	rs.url.move={{{83,575,0xf1f1f1},{134,566,0xd7d6d3},{161,598,0xefefef},{114,630,0xd9d7d5},}, 75, 62, 429, 172, 684}
rs.url.ok={{{331,699,0x3a94ff},{321,665,0xffffff},{332,379,0x0d98fe},}, 85, 17, 166, 624, 1025}

function open()
	local timeline = os.time()
	local usedTime = 60*3
	
	local TrueUrl='http://www.rongshu.cn/promotion/m/1803dx5/index.html?c=test9'
	openUrl(TrueUrl)
	delay(3)
	password = myRand(4,rd(6,8))
	
	local 取号 = true
	local 发验证 = false
	local 密码 = false
	local 短信 = false
	local 注册 = false
	local 成功 = false
	local send_Times = 0 
	
	while os.time()-timeline < usedTime do
		if active(appbid.safari,3)then
			if d(rs.url.loadding,"loadding")then
			elseif d(rs.url.phone,"phone")then
				click(289, 618)
				if 取号 and GET_Phone()then
					phoneKey(phone)
					取号 = false
					发验证 = true
					d(rs.url.phonedone,"phonedone",true)
				else
					delay(8)
					return false
				end
			elseif 发验证 then
				if d(rs.url.send,"send",true)then
					send_Times = send_Times + 1
					if send_Times > 10 then
						return false
					end
				elseif d(rs.url.yz,"rs.url.yz",false)then
					delay(2)
					if movet()then
						发验证 = false
						密码 = true
					end
				end
			elseif 密码 then
				if d(rs.url.pwdempty,"pwdempty",true)then
					input(password)
					delay(1)
					d(rs.url.phonedone,"phonedone",true)
					密码 = false
					短信 = true
				end
			elseif 短信 then
				if GET_message(phone)then
					log("输入验证码")
					click(194, 246)
					phoneKey(SMS)
					delay(1)
					短信 = false
					注册 = true
					d(rs.url.phonedone,"phonedone",true)
				end
			else
				if 注册 and d(rs.url.login,"login",true)then
					up('提交注册','网页注册')
					delay(5)
					成功 = true
				elseif 成功 then
					if d(rs.url.ok,'ok',true)then
						up('web注册成功','未在app证')
						delay(rd(5,8))
						return true
					end
				end
			end
		else
			return false
		end
		delay(1)
	end
	log("URL-超时")
end

function movet()
	function getHsv(x,y)
		local colorRGB ={}
		colorRGB.r,colorRGB.g,colorRGB.b = screen.get_color_rgb(x,y)
		return colorRGB.b
	end
	
	if d(rs.url.move,"rs.url.move",false)then
		--log('y--'..y)
		for i=200,520 do
			--log(i..'--'..getHsv(i,y))
			--log(i+1 ..'--'..getHsv(i+1,y))
			jg = (getHsv(i+1,y)-getHsv(i,y))
			--log(jg)
			if jg > 100 then
				--log(i)
				moveTo(120, 718,i+35,718,3,50)
				delay(8)
				return true
			end
		end
		moveTo(120,718,160,718,3,50)
		delay(2)
	else
		moveTo(120,718,160,718,3,50)
		delay(2)
	end
end






rs.app={}
rs.app.loginUI={{{494,542,0x03a9f4},{298,209,0x5c5c5c},{576,101,0x03a9f5},}, 85, 239, 55, 626, 606}
	rs.app.login={{{315,734,0x03a9f4},{300,713,0xffffff},}, 85, 235, 678, 399, 740}
rs.app.info={{{75,227,0xfff8ec},{567,225,0xfff8ec},{23,993,0x333333},}, 85}
rs.app.iwant={{{87,417,0xffbb3d},{410,412,0x3cc3ff},{106,1072,0x03a9f4},{106,1089,0xffffff},}, 85}
rs.app.IDinfo={{{263,72,0x4a4a4a},{263,75,0xffffff},{263,76,0x646464},{59,83,0x02affe},}, 85}
	rs.app.IDinfoTj={{{312,461,0x03a9f4},{308,440,0xa4e0fb},{308,445,0xffffff},}, 85, 245, 407, 379, 472}
rs.app.tiyan = {{{231,922,0x03a9f4},{350,1041,0x03a9f4},{318,1041,0xb3e5fc},{304,1045,0xffffff},}, 85}

rs.app.返回箭头 = {{{63,83,0x02affe},{47,86,0xffffff},{47,92,0x02affe},}, 85}
	rs.app.百度有钱花={{{61,316,0xffffff},{61,292,0x3992e4},{53,322,0x2f84de},{79,339,0x3d8de1},{77,339,0xffffff},}, 85, 16, 159, 185, 1121}
	rs.app.蛋蛋花={{{62,576,0xffffff},{64,591,0xff291e},{62,549,0xfffcec},{90,564,0xff3921},}, 85, 13, 199, 171, 1120}
	rs.app.金牛贷={{{58,649,0xffffff},{66,627,0xff492c},{56,684,0x7699ff},{32,669,0xffae2b},}, 85, 11, 146, 159, 1097}
	rs.app.去申请 = {{{601,242,0x03a9f4},{588,241,0xffffff},{549,239,0x03a9f4},}, 85, 496, 198, 622, 935}
	rs.app.立即申请 = {{{325,1066,0xffffff},{331,1095,0x03a9f4},{329,1041,0x03a9f4},}, 85, 276, 1020, 388, 1109}
rs.app.完成={{{38,79,0x007aff},{38,77,0xf9f9f9},{38,74,0x56a6fd},{604,66,0x007aff},}, 85, 8, 47, 627, 118}
rs.app.完成2={{{39,79,0x007aff},{605,66,0x007aff},}, 85, 4, 37, 634, 120}

rs.app.agree={{{380,880,0x06b1ff},{172,887,0x888888},{514,239,0x03a9f4},}, 85}

--[[  
	for k,v in pairs(rs.app)do
		d(v,k)
	end
	os.exit()
--]]

function beng()
	local timeline = os.time()
	local usedTime = 60*6
	local url = IDcardUrl
	screen.init(0)
	local idcard = true
	local sendID = false
	shengqin = 0
	baidu_,ddh_,jinU_ = true,true,true
	sqkey = false
	
	while os.time()-timeline < usedTime do
		if active(appbid['榕树贷款'],5)then
			if d(rs.app.loginUI,"loginUI")then
				click(249, 331)
				input(phone)
				click(233, 503)
				input(password)
				click(174, 165)
				if d(rs.app.login,'login',true)then
					delay(3)
				end
			elseif d(rs.app.info,"info")then
				suiji = {{407,368,0xffffff},{236,448,0xb2b2b2},{419,438,0x404040},}
				local sjweizi = rd(1,3)
				click(suiji[sjweizi][1],suiji[sjweizi][2])
				click(248,572)
				click(251,705)
				click(259,836)
				click(332,952)
			elseif d(rs.app.iwant,"我要贷款",true,1)then
				--[[
				if sendID then
					
				elseif idcard and d(rs.app.iwant,"我要贷款",true,1)then
					sendID = true
				end
				--]]
			elseif d(rs.app.IDinfo,"IDinfo")then
				if getID()then
					click(283,239)
					input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					input(idname)
					click(436,323)
					input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					input(idmun)
					click(283,239)
					if d(rs.app.IDinfoTj,'IDinfoTj',true)then
						up('ID-'..infos.id,'app认证')
						delay(5)
					end
				end
			else
				if shengqin >= 3 then
					return true
				end
					
				if d(rs.app.tiyan,"rs.app.tiyan",true,1)then
				elseif d(rs.app.agree,"agree",true,1)then
				elseif d(rs.app.返回箭头,"返回箭头")then
					if baidu_ and d(rs.app.百度有钱花,"百度有钱花",true)then
						baidu_ = false
						sqkey = true
					elseif ddh_ and d(rs.app.蛋蛋花,"蛋蛋花",true,1)then
						ddh_ = false
						sqkey = true
					elseif jinU_ and d(rs.app.金牛贷,"金牛贷",true,1)then
						jinU_ = false
						sqkey = true
					else
						if sqkey and d(rs.app.立即申请,"立即申请",true,1)then
							delay(rd(3,6))
							up('ID-'..infos.id,idname)
							shengqin = shengqin + 1
						elseif d(rs.app.立即申请,"立即申请") then
							click(40,80)
						else
							moveTo(300,900,300,400,40,50)
							delay(1)
						end
					end
				elseif d(rs.app.完成,"app.完成",true)or d(rs.app.完成2,"app.完成2",true)then
					sqkey = false
					delay(2)
					click(40,80)
				else
					moveTo(600,300,200,300,40,50)
					delay(1)
				end
			end
		end
		delay(1)
	end
	log("榕树贷款-超时")
end

rs.tj={}
rs.tj.home={{{273,742,0x3b67a0},{104,462,0xda2824},{104,294,0xda2824},},85}

function tj()
	local timeline = os.time()
	local usedTime = 60*2
	openUrl(url)
	delay(3)
	
	while os.time()-timeline < usedTime do
		if active(appbid['safari'],5)then
			if d(rs.tj.home,"home")then
				click(103, 378)
				input(idname)
				d(rs.url.phonedone,"phonedone",true)
				click(120, 544)
				input(phone)
				d(rs.url.phonedone,"phonedone",true)
				if d(rs.tj.home,"home",true,1)then
					return true
				end
			else
				if d(rs.url.phonedone,"phonedone",true)then
				else
					click(588, 86)
					delay(5)
				end
			end
		else
			openUrl(url)
			delay(3)
		end
		delay(1)
	end
	log("提交-超时")
end



--[[]]

YUMI()

while true do
	XXTfakerNewPhone(appbid['safari'])
	XXTfakerNewPhone(appbid['榕树贷款'])
	if true or vpn() then
		if open()then
			beng()
			tj()
			up('ID-'..infos.id,idname)
		end
		vpnx()
	end
end

--]]







































