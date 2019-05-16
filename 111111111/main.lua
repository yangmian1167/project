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




--[[

----创建一个vpn
vpnlist ={
		dispName = 'idfa888',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'idfa888',
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
local success = vpnconf.select('idfa888')
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

--[[]]

applist = {
	
"com.baihe.online",
"com.dupeifu.chuzhongshuxue",
"com.chuangshi.pk",
"com.dianping.dpscope",
"com.ss.iphone.ugc.Aweme",
"tv.douyu.live",
"com.ERP.ERPEIRPCalculate",
"com.yy.kiwi",
"com.huajiao.seeding",
"com.ss.iphone.article.News",
"com.qishiyun.onlinestore",
"com.luohui.juxing",
"com.jiangjia.gif",
"com.moutian.moucai",
"com.xunmeng.pinduoduo",
"m.qidian.QDReaderAppStore",
"ShouBoTV",
"com.tencent.QQKSong",
"yougui.Srb-ios",
"app.anagrams.WordPuzzle",
"com.kingkr.kuxocgc",
"com.wantupai.app",
"com.sina.weibo",
"com.tencent.microvision",
"com.dupeifu.weijiezhimi3",
"com.do1.WeiLaiApp",
"com.xhy.blackfish.app",
"com.xueersi.wxjzh",
"com.meelive.ingkee",
"io.liuliu.music",
"com.zhihu.ios",
"com.wuba.zhuanzhuan",
"com.jianqijt.afr.Americanfootballrush",
"com.hanazuki.germanphrase",
"com.yy.hello",
"com.guo.MOVER",
"com.tencent.now",
"com.tencent.mqq",
--"com.abcydia.reprovision.ios",
"yyvoice",
"com.jiucang.huashangqian",
"com.huanshou.taojiji",
"com.aqblIos.preject.www",
"com.chuangshi.pk",
"com.damai",
"com.qijing.wuniupai",
"com.HuaChuang.Game",
"com.shunzhiniu.tonsha",
"com.jiangnang.xiaohuajing",
"com.SafetyMonitor.sjq",
"com.lianhudai.jinhua",
"com.junpeng.yeliao",
"com.personalcar.www",
"com.yuliang.sanjianqms",
"come.wanhe.sanzhangpai",
"come.xiaon.wuwuhua",
"com.tiantianzhahuajin.game",
"com.gonghuajing.sanzheng",
"com.yubery.gulongClassic",
"com.dupeifu.qsxgcw",
"com.qishiyun.onlinestore",
"com.ledu.qipai",
"com.fugu.huyu",
"galaxy.empire",
"com.yuanyoutouzi.cn",
"com.liang.zhengkao",
"com.ERP.ERPEIRPCalculate",
"com.tencent.QQMusic",
"com.hpbr.bosszhipin",
"com.iqiyi.fzms.ssjj",
"app.screen.lock.wallpaper",
"com.elex-tech.ClashOfKings",
"com.ppdai.loan",
"com.iqianjin.iqianjinplus",
"bainiu.zhongfa.bai",
"longhu.niu.qiyu",
"com.guanm.net",
"com.51qiniu.pay",
"com.shuqu.banyan",
"com.bj.pk",
"com.dongao.app.dongaocloudclass",
"com.zuzuche.ios.UN4656TH2V",
"com.cb.AutoArrangeFive",
"com.am.soccer.game",
"com.yrt.gjj.gjj.gjjjk",
"com.myhsposdru.iwu",
"com.Lottery.TC.XL",
"cn.com.workapp.auto.niudi",
"com.duoorngcf.www",
"com.aiyou.iosxsq001",
"com.xiesheng.wufulc",
"com.qianhaiyunxuan.hushenjinfu",
"com.jmtqpyl.jmt",
"io.dcloud.xinjiankang",
"com.labyrinth.ball",
"com.GAMING201804091.app",
"cn.mafengwo.www",
"com.jianbing.gjjjiekuan",
"com.jianbing.gjj.pro",
"com.wallpaperapp.ios",
"com.liujianping.gongfuzhuawawa",
"com.ptws.yjyh",
"com.superlake.zhuawawa666",
"com.Football.hahhamatch",
"com.Code.Generator",
"com.zhh.wyz",
"com.fugouddz.game",
"com.game.zhuhong11",
"com.centchain.changyo",
"com.eh.Jukusuikuntwo",
"com.PekingRacing.XExtremeSprint",
"com.meiguisc.mg",
"com.catch.dsjfksd",
"com.zjjyb.uulicai-pro",
"com.tyrbl.WJService",
"com.jullerliang.AnimalChecker",
"com.HappyRuler.www",
"com.HaroldNoe.MovementTimer",
"com.t.hb10",
"com.iawwa.happiness",
"com.yoga.assistant",
"ana.redgreenblind",
"com.dadaabc.DaDaClass",
"com.ucweb.iphone.lowversion",
"org.youyigame.liushichao",
"com.xishanju.qyq",
"com.qihuozhangzhongbao",
"com.lianjia.beike",
"wangmeng.BlueFriends",
"cn.fjyuai6.app",
"com.onePiece.plusa.intentMoney",
"com.fotao.fotaoapp",
"com.qiyi.iphone",
"com.mengdie.zhaobiao",
"com.qiashang.app",
"com.PenaMiguel.bitCoin",
"com.hs.shanjiang",
"com.3dBrickgame",
"com.floor.jobsqan.caroravel",
"com.meigui.rijiw",
"com.Suddenfix.SuddenFixCustomer",
"com.dadaabc.DaDaBABY",
"com.rong360.victor",
"com.zhuifeng.pinquanduoduo",
"com.mhjy.jinyou",
"BB10",
"com.block.xd360",
"com.tuodao.tdcaifu",
"com.yiyiqianbao.lishu",
"cn.tzg.TZG",
"com.zhou.xxwyios",
"com.zhongan.insurance",
"com.jinding.xinrongtouzi",
"cn.6ag.AppScreenshots",
"com.QQapp.RXGuiJinShuqh",
"com.PL.WHRJ",
"com.shijiandingji",
"com.cmi.jegotrip",
"com.app.QHRJ",
"com.Equipment.LY.www",
"com.kk.FileScanner",
"com.jxj.mhxyu",
"com.xiaoju.chuchu",
"com.MilkL.BenefitParking",
"com.FunStudy.app",
"com.ttgenwomai.www",
"com.googshoping.raybet",
"com.fd.enit",
"com.yinghexin.Zhongkzx",




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
os.exit()
--]]--


--for k = 1, 50 do
	
--	nLog('18:'..math.random(12,20)..':'..math.random(1,60))
	
--end	























