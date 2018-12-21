nLog = require('nLog')()
require('faker')
require('xxtsp')
require("alz")
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
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.YYRecreation = 'com.yyqp.app'






screen.init(2)
var = {}
var.lun = 0


kfy.id = '11967'
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








page={}
page.右上角注册按钮={{{1084,40,0xbd8c47},{682,447,0x25709c},{583,527,0x9f2f18},},85}
page.注面主界面={{{1015,66,0xfffefe},{497,82,0xffe98c},{546,538,0x5875b3},},85}
page.确定={{{577,538,0x5875b3},{569,540,0xd8dfed},}, 85, 504, 516, 654, 561}
page.发送验证码={{{855,364,0x5671ac},{863,358,0xe6ebf4},}, 85, 764, 343, 911, 385}

page.done={{{1064,291,0x007aff},{1065,280,0x007aff},{1046,287,0x007aff},}, 85, 994, 90, 1129, 396}
page.发送验证码成功={{{573,415,0x5875b3},{493,212,0xe1cc8b},{640,212,0xd4bf72},},85}
page.更新完成_退出游戏={{{550,397,0x007aff},{520,398,0x007aff},{340,227,0xe8dfcc},},85}
page.公告X={{{890,135,0xfffefe},{630,150,0xfee684},{482,151,0xe9cf70},},85}
page.全民代理={{{604,479,0xe9a80b},{605,471,0xe9a80b},{800,149,0xfffffb},{627,157,0xfffeeb},},85}

function checkphone()
	local TimeLine = os.time()
	local OutTime = 60*4

	local 取号 = false
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	local 密码 = true
	
	local Names = "ZZ"..myRand(4,6,1)
	local nameKey = true

	local 取短信次数 = 0
	password = myRand(4,rd(8,12))

	while os.time()-TimeLine < OutTime do
		if active(bid.YYRecreation,5)then
			if d(page.右上角注册按钮,"page.右上角注册按钮",true,1)then

			elseif d(page.注面主界面,"page.注面主界面")then
				
				if nameKey then
					click(499, 204)
					click(1067, 519)
					click(1067, 519)
					click(1067, 519)
					click(1067, 519)
					click(1067, 519)
					input(Names,1,2)
					d(page.done,"page.done",true)
					nameKey = false
				elseif 密码 then
					click(534,277)
					input(password,1,2)
					d(page.done,"page.done",true)
					密码 = false
					取号 = true
				elseif 取号 then
					if GET_Phone()then
						click(544,362)
						input(phone,1,2)
						d(page.done,"page.done",true)
						delay(1)
						取号 = false
						验证码 = true
					end
				elseif 验证码 then
					if d(page.发送验证码,"发送验证码",true)then
						验证码 = false
						短信 = true
					end
				elseif 短信 then
					if GET_message(phone)then
						click(488, 441)
						input(sms,1,2)
						d(page.done,"page.done",true)
						短信 = false
						提交 = true
					else
						delay(2)
					end
				elseif 提交 then
					if d(page.确定,"page.确定",true)then
						up(appname(bid.YYRecreation),"提交注册")
						delay(6)
					end
				end
			else
				if d(page.发送验证码成功,"page.发送验证码成功",true,1)then
				elseif d(page.更新完成_退出游戏,"page.更新完成_退出游戏",true,1)then
					vpn()
				elseif d(page.公告X,"公告X",true,1)then
				elseif d(page.全民代理,"全民代理",true,1)then
					delay(5)
					return true
				end
			end
		end
		delay(0.5)
	end
end





while true do
	if false or XXTfakerNewPhone(bid.YYRecreation)then
		delay(1)
		checkphone()
		vpnx()
	end
end



































































