nLog = require('nLog')()
require('faker')
require('xxtsp')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end
--[[
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

--]]--

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





urls = "https://m.changyoyo.com/partner/index.htm#shareTo?inviteCode=224b0406e0761ddbae80458ea5c116d1"
openUrl(urls)



cxj = {}
cxj.畅享家会员俱乐部权益 = {{{ 32, 191, 0x8d8c92},{ 42, 191, 0x1b1923},{183, 191, 0xc0c0c3},{362, 192, 0xffffff},{456, 190, 0xffffff},{459, 190, 0x1b1923},}, 85, 5, 59, 630, 234}
	cxj.畅享家会员俱乐部权益_立即开通 = {{{270,  981, 0x181218},{266, 1020, 0x7f6d56},{281, 1024, 0xe4c696},{ 63,  997, 0xe56146},{ 62,  972, 0xfdead4},}, 85, 32, 933, 621, 1132}





function reg()













end


































