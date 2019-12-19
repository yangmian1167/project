-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
--require('LuaDemo')
require('faker')

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
--[[
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
function upidfa(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name or '权游预约'
	idfalist.idfa = idfa or account
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or device.name()
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other 
	return post(url,idfalist)
end



appbid = 'com.apple.mobilesafari'

url = 'http://hero.longtugame.com/t2/247/4900.html?channel=jwhd'
qy = {}
qy.Apple预约 = {{
	{113, 952, 0xffffff},
	{ 68, 921, 0x000000},
	{288, 976, 0x000000},
	{343, 927, 0xae2e0d},
	{558, 972, 0xa9290f},
	{382, 946, 0xffffff},
}, 85, 0, 0, 0, 0}

qy.预约测试资格弹窗 = {{
	{311, 339, 0xfce8ca},
	{265, 332, 0xffebcd},
	{201, 328, 0x181818},
	{454, 366, 0x181818},
	{455, 379, 0xf6f6f6},
	{202, 379, 0xf6f6f6},
}, 85, 0, 0, 0, 0}

qy.键盘完成 = {{
	{611, 585, 0x007aff},
	{570, 575, 0x007aff},
	{577, 586, 0x007aff},
}, 85, 554, 542, 631, 634}

qy.预约完成 = {{
	{210, 762, 0xf6f6f6},
	{209, 767, 0x211610},
	{428, 796, 0x221711},
	{428, 805, 0xf6f6f6},
}, 85, 202, 754, 448, 808}

qy.加载中 = {{
	{49, 118, 0x007aff},
	{52, 116, 0x007aff},
}, 85, 27, 109, 611, 125}
function main()
	local outtime = os.time()
	local timeline = rd(100,130)
	openUrl(url)
    delay(5)
	while os.time() - outtime < timeline do
		if d(qy.加载中,'qy.加载中') then
			delay(3)
		elseif d(qy.预约完成,'qy.预约完成',true) then
			delay(2)
			return true
		elseif d(qy.预约测试资格弹窗,'qy.预约测试资格弹窗',true) then
			delay(3)
			click(293, 473)
			account = myRand(5,rd(7,11))
			input(account)
			d(qy.键盘完成,'qy.键盘完成',true)
			delay(2)
			click(246, 578)
			phone = myRand(2)
			input(phone)
			d(qy.键盘完成,'qy.键盘完成',true)
			delay(2)
			click(328, 792)
		elseif d(qy.Apple预约,'qy.Apple预约',true) then
		else
			moveTo(382, 614,380, 338)
	
		end
	
	end
end

function reg()
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(appbid)	then	
			if main() then
				upidfa()
			end	
		end
	end
end

while true do
	local ret,errMessage = pcall(reg)
	if ret then
		log(errMessage)
	end
end	






















