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

url = 'https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-jiaoliantuiguang/down.html?jxpid=v3_59260679&cityCode=&proxyName=%25E6%259D%25A8%25E5%25BA%25B7&jxrid=59260679'
safari = 'com.apple.mobilesafari'

--appbid = 'com.owohonline.owohapp'
appbid = app.front_bid()
log(appbid)


--XXTfakerNewPhone(appbid)


--[[]]
function main()
	vpnx()
	delay(3)
	if vpn() then
		delay(3)
		if XXTfakerNewPhone(safari)then
			delay(3)
			openUrl(url)
			local timeline = os.time()
			local outtime = math.random(15,20)
			while os.time() - timeline < outtime do
				click(316, 891)
				click(171, 643)
				click(171, 643)
			end	
			closeX(app.front_bid())
		end
	end
	
end

while true do
	main()
end
--]]
--openUrl(url)













