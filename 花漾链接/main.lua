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

--atexit(function() 
--		sys.toast('脚本结束了！')
--		vpnx()
--		local appbids = app.front_bid()
--		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
--			--closeX(appbids)
--		end
		
--		sys.msleep(500)
--	end)

bid={}
bid.花漾搜索 = "com.chinaso.search"




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

url = 'https://appstat.chinaso.com/cb/installation_track?utm_campaign=投放&utm_medium=监测&utm_source=抖音&utm_term=ios&project=default&channel_name=toutiao_track&idfa=__IDFA__&imei=__IMEI__&mac=__MAC__&os=__OS__&callback_url=__CALLBACK_URL__' 

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
				fakerdevice = XXTfakerGetinfo(bids)['IDFA']
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



--newidfa(bid['花漾搜索'] ,20/1)		--all


url = 'https://appstat.chinaso.com/cb/installation_track?utm_campaign=投放&utm_medium=监测&utm_source=抖音&utm_term=ios&project=default&channel_name=toutiao_track&idfa=__IDFA__&imei=__IMEI__&mac=__MAC__&os=__OS__&callback_url=__CALLBACK_URL__' 
openUrl('https://appstat.chinaso.com/cb/installation_track?utm_campaign=%E6%8A%95%E6%94%BE&utm_medium=%E7%9B%91%E6%B5%8B&utm_source=%E6%8A%96%E9%9F%B3&utm_term=ios&project=default&channel_name=toutiao_track&idfa=__IDFA__&imei=__IMEI__&mac=__MAC__&os=__OS__&callback_url=__CALLBACK_URL__')



















