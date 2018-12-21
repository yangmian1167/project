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
bid.app = "com.zlongame.continent"
bid.weibo = "com.sina.weibo"
weibo_url = "https://weibo.com/6404349915/GqjVI1gRq?from=page_1005056404349915_profile&wvr=6&mod=weibotime&type=comment"
weibo_url2 = "https://weibo.com/6404349915/Goo1oEQWf?from=page_1005056404349915_profile&wvr=6&mod=weibotime&type=comment"
weibo_url3 = "https://lnk0.com/wpY1s8?chn=weibo&td_subid=ShRcrW3A"

screen.init(1)
var = {}
var.lun = 0


kfy.id = '12968'
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

page.立即下载={{{525,793,0xfe9324},{501,774,0xffffff},{509,771,0xfe9224},}, 85, 470, 752, 600, 808}
page.打开={{{293,296,0x007aff},{338,300,0x007aff},{381,296,0x007aff},},85}


function open_weibo()
	screen.init(0)
	local TimeLine = os.time()
	local OutTime = 60*3
	openUrl(weibo_url3)
	delay(rd(3,5))
	
	while os.time()-TimeLine < OutTime do
--		if active(bid.weibo,5)then
			if d(page.立即下载,"page.立即下载",true)then
				delay(rd(2,5))
			elseif d(page.打开,"打开")then
				delay(rd(10,15))
				return true
			end
--		end
		delay(0.5)
	end
end




page.提示_开始下载={{{824,511,0xf59802},{323,508,0xa093b8},{884,89,0xdac4a0},},85}
page.提示_手机注册={{{418,358,0xd83d9b},{756,349,0xd83d9b},{579,136,0x000000},},85}
page.提示_手机注册_按钮={{{318,445,0x9d2191},{679,444,0xd83d9b},{208,120,0xd73d9a},},85}
page.提示_手机注册_界面={{{510,496,0xd83d9b},{211,412,0xc80080},{207,122,0xd73d9a},{544,103,0x000000},},85}
	page.提示_注册界面_获取验证码={{{815,294,0x9d2191},{825,280,0xffffff},{807,281,0xffffff},}, 85, 729, 266, 936, 317}
	page.提示_注册界面_注册提交={{{565,497,0xd83d9b},{556,492,0xffffff},}, 85, 491, 467, 644, 520}



function game()
	local TimeLine = os.time()
	local OutTime = 60*4
	screen.init(1)
	
	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	local 密码 = false

	local 取短信次数 = 0
	password = myRand(4,rd(8,12))

	while os.time()-TimeLine < OutTime do
		if active(bid.app,5)then
			if d(page.提示_开始下载,"page.提示_开始下载",true,1)then
			elseif d(page.提示_手机注册,"page.提示_手机注册",true,1)then	
			elseif d(page.提示_手机注册_按钮,"page.提示_手机注册_按钮",true,1)then	
			elseif d(page.提示_手机注册_界面,"page.提示_手机注册_界面")then
				if 取号 then
					if GET_Phone()then
						click(443, 220)
						input(phone,1,2)
						click(1078, 37)
						取号 = false
						密码 = true
					end
				elseif 密码 then
					click(538, 364)
					input(password,1,2)
					click(1078, 37)
					密码 = false
					验证码 = true				
				elseif 验证码 then
					if d(page.提示_注册界面_获取验证码,"提示_注册界面_获取验证码",true)then
						验证码 = false
						短信 = true
					end
				elseif 短信 then
					if GET_message(phone)then
						click(625, 366)
						input(sms)
						click(1078, 37)
						短信 = false
						提交 = true
					end
				elseif 提交 then
					if d(page.提示_注册界面_注册提交,"page.提示_注册界面_注册提交",true)then
						up(appname(bid.app),"reg")
						delay(3)
						return true
					end
				end
			end
		end
		delay(0.5)
	end
end



--XXTfakerNewPhone(bid.weibo)
open_weibo()
if XXTfakerNewPhone(bid.app)then
	game()
end































































