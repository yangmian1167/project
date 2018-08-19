nLog = require('nLog')()
require('faker')
require('xxtsp')
require("alz")
require("name")

--if not(xxtinstall())then
--	log("伪装失效")
--	os.exit()
--else
--	XXTFaker = require("XXTFaker")()
--end

--function atexit(callback) -- 参数为一个函数，使用 atexit(一个函数) 注册一个函数在脚本结束时执行，建议不要耗时太长
--	____atexit_guard____ = ____atexit_guard____ or {}
--	if type(____atexit_guard____) == 'table' then
--		if not getmetatable(____atexit_guard____) then
--			setmetatable(____atexit_guard____, {
--					__gc = function(self)
--						if type(self.callback) == 'function' then
--							pcall(self.callback)
--						end
--					end
--				})
--		end
--		____atexit_guard____.callback = callback
--	else
--		error('别用 `____atexit_guard____` 命名你的变量。')
--	end
--end

--atexit(function() 
--		sys.toast('脚本结束了！')
----		vpnx()
--		local appbids = app.front_bid()
--		if appbids ~= "com.apple.springboard" then
----			app.quit(appbids)
--			--closeX(appbids)
--		end
--		sys.msleep(500)
--	end)

--bid={}
--bid.小黑鱼 = 'com.xhy.blackfish.app'
--bid.携程旅行 = 'ctrip.com'
--bid.抖音短视频 = 'com.ss.iphone.ugc.Aweme'



--screen.init(0)
--var = {}
--var.lun = 0

----全局变量

--function up(name,other)
--	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
--	local idfalist ={}
--	idfalist.phonename = phonename or device.name()
--	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
--	idfalist.phoneos = phoneos or sys.version()
--	idfalist.name = name
--	idfalist.idfa = idfa or phone
--	idfalist.ip = '192.168.1.1'
--	idfalist.ip = get_ip() or '192.168.1.1'
--	idfalist.account = account
--	idfalist.password = password
--	idfalist.phone = phone
--	idfalist.other = other
--	return post(url,idfalist)
--end


--function rd(n,k)
--	return math.random(n,k)
--end

--function appname(bid)
--	return app.localized_name(bid) or '未安装'
--end








--page={}
--page.ios9允许={{{441, 688, 0x007aff},{188, 693, 0x007aff},}, 85, 71, 424, 556, 729}
--page.app主界面={{{547, 1068, 0x19a0f0},{560, 1079, 0xf9f9f9},{575, 1066, 0x19a0f0},}, 85}
--	page.登录or注册={{{110, 97, 0xff9a14},{126, 98, 0xffd194},{132, 98, 0xfff9f1},}, 85, 42, 57, 317, 302}
--page.右上角注册按钮={{{604,  83, 0x099fde},{383, 742, 0xff9a14},{ 40,  83, 0x099fde},}, 85}

--page.done={{{604, 659, 0x007aff},{602, 652, 0x007aff},}, 85, 549, 569, 639, 740}
--page.同意并继续={{{574, 1095, 0xff9913},{274, 1102, 0xffffff},{611,   87, 0xffffff},}, 85}
--page.暂不认证={{{367, 889, 0xffffff},{370, 886, 0x999999},{451, 797, 0xff9a14},{203, 798, 0xff9a14},{295, 795, 0xffffff},}, 85, 100, 736, 426, 924}

--page.注册13={{{338, 94, 0x333333},{339, 94, 0xafafaf},{340, 94, 0xffffff},}, 85}
--	page.注册13_下一步={{{336, 706, 0xff9a14},{331, 706, 0xffffff},{327, 697, 0xffffff},}, 85, 142, 668, 490, 738}
--page.注册23={{{342, 94, 0x333333},{342, 92, 0xffffff},{349, 93, 0x333333},}, 85}
--	page.注册23_下一步={{{235, 649, 0xffffff},{229, 631, 0xff9a14},{237, 664, 0xff9a14},}, 85, 165, 614, 476, 689}
--page.注册33={{{334, 84, 0x3b3b3b},{330, 84, 0xffffff},{328, 91, 0x333333},{354, 83, 0x333333},}, 85}
--	page.注册33_完成={{{310, 695, 0xffffff},{312, 698, 0xff9a14},{313, 688, 0xff9a14},}, 85, 253, 657, 385, 732}

