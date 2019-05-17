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


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function newidfa(bids,times)
	for i= 1,times do
		if false or vpn()then
			if XXTfakerNewPhone(bids)then
				idfa = XXTfakerGetinfo(bids)['IDFA']
				local TIMEline = os.time()
				local OUTtime = rd(300,360)
				while os.time()- TIMEline < OUTtime do
					if active(bids,4)then
						if d(apparr.right,"apparr.right",true)then
						else
							moveTo(600,300,100,100,30,50)
							delay(1)
--							click(321, 978)
--							delay(1)
--							click(462, 666)
--							delay(1)
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
newidfa(bid.剧能玩,25/1)		--all
--newidfa(bid.粤交易,155/1)		--all
--newidfa(bid.美逛,155/1)		--all
--newidfa(bid.触触交友,1050/7)		--all
--newidfa(bid.GuabiLife,6500/7)		--all
--newidfa(bid.爱卡之家,210/1)		--all
--newidfa(bid.挂机暴风城,550/7)		--all
--newidfa(bid['164法律服务'],320/7)		--all
--newidfa(bid.上门帮,150/1)		--all
--newidfa(bid['Italian cuisine'] ,10000/1)		--all
--newidfa(bid['Raybet雷竞技'] ,220/2)		--all
--newidfa(bid['新宝股票配资'] ,55/1)		--all
























