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
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.letter2048 = 'com.accoc.firstapp'
bid.斗地主娱乐游戏 = 'com.ahcoole3.ddzddz'
bid.淘劵街 = 'com.tqjw.taoquanjieww'
bid.我爱斗地主 = 'com.shhstudio.love.ddz'
bid.富宏棋牌 = 'com.336SF4RY4P.fhqp'
bid.美丽方舟 = 'com.mymlfz.newmlfz'
bid.波波视频 = 'com.yixia.Miaokan'
bid.犀牛投教 = 'com.jdcf.edu'
bid.一游说 = 'com.chufanginc.HohoRelease'
bid.同程旅游pro = 'com.tongcheng.iphonepro'
bid.租租车 = 'com.zuzuche.ios.UN4656TH2V'
bid.沪深理财福利版 = 'com.qianhaiyunxuan.hushenjinfu'
bid.东金秀财 = 'com.wdx.ShowCai'
bid.多融财富 = 'com.duoorngcf.www'
bid.五福理财 = 'com.xiesheng.wufulc'
bid.西十区 = 'com.aiyou.iosxsq001'
bid.高考志愿榜 = 'com.ycgg.gaokaolive'
bid.公积金借款 = 'com.yrt.gjj.gjj.gjjjk'
bid.决胜21点 = 'com.bj.pk'
bid.会计云课堂 ='com.dongao.app.dongaocloudclass'
bid.每研领吧 = "com.lishantang.meiyan"
bid.彩宝彩票 = "com.cb.AutoArrangeFive"
bid.HG足球大师2018 = "com.am.soccer.game"
bid.星乐彩票 = "com.Lottery.TC.XL"
bid.馨健康 = "io.dcloud.xinjiankang"
bid.金满堂棋牌 = "com.jmtqpyl.jmt"
bid.bbinball = "com.labyrinth.ball"
bid.目标皇冠足球 = "com.GAMING201804091.app"
bid.公积金管家51 = "com.jianbing.gjj.pro"
bid.WP助手 = "com.wallpaperapp.ios"
bid.北京赛车 = "com.PekingRacing.XExtremeSprint"
bid.抓娃娃gf = "com.liujianping.gongfuzhuawawa"
bid.万和娱乐 = "com.game.wanhe"
bid.抓娃娃666 = "com.superlake.zhuawawa666"
bid.竞赛皇の冠足球="com.Football.hahhamatch"
bid.RB雙色球 = "com.catch.dsjfksd"
bid.融贝网 = "com.rongbei.rongbeiwang"
bid.酷抓娃娃机 = "com.lotogram.zhuagewawa2"
bid.期货宝典 = "com.qihuofLaowoTen"
bid.携程旅行 = "ctrip.com"
bid.冰川冒险记 = "yf.bcmxj.sh"
bid.破天无双 = "com.ptws.yjyh"
bid.纺织大学堂 = "beiyongaguo17"
bid.大航海霸业 = "com.dahanghai.bazhe"
bid.掌上網投助手 = "com.Code.Generator"
bid.诺亚彩票 = "com.Lottery.TC.NY1"
bid.金鲨娱乐 = "com.buyugame.jsyl2"
bid.名门娱乐 = "com.zhh.wyz"
bid.兼职帮 = "pronetway.renrenjianzhi.com"
bid.BJ百家樂21点 = "com.21pro.nide"
bid.单机斗地主 = "com.mofeng.qjmddz"
bid.点休闲扑克21 = "com.bjpk47.cmnt2018"
bid.发烧钓鱼 = "com.jiong.FaShaoDiaoYu"
bid.富狗斗地主 = "com.fugouddz.game"
bid.技巧足球 = "com.game.zhuhong11"
bid.蛋壳二手车 = "com.danke"
bid.畅由—畅意人生 = "com.centchain.changyo"
bid.富狗扑克 = "com.pkfggame.game"
bid.乌龟睡眠 = "com.eh.Jukusuikuntwo"
bid.还呗极速版 = "com.t.hb10"
bid.南波万森林舞会 = "com.game.game9kus"
bid.澳门皇冠电玩城 = "com.ym.iosy2"
bid.武林号令 = "com.wlhl.zzly023.qianliu"
bid.全本小说书城 = "com.lemi.quanben"
bid.钻石乐园 = "com.meiguisc.mg"
bid.拍拍二手 = "com.jd.paipai.ppershou"
bid.UU理财Pro = "com.zjjyb.uulicai-pro"
bid.无界商圈 = "com.tyrbl.WJService"
bid['66游艺'] = "com.baoteng.game66"
bid.imarry = "com.iawwa.happiness"
bid.红海豚 = "com.redolphin.live"
bid.百家乐棋牌 = "www.piao.baijiale001"
bid.物理弹球打砖块 = "com.ommoneasy.ballsvsbricks.game"
bid.棋牌游戏 = "com.jullerliang.AnimalChecker"
bid.AG娛樂平台 = "as.newTest"
bid.欢乐 = "com.HappyRuler.www"
bid.全新365世界杯助手 = "com.HaroldNoe.MovementTimer"
bid.吱到 = "com.xinghan.zhidao"
bid['掌上ЪΕΤЗ65预测专家'] = "com.yoga.assistant"
bid.AG電子 = "com.nwf.vitalcapacity"
bid.Ag = "com.zhyao.agpm"
bid.OKEx = "com.okex.OKExAppstore"
bid.娱乐城好友棋牌 = "com.lin.mjgame"
bid["掌尙ВΕT"] = "ana.redgreenblind"
bid.花生备孕 = "com.peanut.baby"
bid.幸运六狮 = "org.youyigame.liushichao"
bid.百胜电玩 = "com.bsdw.video.game"
bid.星商圈 = "ZhongLi.xsq.com"
bid.他他 = "wangmeng.BlueFriends"
bid.夜夜交友社区 = "cn.fjyuai6.app"
bid['51公积金管家'] = "com.jianbing.gjj.pro"
bid.熊猫网赚 = "com.onePiece.plusa.intentMoney"
bid.佛滔命理大师 = "com.fotao.fotaoapp"
bid.食得鲜 = "com.youguoshu.shidexian"
bid.天天剧本杀 = "com.script.killing"
bid.公积金查询 = "com.yrt.gjj.gjj.chaxun"
bid.夜夜交友社区 = "cn.fjyuai6.app"
bid.快弎 = "FasteasyNote.Marcuswan65.app"
bid.校朋家长端 = "com.keji110.XiaoPengParent"
bid.校朋老师端 = "com.keji110.XiaoPeng"
bid.全国招投标 = "com.mengdie.zhaobiao"
bid.咪爪交友 = "com.miAudio.app"
bid.地一森林舞会 = "org.enshilesiqi.dyslwh"

