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
bid.公积金管家51 = "com.yrt.gjj.gjjtwo"
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


function newidfa(bids,times)
	for i= 1,times do
		if XXTfakerNewPhone(bids)then
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(16,18)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					moveTo(600,300,100,100,30,50)
					delay(1)
					click(321, 978)
					delay(1)
				end
			end
			up(appname(bids),'初次上传')
		end
	end
end





--newidfa(bid.公积金借款,520/20)
--newidfa(bid.全本小说书城,1100/20)
--newidfa(bid.武林号令,1100/20)
--newidfa(bid.澳门皇冠电玩城,330/20)
--newidfa(bid.南波万森林舞会,500/5)


--newidfa(bid.RB雙色球,800/20)
--newidfa(bid.竞赛皇の冠足球,3000/20)

--newidfa(bid.还呗极速版,620/20)
--newidfa(bid.富狗扑克,2200/20)
--newidfa(bid.富狗斗地主,3200/20)

--newidfa(bid.多融财富,520/20)
--newidfa(bid.西十区,220/20)
--newidfa(bid.五福理财,570/20)
--newidfa(bid.沪深理财福利版,40/20)
--newidfa(bid.钻石乐园,630/20)
--newidfa(bid.拍拍二手,2100/20)

--newidfa(bid.UU理财Pro,1100/20)
--newidfa(bid.发烧钓鱼,400/20)
--newidfa(bid.兼职帮,510/20)
--newidfa(bid.无界商圈,1400/20)
--newidfa(bid['66游艺'],4000/20)









































	
	