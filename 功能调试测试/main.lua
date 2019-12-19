-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('faker')
require('xxtsp')

local curl = require('lcurl')
local e = curl.easy()

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


-- 登apple ID


--app.open_url("prefs:root=STORE")
--app.open_url("prefs:root=General")


--[[
登录 = {{
	{443, 474, 0x007aff},
	{199, 481, 0x007aff},
	{174, 471, 0xf8f8f8},
}, 85, 137, 442, 498, 501}

click(116, 335)
input('a@gemehouse.com')
delay(2)
click(124, 384)
input('Whoami@1314')
delay(2)


d(登录,'登录',true)
滑动key = 1
while true do
	
	if 滑动key == 1 then
		moveTo(120, 619,482, 622)
		滑动key = 滑动key + 1
	elseif 滑动key == 2 then
		moveTo(120, 619,502, 622)
		滑动key = 滑动key + 1
	elseif 	滑动key == 3 then
		moveTo(120, 619,525, 622)	
		滑动key = 滑动key + 1
		if 滑动key >= 3 then
			滑动key = 1
		end	
	end
	delay(2)			
end				

--]]--
--vpnx()
--delay(3)
--XXTfakerNewPhone('com.zmlearn.ZMParent')
--vpn()
--url = 'http://www.1n.cn/mobile.php/?s=Game/open_game/pid/2202/game_id/638.html'

--openUrl(url)



--log(app.front_bid())

--[[]]
function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or '1235'
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end


--while true do
--moveTo(331, 941,242, 309)
--delay(5)
--click(567, 774)
--delay(3)
--moveTo(609, 914,118, 914)
--moveTo(609, 914,118, 914)
--delay(2)
--click(270, 932)
--idfa = pasteboard.read()
--log(idfa)
--up('抖音链接','上传成功')
--end

--]]
idfa = '12345678'
 up('测试idfa','测试idfa')



















