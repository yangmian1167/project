
--[[
local cloud_cc = require("cloud_cc")(
	"2BA695C9633E1E712764746FFD90649C",
	{
		"/lua/scripts/faker.lua",
		"/lua/scripts/xxtsp.lua",
		"/lua/scripts/nLog.xxt",
	}
)

]]




nLog = require('nLog')()
require('faker')
require('xxtsp')

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
--		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip()
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end
屏幕有变化 = 0
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
	
	if sameColor >= 20 then
		log("卡屏了")
		if os.time() - screenTime > 60 * 1 then
			closeX(app.front_bid())
			screenTime = os.time()
		end
	else
		log("屏幕有变化")
		screenTime = os.time()
		屏幕有变化 = 屏幕有变化 + 1
	end
	
	sys.msleep(1000)
end


appbid ={}
appbid.qiyi = "com.qiyi.iphone"





page={}
page.首页界面={{{26,79,0x0bbe06},{63,1070,0x13cc0c},},85}
			--click(95, 167)
page.搜索界面={{{64,84,0x0cb907},{552,85,0x2e2e30},{121,84,0x0bbe06},{122,79,0x38383b},},85}
	page.搜索界面_搜索按钮={{{559,1089,0x007aff},{553,1090,0xf8fbff},{560,1069,0x007aff},}, 85, 484, 1038, 632, 1132}
	page.搜索界面_继续播放={{{329,532,0xffffff},{286,533,0x23d41e},{382,498,0x22ce1d},{396,567,0x22ce1d},{496,531,0x23d41e},}, 85, 269, 236, 633, 734}
	

page.播放界面={{{42,77,0xffffff},{161,446,0x0bbe06},{379,1072,0xff8400},},85}
	page.播放界面_直接流量={{{91,178,0xffffff},{74,178,0x0bbe06},{566,178,0xf0f0f0},},85}
	page.播放界面_流量播放={{{106,177,0xffffff},{88,179,0x0bbe06},{267,178,0x0bbe06},{416,175,0x23d41e},}, 85, 40, 136, 596, 226}
	page.播放界面_流畅={{{121, 166, 0xffffff},{147, 162, 0xffffff},{280, 147, 0xf95f29},{424, 179, 0x0bbe06},}, 85, 70, 138, 567, 195}
	page.播放界面_流畅1={{{252, 169, 0x1c2121},{253, 169, 0xe8e9e9},{292, 170, 0x045305},{327, 170, 0x078405},{380, 167, 0x6d7070},}, 85, 220, 149, 420, 214}
	page.播放界面_继续播放={{{ 77, 209, 0xfafafa},{223, 219, 0xffffff},{266, 251, 0xfafafa},{373, 231, 0x0bbe06},{554, 233, 0x0bbe06},}, 85, 67, 181, 573, 263}
	page.播放界面_显示信息={{{33,322,0xffffff},{51,318,0xffffff},{579,305,0xffffff},{607,333,0xffffff},},85}
		page.播放界面_插放条={{{250,319,0xffffff},{210,318,0x20bc22},}, 85, 80,317, 454,322}
page.播放界面_非会员={{{588,1052,0x333333},{471,1062,0x333333},{372,1070,0x333333},{43,77,0xffffff},}, 85, 0, 0, 0, 0}


page.tips_allow={{{478,665,0x007aff},{225,665,0x007aff},}, 85, 65, 435, 574, 836}



function play()
	moive_name = "大宋断狱神手"
	local Time_Line = os.time()
	滑动 = false
	滑动次数 = 0
	时间记录 = os.time()
	滑动间隔 = 60 * 1
	播放记时 = 0
	
	while os.time()-Time_Line < 60 * 3 do
		if active(appbid.qiyi,5)then
			if d(page.首页界面,"page.首页界面")then
				click(95, 167)
			elseif d(page.搜索界面,"page.搜索界面")then
				if d(page.搜索界面_继续播放,"page.搜索界面_继续播放",true) then
					时间记录 = os.time()
				else
					click(455, 88)
					input("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b")
					input(moive_name)
						
					if d(page.搜索界面_搜索按钮,"page.搜索界面_搜索按钮",true)then
						delay(8)
					end
				end
			elseif d(page.播放界面,"page.播放界面") or d(page.播放界面_非会员,"page.播放界面_非会员") then						--会员播放界面
				looking()
				if 屏幕有变化 >= 10 then 
					log('正常播放完毕')
					屏幕有变化 = 0
					return true
				end	
				if d(page.播放界面_流量播放,"page.播放界面_流量播放",true,1)then
					delay(2)
				elseif d(page.播放界面_流畅,"page.播放界面_流畅",true,1)then
					delay(2)
				elseif d(page.播放界面_流畅1,"page.播放界面_流畅1",true,1)then
					delay(2)
				elseif d(page.播放界面_继续播放,"page.播放界面_继续播放",true,1)then
					delay(2)
				elseif d(page.播放界面_直接流量,"page.播放界面_直接流量",true,1)then
					delay(2)
				elseif d(page.播放界面_显示信息,"page.播放界面_显示信息")then
					if 滑动 then
						if d(page.播放界面_插放条,"page.播放界面_插放条")then
							click(x+rd(20,30),y)
							时间记录 = os.time()
						else
							click(rd(230,454), 320)
							时间记录 = os.time()
						end
						滑动 = false
					end
				elseif 滑动 then
					if not(d(page.播放界面_显示信息,"page.播放界面_显示信息"))then
						click(318, 171)
					end
				else
					
					log("播放时长-->"..os.time() - 时间记录 )
					if os.time()-时间记录 > 滑动间隔 then
						滑动间隔 = 60* rd(1,3)
						滑动 = true
					end
				end
				
				播放记时 = 播放记时 + 1
				if 播放记时 > 60 then
					return true
				end
				
			else
				if d(page.tips_allow,"page.tips_allow",true)then
				end
				
				
			end
		end
		delay(1)
	end
	
end
	
	
	

--[[]]

--while true do

--	if vpn()then
--		if XXTfakerNewPhone(appbid.qiyi)then
--			idfa = XXTfakerGetinfo(appbid.qiyi)["IDFA"]
--			if play()then
--				up("爱奇艺","大宋断狱神手_播放一次")
--				closeX(appbid.qiyi)
--			end
--		end
--		vpnx()
--	end
--end

--]]

log(get_ip())






--[[
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
creat_vpn(vpnlist)
--]]





























