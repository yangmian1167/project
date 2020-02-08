nLog = require('nLog')()
require('faker')
require('xxtsp')



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
bid.大码微拍 = "com.xmfg.dmwp"
bid.开天斩龙 = "com.kai.tian.ktzl"
bid.赚钱啦 = "sz.parttimejob"
bid.四方坦克大战 = "com.sfgame.sftkdz"
bid.多多优惠券 = "com.zhuifeng.pinquanduoduo"
bid.咸鱼 = "com.zhuifeng.xianyu"
bid.斗鱼直播 = "tv.douyu.live"
bid.今日快赚 = "com.snsbao"
bid.拍读 = "com.qmaple.snapreadpro"
bid.悦美 = "com.yuemei.kw"
bid.现金抽屉 = "com.xjchouti.ios"
bid.口袋三国无双 = "com.kdsgws.njk"
bid.剧能玩 = "com.junengwantv.chuyingCompany"
bid.粤交易	 = "com.yue.invest"
bid.美逛 = "com.zutuan.app"
bid.触触交友 = "com.chuchujiaoyou"	
bid.GuabiLife = "com.yu.guabi"
bid.爱卡之家 = "com.ymcakzj.www"
bid.挂机暴风城 = "com.shizhi.gjdms"
bid['164法律服务'] = "cn.164.yilushidsr"
bid.上门帮 = "com.shangmb.client"
bid['Italian cuisine'] = "com.fd.enit"
bid['Raybet雷竞技'] = "com.googshoping.raybet"
bid['新宝股票配资'] = "com.xbpz.0414"
bid['必买BEMINE'] = "cn.techwis.PrivilegeGo"
bid['车开新二手车'] = "com.shyohan.carHappy"
bid['省钱大圣'] = "com.youyou1.app"
bid['家政兼职赚钱平台'] = "com.jiazhengWork.App"
bid['股票配资计囊'] = "com.Taha.LightDigital"
bid['微品金融'] = "cn.vpfinance.weipin"
bid['淘车夫'] = "com.dyc88888.www"
bid['股票配资'] = "com.EnterpriseServiceManagement.Co"
bid['大众点评'] = "com.dianping.dpscope"
bid['认知形状'] = "com.artemis.fishlianliankan"
bid['海翔gmat'] = "com.quakoo.haixiang"
bid['FSSH Terminal sshclient'] = "com.fish.ssh"
bid['TaskOnHand'] = "tasks.taskonhand"
bid['虔城民生通管理端'] = "com.ganxian.wz.wenzheng"
bid['心情FM'] = "com.yhl.www.audioPlayer-4"
bid['垃圾分类'] = "com.SH.NewGarbageClassification"
bid['LockPictures'] = "com.LockPictures.photo"
bid['益智拼图'] = "com.puzzle.liyu"
bid['植观'] = "com.GQ6BLF3HKD.q32m2"
bid['逗声'] = "com.cheniue.warmsound"
bid['翡翠珍箱'] = "com.jbangit.yicui"
bid['易车'] = "bitauto.application"
bid['MedImaging'] = "com.QY.medatlas"
bid['1986 Barbershop'] = "com.barber-app.app"
bid['Ketch Circle:Tap Jump'] = "com.l9LDa4P7ki.5INfYVpY8Ybc2eigz"
bid['AB客'] = "com.muke.ABKE"
bid['天涯刀锋'] = "com.sideb.tydf"
bid['猎魂觉醒'] = "com.netease.H37.LHJX"
bid['畅阅小说阅读'] = "cn.qbzsydq.reader"
bid['咪咕视频'] = "com.wondertek.hecmccmobile"





screen.init(0)
var = {}
var.lun = 0
--全局变量

function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = '192.168.1.1'
	idfalist.ip = get_ip() or '192.168.1.1'
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


web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

url = 'https://apps.apple.com/us/app/id1436467071?l=zh&ls=1' --ab客
--url = 'https://f1.leniugame.com/b8/71/bbaabb.html' --天涯刀锋
--url = 'https://apps.apple.com/cn/app/id1228049107' --畅阅小说阅读

function open(url)
	openUrl(url)
	delay(3)
	local timeline = os.time()
	local outtimes = 15
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
	return true
