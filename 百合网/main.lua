nLog = require('nLog')()
require('faker')
require('xxtsp')
require("yumi")
require("name")
YUMI()

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
bid.携程旅行 = 'ctrip.com'
bid.百合网='com.baihe.online'




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






--phone = ''

--GET_Phone()
--input(phone)

bh = {}
bh.注册界面 = {{{373, 1064, 0x6cb1e0},{512, 1067, 0x5aa7dd},{506, 1062, 0x5ea9dd},}, 85, 362, 1057, 522, 1093}
bh.获取验证码 = {{{421, 366, 0xff7949},{497, 370, 0xff5e5f},{549, 371, 0xff4b6f},}, 85, 403, 358, 565, 405}
bh.获取中 = {{{407, 565, 0x1283ff},{424, 361, 0xf5b29b},{554, 390, 0xf59bae},}, 85, 361, 59, 608, 618}
bh.输入密码 = {{{ 85, 477, 0xc7c7cd},{122, 478, 0xc7c7cd},{137, 477, 0xc7c7cd},}, 85, 68, 462, 382, 514}
bh.tips = {}
bh.tips_该手机号已注册 = {{{164, 645, 0x007aff},{418, 640, 0x007aff},{203, 490, 0x000000},}, 85}



function baihe()
	local timeline = os.time()
	local outtime = 60*3
	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	
	password = myRand(4,rd(8,12))
	
	
	
	while true do	
		if active(bid.百合网) then
			if 取号 then
				if d(bh.注册界面,"bh.注册界面") then
					if GET_Phone() then
						click(83, 395)
						input(phone)
						取号 = false
						验证码 = true
					end
				end	
			elseif 验证码 then
				if d(bh.获取验证码,"bh.获取验证码",true,1) then
					验证码 = false
					短信 = true
				end	
			elseif 短信 then
				if d(bh.获取中,"bh.获取中") then
					if d(bh.输入密码,"bh.输入密码",true,1) then
						input(password)
					elseif GET_Message(phone) then
						click(86, 380)
						input(SMS)
						短信 = false
						提交 = true
					else
						delay(3)
					end
				end
			elseif 提交 then
				
			
			elseif d(bh.tips_该手机号已注册,"bh.tips_该手机号已注册",true,1)  then
				return true
				
			end
		end
	end
end
	
	
baihe()




























