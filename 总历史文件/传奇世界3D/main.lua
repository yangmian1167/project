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

appbid = {
	['健身跟我做'] = 'com.wenhong.fitnessfollowme',
	['safari'] = 'com.apple.mobilesafari',
	['疯牛直播'] = 'com.51qiniu.pay',
	['qq浏览器'] = 'com.tencent.mttlite',
	['飞翔吧糖果'] = 'com.sustain.soar.candy.sugar.fly',
	['传奇世界3d'] = 'com.tencent.wol3d',
}





cq3d={}
cq3d.main={}
------------cq3d.main.gameok={{{36,130,0xd6bb84},{37,130,0xe5cf96},},85}
cq3d.main.gameok={{{183,47,0xffffed},{165,53,0xf16923},},85}
	cq3d.main.装备={{{834,422,0xb44f40},{820,425,0xedd59f},}, 85, 798, 410, 874, 445}
	cq3d.main.红包={{{852,229,0x18150f},{847,229,0xe7cf8f},{853,201,0xcb0024},}, 85, 818, 183, 893, 285}
	cq3d.main.正在战斗={{{1098,316,0x4b382d},{1090,316,0xfff09a},{1092,303,0xfff09a},},85}



cq3d.tips={}
cq3d.tips.skip={{{1118,28,0xfdee9f},{1123,28,0x532f07},{1104,28,0x5a3318},}, 85, 1084, 5, 1135, 62}
cq3d.tips.公告确认={{{530,500,0xa94a3e},{579,88,0xfcf2b9},{582,91,0xcb5542},},85}
cq3d.tips.广告X={{{1038,133,0xfff0a9},{1028,123,0xfef1a9},{1038,128,0xad4410},}, 85, 1023, 116, 1055, 152}
cq3d.tips.红包X={{{766,93,0xffefa9},{480,94,0x9e241f},{652,96,0xfbd389},},85}

function tips()
	if d(cq3d.tips.skip,"tips.skip",true)then
	elseif d(cq3d.tips.红包X,"红包X",true,1)then
	elseif d(cq3d.tips.广告X,"广告X",true,1)then
	elseif d(cq3d.tips.公告确认,"公告确认",true,1)then
		
	else
		return true
	end
end

cq3d.event={}
cq3d.event.马={{{786,572,0xad4b3e},{351,573,0xaa4a3e},},85}
cq3d.event.选区进入游戏={{{511,521,0xb24f3e},{1104,92,0xe8e1a3},{1105,155,0xe5d68c},{1103,208,0xe4dc9d},},85}
cq3d.event.角色选择进入游戏删除={{{975,589,0xb04e3e},{168,581,0xf3f3da},{21,40,0xf9e6b1},},85}

function event()
	if d(cq3d.event.马,"马",true,rd(1,2))then
	elseif d(cq3d.event.角色选择进入游戏删除,"角色选择进入游戏删除",true,1)then
	elseif d(cq3d.event.选区进入游戏,"选区进入游戏",true,1)then
	
	else
		return true
	end
end


function play()
	local timeline = os.time()
	local outTime = 60*rd(30,40)
	local other = 0
	screen.init(1)
	
	while os.time()-timeline < outTime do
		if active(appbid.传奇世界3d,5)then
			if d(cq3d.main.gameok,"gameok")then
				if d(cq3d.main.装备,"装备",true)then
				elseif d(cq3d.main.红包,"红包",true)then
					
				else
					if d(cq3d.main.正在战斗,"正在战斗")then
						d(cq3d.main.装备,"装备",true)
					else
						click(108, 181)
						delay(3)
					end
				end
			else	
				
				if tips()then
					event()
				end
				
			end
		end
		delay(1)
	end
end


play()



















