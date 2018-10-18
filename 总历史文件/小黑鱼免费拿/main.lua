nLog = require('nLog')()
require('faker')
require('xxtsp')
require("yumi")
YUMI()
require("name")

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
--		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.小黑鱼 = 'com.xhy.blackfish.app'






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
	idfalist.idfa = idfa or phone
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








page={}
page.url_打开={{{472,627,0x007aff},{199,629,0x007aff},}, 85, 94, 484, 537, 666}



function open()
	local url = "https://h5.blackfish.cn/m/shop/power/home/129218?hideNavigation=1"
	local TimeLine = os.time()
	local OutTime = 60*3
	
	openUrl(url)
	delay(3)
	
	while os.time()-TimeLine < OutTime do
		if d(page.url_打开,"page.url_打开",true)then
			return true
		end
		delay(0.5)
	end
	
	
end

input("18545097149")



function checkphone()
	local TimeLine = os.time()
	local OutTime = 60*3
	
	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	
	local 取短信次数 = 0
	
	while os.time()-TimeLine < OutTime do
		if active(bid.小黑鱼,5)then
			
			
			
			
			
			
			
		end
		delay(0.5)
	end
end














































