screen.init(0)
var = {}
var.lun = 0
--全局变量

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = '192.168.1.1'
--	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end


function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function newidfa(bids,times)
	if true or vpn()then
	for i= 1,times do
		if XXTfakerNewPhone(bids)then
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(20,25)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.right,"apparr.right",true)then

					else
						moveTo(600,300,100,100,30,50)
						delay(1)
						click(321, 978)
						delay(1)
						click(462, 666)
						delay(1)
					end
				end
			end
			up(appname(bids),'初次上传')
		end
	end
	end
	vpnx()
end


--newidfa(bid.校朋家长端,2200/17)		--B组
--newidfa(bid.校朋老师端,1200/7)		--A组
newidfa(bid.全国招投标,150/5)		--A组
--newidfa(bid.咪爪交友,420/20)		--A组
--newidfa(bid.地一森林舞会,1700/20)		--B组

--newidfa(bid.天天剧本杀,130/10)		--B组
--newidfa(bid.食得鲜,4500/10)		--B组
--newidfa(bid.熊猫网赚,4500/10)		--A组
--newidfa(bid.佛滔命理大师,500/10)		--A组
--newidfa(bid.公积金借款,200/18)		--A组
--newidfa(bid['51公积金管家'],220/9)		--A组
--newidfa(bid.公积金查询,220/20)		--B组
--newidfa(bid.夜夜交友社区,300/5)		--B组
--newidfa(bid.快弎,2500/20)		--B组

--newidfa(bid.imarry,200/20)		--A组
--newidfa(bid.全本小说书城,1100/20)
--newidfa(bid.武林号令,1100/20)
--newidfa(bid.澳门皇冠电玩城,330/20)		--b组
--newidfa(bid.南波万森林舞会,550/4)		--Qt组
--newidfa(bid.RB雙色球,800/20)
--newidfa(bid.竞赛皇の冠足球,3000/20)
--newidfa(bid.还呗极速版,620/20)
--newidfa(bid.富狗斗地主,7100/20)		--A组
--newidfa(bid.多融财富,550/20)			--A组
--newidfa(bid.西十区,320/9)			--A组
--newidfa(bid.五福理财,500/19)			--A组
--newidfa(bid.沪深理财福利版,420/19)		--A组
--newidfa(bid.钻石乐园,1200/20)			--A组
--newidfa(bid.拍拍二手,2100/20)				--A组
--newidfa(bid.棋牌游戏,6100/20)				--A组
--newidfa(bid.欢乐,4600/20)				--A组
--newidfa(bid.无界商圈,1400/20)		--A组
--newidfa(bid.全新365世界杯助手,600/10)				--AB组
--newidfa(bid.UU理财Pro,1100/20)	--A组
--newidfa(bid['掌上ЪΕΤЗ65预测专家'],3200/20)	--A组
--newidfa(bid["掌尙ВΕT"],3200/20)	--A组
--newidfa(bid["幸运六狮"],1200/20)	--A组
--newidfa(bid["百胜电玩"],2000/10)	--A组
--newidfa(bid["夜夜交友社区"],200/10)	--A组


--newidfa(bid.发烧钓鱼,320/20)		--B组
--newidfa(bid.兼职帮,520/20)		--B组
--newidfa(bid.富狗扑克,7100/20)			--B组
--newidfa(bid['66游艺'],4000/20)	--B组
--newidfa(bid.红海豚,220/20)	--B组
--newidfa(bid.百家乐棋牌,2100/20)	--B组
--newidfa(bid.物理弹球打砖块,800/20)	--B组
--newidfa(bid.AG娛樂平台,1620/20)	--B组
--newidfa(bid.吱到,100/1)	--xxt组
--newidfa(bid.AG電子,500/18)	--xxt--B组
--newidfa(bid.Ag,500/18)	--B组
--newidfa(bid.娱乐城好友棋牌,2000/18)	--B组
--newidfa(bid.OKEx,600/10)	--b
--newidfa(bid.花生备孕,110/1)	--xxt
--newidfa(bid.星商圈,220/1)	--xxt
--newidfa(bid.他他,550/30)	--xxt






















