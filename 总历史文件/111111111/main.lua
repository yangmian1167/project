-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')


--arr = {2222222}
--arr.www = 12312312312
--arr.ffff = 'fdsfsdafas'
--for var=1,6 do
--	table.insert(arr,2,var)
--end


--nLog(arr)

--for key , var in pairs(arr) do
--	nLog(key,var)
--end	






--for key, var in pairs(ww) do
	
--	nLog(key,var)
	
--end	





--function table_maxn(t)
--  local mn=nil;
--  for k, v in pairs(t) do
--    if(mn==nil) then
--      mn=v
--    end
--    if mn < v then
--      mn = v
--    end
--  end
--  return mn
--end
--tbl = {[1] = 2, [2] = 6, [3] = 34, ["wen"] =5}
--nLog("tbl 最大值：", table_maxn(tbl))
--nLog("tbl 长度 ", #tbl)


--for key,vluve in pairs(tbl) do
	
--	nLog(变量1)


----end


--People = {}
--function clone(tab)
--local ins = {}
--	for key , var in pairs(tab) do
--		ins[key] = var
--	end
--	return ins
--end

--People.sayhi = function ()
--	nLog("People sayhi")
--end


--local p = clone(People)

--p.sayhi()




----设置 = "com.apple.Preferences"
	
----itunesid = {{
----	{ 43, 710, 0x1bacf8},
----	{ 39, 726, 0xc5e3fc},
----	{ 42, 736, 0xc4dffc},
----	{ 72, 737, 0xe1eefe},
----	{ 78, 724, 0x1c95f6},
----	{510, 721, 0x000000},
----	{509, 729, 0x000000},
----}, 85, 0, 0, 0, 0}


--登录 = {{{409, 442, 0xf9f9f9},}, 85}
--	input('a@gemehouse.com')
--	delay(3)	
--	click(96, 387)
--	input('AaDd112211')
--	delay(3)
--	d(登录,"登录",true,1)


vpnlist ={
		dispName = '40',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'ahy65',
		password = '1',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
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














