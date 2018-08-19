-- 此处为nLog功能实现操作
nLog = require('nLog')()
require("xxtsp")

--[[
vpnArr = {}

for i=1,20 do
	key = 'iPhone'..i
	vpnArr[key]={}
	vpnArr[key]['dispName'] = 'nj'..i
	vpnArr[key]['authorization'] = 'nj'..i
	vpnArr[key]['password'] = 'Aa112211'
end

name = device.name()




vpnlist ={
		dispName = vpnArr[name]['dispName'],
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = vpnArr[name]['authorization'],
		password = vpnArr[name]['password'],           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}

--vpnconf.delete(vpnArr[name]['dispName'])

--sys.msleep(1000)
--creat_vpn(vpnlist)
--os.exit()
----vpn()
----]]

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
		log("屏幕无动静")
		if os.time() - screenTime > 10*1 then
			log("确认卡了")
			closeX(app.front_bid())
			screenTime = os.time()
		end
	else
		log("屏幕有变化")
		screenTime = os.time()
	end
	
	sys.msleep(1000)
end


while true do
	looking()
	
end











