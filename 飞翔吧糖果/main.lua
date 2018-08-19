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
	['飞翔吧糖果'] = 'com.sustain.soar.candy.sugar.fly'
}





tg={}
tg.home={{{637,861,0x2ec3e3},{682,394,0xee2162},{104,857,0xf192be},},85}
tg['ad>']={{{391,1153,0x2d323a},{339,1152,0xffffff},{369,1128,0x2d323a},{372,1097,0xffffff},}, 85, 279, 1072, 463, 1235}
tg['game']={{{392,171,0xed6110},{393,158,0xeb8513},}, 85, 317, 90, 440, 233}
tg.不用了={{{374,1122,0xffffff},{370,1122,0x222222},{343,1110,0xffffff},{407,1112,0x222222},}, 85, 297, 1093, 449, 1154}

function fly()
	local timeline = os.time()
	local outTime = 60*rd(3,8)
	local other = 0
	local adTime = os.time()
	
	while os.time()-timeline < outTime do
		if active(appbid.飞翔吧糖果,5)then
			if d(tg.home,"home")then
				other = 0
				if os.time()-adTime > 60 then
					click(607, 1285)
					adTime = os.time()
				end
				delay(rd(2,5))
				click(377, 722)
			elseif d(tg['game'],'game',false)then
				other = 0
				click(249, 416,rd(1,3)/15)
			else
				other = other + 1
				if os.time()-adTime > 60*3 then
					if d(tg['ad>'],"ad>",true)then
						delay(rd(5,10))
					end
					adTime = os.time()
				end
				
				if other > rd(10,20) then
					if other%2 == 0 then
						click(712, 36)
					else
						click(27, 26)
					end
					d(tg.不用了,"不用了",true)
				end
			end
		end
		delay(0.2)
	end
end

while true do
	workTime = tonumber(os.date("%H"))
	workDo = false
	
	if workTime > rd(5,7) or workTime <= 1  then
		if XXTfakerNewPhone(appbid['飞翔吧糖果'])then
			if vpn()then
				fly()
			end
			vpnx()
		end
	else
		dialog('noTime',20)
		delay(5)
	end
end





















