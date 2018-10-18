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
bid.融360 = "com.rong360.victor"
bid.全日空海淘 = "acd.mall.apps.20170619"


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

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

--融360
--urls = "http://m.rong360.com/app/osdown/?ios=https://itunes.apple.com/cn/app/id1026689855?mt=8&android=https://campaign.rong360.com/applanding/rongapp/landing_22.html?&weixin=&from=zckj_xgxyk_ceshi01"
--全日空海淘
urls = "https://at.umeng.com/jCmiqi"
function open(urls)
	openUrl(urls)
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
end




function newidfa(bids,times)
	for i= 1,times do
		if false or vpn()then
			XXTfakerNewPhone('com.apple.mobilesafari')
			delay(1)
			if open(urls) then
				if XXTfakerNewPhone(bids)then
					idfa = XXTfakerGetinfo(bids)['IDFA']
					local TIMEline = os.time()
					local OUTtime = rd(150,200)
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
		end
		vpnx()
		delay(3)
		log("关闭VPN-------->>>>>>>")
	end
end



--newidfa(bid.大码微拍,540/10)		--B组
--newidfa(bid.开天斩龙,1100/10)		--B组	
--newidfa(bid.赚钱啦,250/1)		--B组
--newidfa(bid.四方坦克大战,220/10)		--B2组
--newidfa(bid.融360,100/1)		--A组
newidfa(bid.全日空海淘,20/1)		--AAAAAAAAA测试机


	





















