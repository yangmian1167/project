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
		end
	end
	end
	vpnx()
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
newidfa(bid.期货财富宝,80/1)		------


















