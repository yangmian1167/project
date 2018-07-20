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








page={}
page.ios9允许={{{441, 688, 0x007aff},{188, 693, 0x007aff},}, 85, 71, 424, 556, 729}
page.app主界面={{{547, 1068, 0x19a0f0},{560, 1079, 0xf9f9f9},{575, 1066, 0x19a0f0},}, 85}
	page.登录or注册={{{110, 97, 0xff9a14},{126, 98, 0xffd194},{132, 98, 0xfff9f1},}, 85, 42, 57, 317, 302}
page.右上角注册按钮={{{604,  83, 0x099fde},{383, 742, 0xff9a14},{ 40,  83, 0x099fde},}, 85}

page.done={{{604, 659, 0x007aff},{602, 652, 0x007aff},}, 85, 549, 569, 639, 740}
page.同意并继续={{{574, 1095, 0xff9913},{274, 1102, 0xffffff},{611,   87, 0xffffff},}, 85}
page.暂不认证={{{367, 889, 0xffffff},{370, 886, 0x999999},{451, 797, 0xff9a14},{203, 798, 0xff9a14},{295, 795, 0xffffff},}, 85, 100, 736, 426, 924}

page.注册13={{{338, 94, 0x333333},{339, 94, 0xafafaf},{340, 94, 0xffffff},}, 85}
	page.注册13_下一步={{{336, 706, 0xff9a14},{331, 706, 0xffffff},{327, 697, 0xffffff},}, 85, 142, 668, 490, 738}
page.注册23={{{342, 94, 0x333333},{342, 92, 0xffffff},{349, 93, 0x333333},}, 85}
	page.注册23_下一步={{{235, 649, 0xffffff},{229, 631, 0xff9a14},{237, 664, 0xff9a14},}, 85, 165, 614, 476, 689}
page.注册33={{{334, 84, 0x3b3b3b},{330, 84, 0xffffff},{328, 91, 0x333333},{354, 83, 0x333333},}, 85}
	page.注册33_完成={{{310, 695, 0xffffff},{312, 698, 0xff9a14},{313, 688, 0xff9a14},}, 85, 253, 657, 385, 732}


function reg()
	local TimeLine = os.time()
	local OutTime = 60*3

	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	password = myRand(4,rd(8,10))

	local 取短信次数 = 0

	while os.time()-TimeLine < OutTime do
		if active(bid.携程旅行,3)then

			if d(page.右上角注册按钮,"page.右上角注册按钮",true)then
			elseif d(page.app主界面,"page.app主界面",true)then
			
				d(page.登录or注册,"page.登录or注册",true)
			elseif d(page.暂不认证,"page.暂不认证",true)then
				delay(2)
				return true
			elseif d(page.同意并继续,"page.同意并继续",true)then
				取号 = true
			elseif d(page.注册33,"注册33",true)then
				click(419, 435)
				input(password)
				d(page.done,"page.done",true)
				if d(page.注册33_完成,"page.注册33_完成",true) then
					up(appname(bid.携程旅行),"设置密码")
					delay(2)
				end

			elseif d(page.注册23,"注册23",true)then
				if 短信 then
					if GET_message(phone)then
						click(120, 492)
						input(sms)
						d(page.done,"page.done",true)
						短信 = false
						提交 = true
					else
						delay(3)
					end
				elseif 提交 then
					if d(page.注册23_下一步,"page.注册23_下一步",true)then
						up(appname(bid.携程旅行),"提交注册")
						delay(2)
						提交 = false
					end
				else
					click(40,80)
				end


			elseif d(page.注册13,"注册13",true)then
				if 取号 then
					if GET_Phone() then
						click(418, 544)
						input(phone)
						d(page.done,"page.done",true)
						取号 = false
						验证码 = true
					end
				elseif 验证码 then
					if d(page.注册13_下一步,"page.注册13_下一步",true)then
						delay(2)
						短信 = true
					end
				end


			else
				if not(d(page.ios9允许,"page.ios9允许",true))then
					moveTo(600,500,100,500,50,30)
					delay(1)
					click(550, 1088)
				end
			end
		end
		delay(1)
	end
end


while true do
if vpn()then
if XXTfakerNewPhone(bid.携程旅行)then
	reg()
end
vpnx()
end
end









































































