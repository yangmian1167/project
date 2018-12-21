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
	flaccount.fristname = '榕树贷款'
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
	['榕树贷款'] = 'com.shuqu.banyan',
}

IDcardUrl = 'http://tb1.host.apijs.cc/Public/tlbb/?service=Tlbb.getid'


rs = {}
rs.url={}
rs.url.phone={{{247,286,0xffdc4a},{257,504,0xffdc4a},{366,643,0x0b99d9},{301,944,0xf8f8f8},}, 85, 0, 0, 0, 0}
	rs.url.phonedone={{{582,662,0x007aff},{581,663,0x007aff},}, 85, 551, 638, 626, 682}
rs.url.send={{{444,473,0xffd93c},{449,428,0xfed62e},{465,452,0x383838},}, 85, 408, 425, 581, 486}
rs.url.login={{{281,588,0xffdb45},{263,557,0x383838},{283,535,0xfed62d},}, 85, 163, 530, 476, 599}

rs.url.yz={{{104,715,0x03a9f4},{114,714,0xf6f7f7},{123,716,0x03a8f3},{139,717,0x03a9f4},}, 85, 86, 688, 159, 751}
	rs.url.move={{{83,575,0xf1f1f1},{134,566,0xd7d6d3},{161,598,0xefefef},{114,630,0xd9d7d5},}, 75, 62, 429, 172, 684}
rs.url.ok={{{227,846,0xfed62d},{222,821,0x383838},{100,806,0xffdd4d},}, 85, 50, 765, 254, 905}

function open()
	local timeline = os.time()
	local usedTime = 60*3
	local url = 'https://www.rongshu.cn/promotion/m/c/index.html?c=dk3655'
	openUrl(url)
	delay(5)
	password = myRand(4,rd(6,8))
	
	local 取号 = true
	local 发验证 = false
	local 密码 = false
	local 短信 = false
	local 注册 = false
	local 成功 = false
	local send_Times = 0 
	
	while os.time()-timeline < usedTime do
		if d(rs.url.phone,"phone")then
			click(80, 947)
			if 取号 and GET_Phone()then
				input(phone)
				取号 = false
				发验证 = true
				d(rs.url.phonedone,"phonedone",true)
			else
				d(rs.url.phonedone,"phonedone",true)
			end
		elseif 发验证 then
			if d(rs.url.send,"send",true)then
				send_Times = send_Times + 1
				if send_Times > 3 then
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
			click(93, 548)
			input(password)
			delay(1)
			d(rs.url.phonedone,"phonedone",true)
			密码 = false
			短信 = true
		elseif 短信 then
			if GET_message(phone)then
				log("输入验证码")
				click(220,252)
				input(SMS)
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
					delay(rd(5,8))
					up('web注册成功','未在app证')
					return true
				end
			end
		end
		if not(active(appbid.safari,3))then
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
rs.app.立即申请 = {{{319,971,0xf26e24},{319,951,0xf56d24},{325,946,0xffffff},}, 85, 215, 925, 432, 985}
rs.app.loginUI={{{494,542,0x03a9f4},{298,209,0x5c5c5c},{576,101,0x03a9f5},}, 85, 239, 55, 626, 606}
	rs.app.login={{{315,734,0x03a9f4},{300,713,0xffffff},}, 85, 235, 678, 399, 740}
rs.app.info={{{75,227,0xfff8ec},{567,225,0xfff8ec},{23,993,0x333333},}, 85}
rs.app.iwant={{{185,396,0x373737},{86,415,0xffbc3d},{84,403,0xfffaef},{92,383,0xffc73a},}, 85, 0, 0, 0, 0}
rs.app.IDinfo={{{263,72,0x4a4a4a},{263,75,0xffffff},{263,76,0x646464},{59,83,0x02affe},}, 85}
	rs.app.IDinfoTj={{{312,461,0x03a9f4},{308,440,0xa4e0fb},{308,445,0xffffff},}, 85, 245, 407, 379, 472}
rs.app.tiyan = {{{231,922,0x03a9f4},{350,1041,0x03a9f4},{318,1041,0xb3e5fc},{304,1045,0xffffff},}, 85}

rs.app.返回箭头 = {{{63,83,0x02affe},{47,86,0xffffff},{47,92,0x02affe},}, 85}
	rs.app.去申请 = {{{601,242,0x03a9f4},{588,241,0xffffff},{549,239,0x03a9f4},}, 85, 496, 198, 622, 935}


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
	local oks = false
	screen.init(0)
	
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
			elseif oks and d(rs.app.iwant,"我要贷款",true,1)then			
				delay(2)
				up('ID-'..infos.id,'app认证成功')
				app.close(appbid['榕树贷款'])
				delay(1)
				return true
			elseif d(rs.app.iwant,"我要贷款",true,1)then
			elseif d(rs.app.IDinfo,"IDinfo")then
				if getID()then
					click(283,239)
					input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					log("这里会报错")
					input(idname)
					click(436,323)
					input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					input(idmun)
					click(283,239)
					if d(rs.app.IDinfoTj,'IDinfoTj',true)then
						up('ID-'..infos.id,'app认证')
						delay(5)
						oks = true
					end
				end
			else
				if d(rs.app.tiyan,"rs.app.tiyan",true,1)then
				elseif d(rs.app.立即申请,"立即申请",true,1)then
				elseif d(rs.app.agree,"agree",true,1)then
				elseif d(rs.app.返回箭头,"返回箭头")then
					if d(rs.app.去申请,"去申请",true)then
					elseif d(rs.app.立即申请,"立即申请",true,1)then
						delay(rd(3,6))
						up('ID-'..infos.id,'申请成功')
						return true
					end
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


--url = 'https://itunes.apple.com/cn/app/id1216088977?mt=8&at=1l3vntR&ct=qm'
--openUrl(url)
--os.exit()
YUMI()

while true do
	XXTfakerNewPhone(appbid['safari'])
	
	if false or vpn() then
		if open()then
			XXTfakerNewPhone(appbid['榕树贷款'])
			beng()
		end
		vpnx()
	end
end













