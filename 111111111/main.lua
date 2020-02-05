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




--[[]]

----创建一个vpn
vpnlist ={
		dispName = 'ymvpn6180',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'ymvpn6180',
		password = 'Aa112211',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}

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
delay(5)

-------选择一个VPN
local success = vpnconf.select('ymvpn6180')
if success then
    sys.alert('操作成功')
else
    sys.alert('操作失败，确认你要选中的 VPN 配置存在？')
end
--]]

-----删除所有VPN

--local vpnlist = vpnconf.list()
--if vpnlist then
--    for _,v in ipairs(vpnlist) do
--        if (vpnconf.delete(v.VPNID)) then
--            sys.log('成功删除：'..v.dispName..'('..v.VPNID..')')
--        else
--            sys.log('无法删除：'..v.dispName..'('..v.VPNID..')')
--        end
--    end
--    sys.alert('操作完成！')
--else
--    sys.alert('获取列表失败，确定人品没有问题？')
--end










--log(app.bundles())

--log(app.front_bid())
--app.uninstall('com.shyohan.carHappy')

--[[

applist = {
"com.xhy.blackfish.app",
"com.rong360.victor",
"com.ppdai.loan",
"com.alibaba.wireless",
"com.ymcakzj.www",
"com.anjuke.anjuke",
"com.msxf.ayh",
"bainiu.zhongfa.bai",
"live.MaoMao.show",
"com.grassroots.grrise",
"com.xinrenWealth",
"com.zhangyue.zyiReader.iReaderDejian",
"com.queen.combination.card",
"com.ddsy.songyao",
"com.nc.uxinusednew",
"com.IPZERO.happybullchess",
"com.fugu.huyu",
"com.Taha.LightDigital",
"com.htpz.0525",
"com.xzpz.0531",
"com.ganji.haoche",
"com.EnterpriseServiceManagement.Co",
"Com.ZongXun.YHD",
"com.hualeniujing.iaoniu",
"com.chinaso.search",
"com.huiyingou.cn",
"com.jiazhengWork.App",
"com.gwfx.gts2",
"pronetway.renrenjianzhi.com",
"com.yunhou.baiyangjinrong",
"com.jinyihuochuang.app",
"com.jinlimianmo.asd",
"com.kpl.phonestudent",
"com.zhenzhen.loan",
"com.earthwarrior.wanpao",
"longhu.niu.qiyu",
"com.halei.yucaiyuan",
"com.mlpzv4.0505",
"com.xdy.0527",
"com.fcpz.0521",
"com.ydcl.0601",
"com.ml.paw",
"com.guanm.net",
"com.shuqu.banyan",
"come.sanshun.zhanhonghei",
"com.beeblio.sentence",
"com.googshoping.raybet",
"com.fd.enit",
"com.WorldTime.www",
"com.Bookshop.cn",
"come.tonghua.mayi",
"com.fwb.sj",
"com.dominic.electrician",
"com.unmatched.combinationcard",
"com.wukang.game",
"com.zoro.SpotGoldrx",
"com.ProjectAssistant",
"net.xxsy.bookreader",
"com.touziyouxuan.app",
"com.xbpz.0414",
"com.mlpzv3.0426",
"com.rycl.0523",
"com.zhujiangqipai",
"com.cmi.jegotrip",
"com.xiaoganwujinjiancaishangcheng.wjjc",
"com.myhsposdru.iwu",
"com.yutulive.zhibo",
"com.yuhuo.cn",
"com.mixReality.parkingApp",
"com.DeErFei.MengNaLXiaoiSha",
"com.setl.gts2",
"com.future.SupervisorNurse",
"com.zuiniu.doudizhu",
"com.dhfhskfhjchuju.appname",
"com.dolphinjob.www",
"com.gboytongzhuang.pt",
"com.ivanwilhelm.IMC",
"com.shoes.Jlewis",
"md.desai.pocketBudget",
"com.samiee.wuyedongting",
--"com.abcydia.reprovision.ios",
"com.JSNE.ScoreBoard",
"com.5star.myshop",
"JR-Alan.MTProgrammerDevelopProject",
"com.x.design.app",
"sc.krishnagod.krishna",
"com.ef.efhello",
"com.igkuwd.yydly",
"com.baogao.zhenniuljh",
"com.jxsz.iehz",
"com.iqiyi.qule.knxx",
"com.light.yuning",
"com.aihayou.wolf",
"com.lsywz.sgz",
"com.wudi.cunzai",
"fengbao.luandou",
"bp.lbyjz.pi",
"com.holdliang.war",
"jtxqhThowood",
"com.aiwan.newworld",
"com.robain.shopping",
"com.jiucang.huaqianba",
"com.yuntong.SubstituteDriving",
"com.app.jixianggou",
"com.block.mdyj",
"com.didaocai.cai",







	}


 key = 1
for k = 1,#applist do
	if app.localized_name(applist[key]) == nil then
		log('搜索需要删除的app....',true)
		key = key +1
	elseif app.localized_name(applist[key]) then
		log('正在删除'..app.localized_name(applist[key]),true)
		if app.uninstall(applist[key]) then
			delay(10)
			key = key + 1
		end
	end
	delay(1)
end	
sys.alert('删除完成')
--sys.alert('删除完成'..sys.free_disk_space())
os.exit()
--]]--


--for k = 1, 50 do
	
--	nLog('18:'..math.random(12,20)..':'..math.random(1,60))
	
--end	


--[[

while true do
moveTo(322, 830,447, 195,5,1)
delay(25)
end
--while true do

--touch.on(405, 201):move(405, 201):off()

--delay(2)
--end


--]]