--------------------------------------------------下为抖音参数
--page.滑动查看更多={{{427, 972, 0xb9babd},{425, 965, 0xb9babd},{184, 883, 0xffffff},}, 85}
--page.继续播放={{{461, 805, 0x292b37},{426, 807, 0x2c2e3a},{223, 805, 0x6a6b77},}, 85}
--page.继续播放1={{{474, 721, 0x2a2c38},{425, 723, 0x292b37},{191, 718, 0x6a6b77},}, 85}
--page.点加号={{{340, 1079, 0xffffff},{360, 1074, 0xfe2c55},{590,  382, 0xff2c55},}, 85}
--page.获取验证码={{{447, 423, 0xffffff},{568,  74, 0xf4f2fe},{ 34,  64, 0xffffff},}, 85}
--page.提交注册={{{315, 730, 0xa231ef},{569,  75, 0xf4f2fe},{ 46,  62, 0xffffff},}, 85}
--function reg()
--	local TimeLine = os.time()
--	local OutTime = 60*3

--	local 取号 = true
--	local 验证码 = false
--	local 短信 = false
--	local 提交 = false
--	local 后退 = false
--	password = myRand(4,rd(8,10))

--	local 取短信次数 = 0

--	while os.time()-TimeLine < OutTime do
--		if active(bid.抖音短视频,3)then
--			if d(page.滑动查看更多,"page.滑动查看更多")then
--					moveTo(313, 243,313, 243,50,30)	
--			elseif d(page.继续播放,"page.继续播放",true,1)then
--			elseif d(page.继续播放1,"page.继续播放1",true,1)then
--			elseif 提交 then
--					if d(page.提交注册,"page.提交注册",true)then
--						up(appname(bid.抖音短视频),"提交注册")
--						delay(2)
--						提交 = false
--						return true
--					end
--			elseif 短信 then
--					if GET_message(phone)then
--						click(75, 436)
--						input(sms)
--						click(308, 542)
--						短信 = false
--						提交 = true
--					end	
--			elseif d(page.点加号,"page.点加号",true,1)then
--				if 取号 then
--					if GET_Phone() then
--						click(181, 322)
--						input(phone)
						
--						取号 = false
--						验证码 = true
--					end
--				end	
--			elseif 验证码 then
--				if d(page.获取验证码,"page.获取验证码",true,1)then
--					delay(2)
--					短信 = true
--				end
--			end
--		end
--		delay(1)
--	end
--end


--while true do

--	if XXTfakerNewPhone(bid.抖音短视频)then
--	delay(2)
--	reg()
--	end

--end




--vpnTable 示例
vpnlist ={
		dispName = 'iqiyi',
		VPNType = "L2TP",
		server = 'qghh6.9966.org',
		authorization = 'iqiyi',
		password = 'Aa112211',           -- 密码
		secret = '888',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}
--创建一个vpn
function creat_vpn(table)
	local success = vpnconf.create{
		dispName = table.dispName,
		VPNType = table.VPNType,
		server = table.server,
		authorization = table.authorization,
		password = table.password,
		secret = table.secret,
		encrypLevel = table.encrypLevel,
		group = table.group,
		VPNSendAllTraffic = table.VPNSendAllTraffic,
	}
	if success then
		return true
	else
		sys.toast('创建失败，确定人品没有问题？')
	end
end

function vpn_list()
	local list = vpnconf.list()
	for k,v in ipairs(list)do
		sys.toast(v.dispName)
	end
	return list
end

creat_vpn(vpnlist)













