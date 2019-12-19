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






-- 总的脚本, 用渠道名来区分脚本

function get_task()
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.gettask'
	local postArr = {}
	postArr.phonename = phonename or device.name()
	postArr.imei = phoneimei or sys.mgcopyanswer("SerialNumber")
	local taskData = post(url,postArr)
	
	if taskData ~= nil then
		taskData = json.decode(taskData)
		log(taskData)
		
		if taskData.data == "新增手机" or taskData.data == "暂无任务" then
			log(taskData.data,true)
			delay(30)
			return false
		else
			return taskData.data
		end
	end
end

function ends()
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	vpnx()
	sys.msleep(2000)
end

function all()

	local TaskDate = ( get_task() )
	if TaskDate then
		for i,v in ipairs(TaskDate) do
			
			if v.note == "ios12" then
				osList = {
					"12.0",
					"12.0.1",
					"12.0.2",
					"12.1",
					"12.1.1",
					"12.1.2",
				}
			elseif v.note == "ios11" then
				osList = {
					"11.0",
					"11.0.1",
					"11.0.2",
					"11.1",
					"11.3.3",
					"11.2.2",
				}
			else
				osList = {
					"12.0",
					"12.0.1",
					"12.0.2",
					"12.1",
					"12.1.1",
					"12.1.2",
					"11.0",
					"11.0.1",
					"11.0.2",
					"11.1",
					"11.3.3",
					"11.2.2",
				}
			end
			---设置系统完成
			
			if v.way == "金龙鱼" then
				package.loaded['jry'] = nil
				require("jry")
				main(v)
			elseif v.way == "王丹丹" then
				package.loaded['wdd'] = nil
				require("wdd")
				main(v)
			elseif v.way == "杨州" then
				package.loaded['yzdd'] = nil
				require("yzdd")
				main(v)
			elseif v.way == "深圳鱼-热云" then
				package.loaded['szry'] = nil
				require("szry")
				main(v)
			elseif v.way == "安徽-聪明钱" then
				package.loaded['cmq'] = nil
				require("cmq")
				main(v)
			elseif v.way == "深圳鱼-爱钱进" then
				package.loaded['aqj'] = nil
				require("aqj")
				main(v)
			end
			
		end
	end
	------------------------------------
	ends()
	
end

while (true) do
	local ret,errMessage = pcall(all)
	if ret then
	else
		sys.alert(errMessage, 3)
		delay(1)
	end
end

































