nLog = require('nLog')()
require('xxtsp')
log('xxtsp load')
require('faker')
log('faker load')


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
	--vpnx()
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
		dispName = 'adad01',
		VPNType = "IPsec",
		server = 'yhtip.com',
		authorization = 'adad01',
		password = 'Aa112211',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
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
	['边境之旅'] = 'com.netease.bjzl',
}

bj={}
bj['快速游戏']={{{127,762,0x4892ff},{413,757,0xd41d13},{232,613,0xfc4e4e},},85}
	bj['快速游戏弹窗']={{{532,657,0xfb4f4f},{372,654,0xfb4f4f},{174,687,0xfc4e4e},},85}
bj['接受拒绝']={{{525,963,0x23b260},{249,963,0xcf4231},{589,697,0xffffff},},85}
bj['公告']={{{584,126,0x101415},{275,131,0x675744},{231,76,0xbf9969},},85}
bj['开始游戏']={{{266,936,0xfed988},{321,364,0xa52400},{305,367,0xfccfbb},},85}
bj['人物配置']={{{626,123,0xa13434},{98,542,0x271804},{94,550,0xfbd28f},},85}
	--moveTo(230, 663,321, 285,5)
	--140, 477
	bj.done={{{401,673,0x007aff},{385,666,0x007aff},}, 85, 370, 561, 482, 687}
bj['人物对话']={{{565,214,0x261805},{563,181,0xfdd48f},{618,14,0xf2e5d6},},85}	
	--74, 25
	bj.右滑动={{{438,80,0x0606a1},{540,36,0xf7efe3},},85}
	--	(332, 576,613, 573,10)
	bj.真棒={{{366,70,0x0202a0},{108,66,0x3b2b22},},85}
	--	(169, 832,145, 424,10)
bj.右下勾={{{576,1094,0x291803},{573,1060,0xfcd391},{574,1039,0xac753c},}, 85, 531, 1029, 625, 1119}
bj.设置选项={{{602,1106,0x261804},{560,1063,0xfad291},{44,1082,0x271804},},85}
bj.设置按钮={{{596,995,0x281804},{593,1108,0x271802},{76,1063,0xfcd390},},85}
bj.设置界面选项={{{590,530,0x7f7f7f},{600,450,0xffbbe6},{587,308,0x70ff71},},85}
--	(281, 928)
	dhj = {
		"Q8T98P4V",
		"Y5QYRQ9R",
		"JLQYPW75",
		"5VU45XT4",
		"SE3DY7FK",
		"TSTWRZ2F",
		"7KY7NS8N",
		"Y7PM9A9V",
		}
	

function play()
	local timeLine = os.time()
	local outTimes = 60*6
	while os.time()-timeLine<outTimes do
		if active(appbid['边境之旅'],5) then
			if d(bj.设置界面选项,'设置界面选项',true,1)then
	
				click(281, 928)
				input(dhj[8])
				if not d(bj.done,"bj.done",true)then
					click(401,673)
				end
				click(287,1013)
				delay(2)

				return true
			else
				if d(bj['快速游戏'],'快速游戏',true,1)then
				elseif d(bj['快速游戏弹窗'],'快速游戏弹窗',true,1)then
				elseif d(bj['接受拒绝'],'接受拒绝',true,1)then
				elseif d(bj['公告'],'公告',true,1)then
				elseif d(bj['开始游戏'],'开始游戏',true,1)then
				elseif d(bj['人物配置'],'人物配置')then
					moveTo(230, 663,321, 285,5)
					click(140, 477)
					input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					input(myRand(4,math.random(4,6)))
					if not d(bj.done,"bj.done",true)then
						click(401,673)
					end
					click(574,1003)
				elseif d(bj['设置按钮'],'设置按钮',true,1)then
				elseif d(bj['设置选项'],'设置选项',true,1)then
				elseif d(bj['人物对话'],'人物对话',true,1)then
				else
					if d(bj['右滑动'],'右滑动')then
						moveTo(332, 576,613, 573,10)
					elseif d(bj['真棒'],'真棒')then
						moveTo(600, 576,313, 573,10)
						moveTo(169, 832,145, 424,10)
					elseif d(bj['右下勾'],'右下勾',true,1)then
					else
						if not d(bj.done,"bj.done",true)then
							click(74, 25)
							moveTo(333,590,585,590,10)
							moveTo(600, 576,313, 573,10)
							moveTo(169, 832,145, 424,10)
						end
					end
				end

			end
		end
		delay(1)
	end
	log("购买超时")
end

--[[ ]]

while true do

	if false or XXTfakerNewPhone(appbid['边境之旅'])then
		if true or vpn()then

			play()

		end
	end

end

--]]

bj.wood={}
bj.wood.red={{{123,831,0xe61608},{122,830,0x5c4f27},}, 85, 76, 731, 567, 1007}

function wood()
	local timeLine = os.time()
	local outTimes = 60*6
	while os.time()-timeLine<outTimes do
		if active(appbid['边境之旅'],5) then
			if d(bj.wood.red,"bj.wood.red")then
				moveTo(x,y,131, 471)
			end
		end
		delay(5)
	end
end

wood()

























