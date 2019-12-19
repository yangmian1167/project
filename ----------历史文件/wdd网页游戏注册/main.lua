-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('LuaDemo')
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

function upidfa(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name or '天天怼三国'
	idfalist.idfa = idfa or account
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or device.name()
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other or tturl
	return post(url,idfalist)
end



appbid = 'com.apple.mobilesafari'
--url1 = 'http://www.1n.cn/mobile.php/?s=Game/open_game/pid/2202/game_id/636.html'
--url2 = 'http://www.1n.cn/mobile.php/?s=Game/open_game/pid/2267/game_id/636.html'
--url = 'http://www.1n.cn/mobile.php/?s=Game/open_game/pid/2267/game_id/636.html'
url1 = 'http://www.1n.cn/mobile.php/?s=Game/open_game/pid/2267/game_id/636.html'
url2 = 'http://www.1n.cn/mobile.php/?s=Game/open_game/pid/2202/game_id/636.html'

wy = {}
wy.去注册 = {{
	{380, 922, 0xff7417},
	{382, 860, 0x5ab4e1},
	{376, 818, 0x5ab4e1},
	{269, 823, 0x5abf5b},
}, 85, 190, 784, 455, 945}

wy.注册界面 = {{
	{294, 163, 0xb2b2b2},
	{294, 186, 0x696969},
	{318, 186, 0x7f7f7f},
	{343, 186, 0xcacaca},
	{343, 163, 0x8b8b8b},
}, 85, 282, 156, 362, 194}

wy.账号注册界面 = {{
	{457, 289, 0xff7417},
	{458, 293, 0xff7417},
	{505, 289, 0xff7417},
	{505, 292, 0xff7417},
}, 85, 447, 227, 526, 513}
wy.完成 = {{
	{611, 663, 0x007aff},
	{580, 665, 0x007aff},
}, 85, 544, 590, 631, 741}
wy.立即注册 = {{
	{338, 876, 0xfffcfa},
	{ 94, 850, 0xff7417},
	{ 96, 891, 0xff7417},
	{534, 851, 0xff7417},
}, 85, 34, 761, 598, 1026}

wy.创建角色 = {{
	{525, 962, 0xdb7d31},
	{520, 942, 0xf0ad77},
	{483, 937, 0xf6c096},
	{387, 931, 0xfbd2b1},
	{450, 955, 0xfee2b6},
}, 85, 369, 900, 551, 1021}

wy.验证码错误 = {{
	{ 41, 748, 0xff5b53},
	{ 33, 755, 0xff5b53},
	{ 41, 764, 0xff5b53},
	{163, 754, 0xff3f36},
}, 85, 26, 732, 340, 777}



function main()
	infkey = true
	local TIMEline = os.time()
	local OUTtime = rd(120,150)
	while os.time() - TIMEline < OUTtime do
		if active(appbid,5) then
			if d(wy.验证码错误,'wy.验证码错误',true) then
				return false
			elseif d(wy.去注册,'wy.去注册',true) then
			elseif d(wy.注册界面,'wy.注册界面') then
				if d(wy.账号注册界面,'wy.账号注册界面') then
					if infkey then	
						delay(5)
						screen.image(439, 436, 614, 513):save_to_png_file("/private/var/mobile/yzm.jpg")
						imgfile = "/private/var/mobile/yzm.jpg"
						orcYZM()
						delay(3)
						click(186, 474)
						input(string.lower(yzm_jg))
						d(wy.完成,'wy.完成',true)
						delay(2)
						account = myRand(4,8)
						click(183, 361)
						input(account)
						d(wy.完成,'wy.完成',true)
						delay(2)
						password = myRand(4,9)
						click(188, 595)
						input(password)
						delay(1)
						d(wy.完成,'wy.完成',true)
						delay(2)
						click(175, 702)
						input(password)
						d(wy.完成,'wy.完成',true)
						infkey = false
					end	
						if d(wy.立即注册,'wy.立即注册',true) then
							delay(5)
							upidfa('天天怼三国','点击注册')
							return true
						end
				else
					click(488, 264)
				end
			elseif d(wy.创建角色,'wy.创建角色',true) then
				return true
			end	
		end
		delay(1)
	end	
    return false
end

index = 1
function reg()
--	if index == 1 then
--		tturl = url1
--		index = index + 1
--	elseif index == 2 then
--		tturl = url2
--		if index >= 2 then
--			index = 1
--		end	
--	end
--tturl = url1
tturl = url2
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(appbid)	then
			openUrl(tturl)
			delay(3)
			if main() then
				upidfa()
				delay(3)
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
	
	
	
	








