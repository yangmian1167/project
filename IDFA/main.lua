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
--require('bid')



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
--	idfalist.ip = '192.168.1.1'
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = bid[work]['keyword']
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end
function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function checkip()
	ip = get_ip() or "192.168.1.1"
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.checkip&ip='..ip
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("ip可以用:OK.",true)
			return true
		else
			log("ip, 排重失败",true)
		end
	end
end

function get_task()
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.gettask'
	local postArr = {}
	postArr.phonename = phonename or device.name()
	postArr.imei = phoneimei or sys.mgcopyanswer("SerialNumber")
	local taskData = post(url,postArr)
	
	if taskData ~= nil then
		taskData = json.decode(taskData)
		log(taskData)
		
		if taskData.data == "新增手机" or taskData.data == "暂无任务" then
			log(taskData.data,true)
			delay(30)
			return false
		else
			return taskData.data
		end
	end
end


function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function newidfa(bids)
	if XXTfakerNewPhone(bids)then
		idfa = XXTfakerGetinfo(bids)['IDFA']
		local TIMEline = os.time()
		local OUTtime = rd(22,25)
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
		back_pass(task_id,'ok')
	end
end


bid.西十区 = 'com.aiyou.iosxsq001'
bid.闪电修 = "com.Suddenfix.SuddenFixCustomer"
bid.地一森林舞会 = "org.enshilesiqi.dyslwh"
bid['51公积金管家'] = "com.jianbing.gjj.pro"
bid.公积金查询 = "com.yrt.gjj.gjj.chaxun"
bid.四方坦克大战 = "com.sfgame.sftkdz"
bid.熊猫网赚 = "com.onePiece.plusa.intentMoney"
bid.银河战舰 = "galaxy.empire"
bid.多多优惠券 = "com.zhuifeng.pinquanduoduo"
bid.多多优惠券 = "com.zhuifeng.pinquanduoduo"
bid['dido－見面追蹤小助手'] = "com.UniMax.iDido"
bid.环球娱乐 = "BB10"
bid.老虎机 = "com.igs.fafafa"
bid.北京购车 = "com.personalcar.www"
bid.孤王之战 = "com.game.zgqx1"
bid.捞月狗 = "com.hainanlexin.laoyuegou.app"
bid.东方讯飞 = "com.dfxf.righting"
bid.期货财富宝 = "com.qihuo.ios"
bid.车开新二手车 = "com.shyohan.carHappy"
bid.音遇 = "io.liuliu.music"
bid.上门帮 = "com.shangmb.client"
bid.斗鱼直播 = "tv.douyu.live"
bid.American = "com.jianqijt.afr.Americanfootballrush"
bid.中科在线 = 'com.yinghexin.Zhongkzx'
--bid.快乐运动 = 'com.wenh.waydttkl'

--------------------------------------------------------在后面都加上 该app的 ID---------------------
--newidfa(bid.玫瑰日记 ,300/8)		--A1组
--newidfa(bid.佛滔命理大师,500/10)		--A组
--newidfa(bid.公积金借款,200/18)		--A组
--newidfa(bid['51公积金管家'],520/15)		--b组
--newidfa(bid.公积金查询,220/5)		--B组
--newidfa(bid.西十区,5/5)			--A组
--newidfa(bid.闪电修,120/20)			--B组
--newidfa(bid.地一森林舞会,620/10)		--B组
--newidfa(bid.四方坦克大战,1050/5)		--B2组
--newidfa(bid.熊猫网赚,3200/20)		--B组
--newidfa(bid.银河战舰,1500/20)		--A组
--newidfa(bid.多多优惠券,160/2)		--A组
--newidfa(bid['dido－見面追蹤小助手'],520/20)		--B组
--newidfa(bid.环球娱乐,4000/20)		--A组
--newidfa(bid.老虎机,4000/20)		--A组
--newidfa(bid.北京购车,4000/10)		--A组
--newidfa(bid.孤王之战,4000/20)		--A组
--newidfa(bid.捞月狗,1200/20)		--B组
--newidfa(bid.东方讯飞,80/1)		------
--newidfa(bid.期货财富宝,80/1)		------B组
--newidfa(bid.车开新二手车,80/1)		------B组
--newidfa(bid.音遇,1210/10)		------B组
--newidfa(bid.上门帮,101/1)		------B组
--newidfa(bid.斗鱼直播,15000/40)		------all组



function ends()
	
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	vpnx()
	sys.msleep(2000)
	
end
--]]
function main()
while true do
	log("vpn-key")
	if false or  vpn() then
		if true or checkip()then
	-----------------------------------
			local TaskDate = ( get_task() )
			if TaskDate then
				for i,v in ipairs(TaskDate) do
					work = v.work
					task_id = v.task_id
					bid={}
					bid[work]={}
					bid[work]['keyword']=v.keyword
					if string.len(v.appbid)>5 then	bid[work]['appbid']=v.appbid end
					if string.len(v.appid)>5 then	bid[work]['appid']=v.appid	end
					if bid[work] ~= nil then
						newidfa(bid[work]['appbid'])
					else
						log('没有设置app')
					end
				end
			end
	------------------------------------
		end
	end
	ends()
end
end


while (true) do
	local ret,errMessage = pcall(main)
	if ret then
	else
		sys.alert(errMessage, 15)
		delay(1)
	end
end