end
apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}


function newidfa(bids,times)
	for i= 1,times do
		if false or vpn()then
			if XXTfakerNewPhone(bids)then
				open(url)
				idfa = XXTfakerGetinfo(bids)['IDFA']
				local TIMEline = os.time()
				local OUTtime = rd(22,25)
--				local OUTtime = rd(1500,1800)
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
							click(390, 781)
						end
					end
				end
				up(appname(bids),'初次上传')
			end
		end
		vpnx()
		delay(3)
		log("关闭VPN-------->>>>>>>")
	end
end



--newidfa(bid.大码微拍,540/10)		--B组
--newidfa(bid.开天斩龙,1100/10)		--B组	
--newidfa(bid.赚钱啦,250/1)		--B组
--newidfa(bid.四方坦克大战,220/1)		--B2组
--newidfa(bid.多多优惠券,150/1)		--A组
--newidfa(bid.咸鱼,150/1)		--A组
--newidfa(bid.斗鱼直播,15000/40)		--all
--newidfa(bid.今日快赚,202/1)		--all
--newidfa(bid.拍读,315/1)		--all
--newidfa(bid.悦美,60/1)		--all
--newidfa(bid.现金抽屉,52/1)		--all
--newidfa(bid.口袋三国无双,160/1)		--all
--newidfa(bid.剧能玩,25/1)		--all
--newidfa(bid.粤交易,240/1)		--all
--newidfa(bid.美逛,155/1)		--all
--newidfa(bid.触触交友,1050/7)		--all
--newidfa(bid.GuabiLife,6500/7)		--all
--newidfa(bid.爱卡之家,210/1)		--all
--newidfa(bid.挂机暴风城,33/1)		--all
--newidfa(bid['164法律服务'],320/7)		--all
--newidfa(bid.上门帮,330/1)		--all
--newidfa(bid['Italian cuisine'] ,10000/1)		--all
--newidfa(bid['Raybet雷竞技'] ,220/2)		--all
--newidfa(bid['新宝股票配资'] ,55/1)		--all
--newidfa(bid['必买BEMINE'] ,200/1)		--all
--newidfa(bid['车开新二手车'] ,70/1)		--all
--newidfa(bid['省钱大圣'] ,220/1)		--all
--newidfa(bid['家政兼职赚钱平台'] ,2300/20)		--all
--newidfa(bid['股票配资计囊'] ,2300/1)		--all
--newidfa(bid['微品金融'] ,450/1)		--all
--newidfa(bid['淘车夫'] ,220/1)		--all
--newidfa(bid['股票配资'] ,4500/40)		--all
--newidfa(bid['大众点评'] ,550/20)		--all
--newidfa(bid['认知形状'] ,120/1)		--all
--newidfa(bid['海翔gmat'] ,120/1)		--all
--newidfa(bid['FSSH Terminal sshclient'] ,33/1)		--all
--newidfa(bid['TaskOnHand'] ,450/10)		--all
--newidfa(bid['虔城民生通管理端'] ,3200/10)		--all
--newidfa(bid['心情FM'] ,3700/10)		--all
--newidfa(bid['垃圾分类'] ,3600/10)		--all
--newidfa(bid['LockPictures'] ,3200/10)		--all
--newidfa(bid['LockPictures'] ,3200/10)		--all
--newidfa(bid['益智拼图'] ,300/10)		--all
--newidfa(bid['植观'] ,4300/10)		--all
--newidfa(bid['逗声'] ,130/1)		--all
--newidfa(bid['翡翠珍箱'] ,350/1)		--all
--newidfa(bid['易车'] ,250/1)		--all
--newidfa(bid['MedImaging'] ,250/1)		--all
--newidfa(bid['1986 Barbershop'] ,1000/1)		--all
--newidfa(bid['Ketch Circle:Tap Jump'] ,1000/1)		--all
--newidfa(bid['AB客'] ,22/1)		--all
--newidfa(bid['天涯刀锋'] ,120/1)		--all
--newidfa(bid['猎魂觉醒'] ,220/1)		--all
--newidfa(bid['畅阅小说阅读'] ,220/1)		--all
newidfa(bid['咪咕视频'] ,220/1)		--all






















