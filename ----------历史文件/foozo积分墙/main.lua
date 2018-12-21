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





--[[
合金装甲
排重：http://ft.api.foozo.cn/channel/distinct.html
点击：http://ft.api.foozo.cn/channel/click.html
appid: 1247820473
iTunes 地址：[图片]https://itunes.apple.com/cn/app/id1247820473?mt=8
接口类型:点击+去重
--]]

screen.init(0)
bid={}
bid.合金装甲 = { 1247820473,"com.yinhe.hjzj.ios"}


var = {}
var.lun = 0
var.adid = 2033

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
	return json.decode(post(url,idfalist))["data"]["id"]
end

function checkidfa(appid,idfa)
	local url = "http://ft.api.foozo.cn/channel/distinct.html?appid=".. appid .."&idfas=".. idfa .."&adid=2033"
	log(url)
	local data = json.decode(get(url))
	log(data or "nil")
	if data.code == 0 then
		log("idfa, 排重成功",true)
		return true
	else
		log("idfa, 排重失败",true)
	end
end


function idfaisok(name)
	XXTfakerNewPhone(bid[name][2])
	idfa = XXTfakerGetinfo(bid[name][2])['IDFA']
	return checkidfa(bid[name][1],idfa)
end

function activeLink(name,id)
	local linkarr={}
	linkarr.appid = bid[name][1]
	linkarr.idfa = idfa
	linkarr.adid = 2033
	linkarr.click_time = os.time()
	linkarr.ip = get_ip()
	linkarr.notify_url = "http://idfa888.com/Public/idfa/?service=idfa.callback&id="..id
	log(linkarr)
	local url = "http://ft.api.foozo.cn/channel/click.html"
	data = json.decode(post(url,linkarr))
	log(data or "nil")
	if data.code == 0 or data.msg == "success" then
		return true
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

function newidfa(name,times)
	for i= 1,times do
		
		local TIMEline = os.time()
		local OUTtime = rd(30,40)
		while os.time()- TIMEline < OUTtime do
			if active(bid[name][2],5)then
				if d(apparr.right,"apparr.right",true)then
					
				else
					moveTo(600,300,100,100,30,50)
					delay(1)
					click(321, 978)
					delay(1)
					click(462, 666)
					delay(1)
				end
			else
				log("启动一次")
			end
		end

	end
end

--期货掌中宝
function Wallidfa(name)
	if true or vpn() then
		if idfaisok(name)then
			newidfa(name,1)
			if activeLink(name,up(name,'排重成功')) then
				up(name,'激活-等待回调')
			end
		end
	end
	delay(1)
end

while true do

	Wallidfa("合金装甲")
	
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	sys.msleep(2000)
	vpnx()
end




































