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

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

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

function task_callback(task_id,success)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=Task.Task_callback'
	local postarr_ = {}
	postarr_['idfa'] = idfa
	local postArr = {}
	postArr.id = task_id
	postArr.success = success
	postArr.arr = json.encode(postarr_)
	log("wenfree")
	post(url,postArr)
	log("上传一次")
end

function checkip()
	local url = 'http://wenfree.cn/api/Public/idfa/?service=ip.checkip'
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			ip = data.data.ip or get_ip()
			log("ip可以用:OK.",true)
			return true
		else
			log("ip, 排重失败",true)
		end
	else
		log("ip服务器故障")
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
			
			if v.note == "ios13" then
				osList = {
					"13.0",	"13.0",	"13.0",	
					"13.1",	"13.1",	
					"13.1.2","13.1.2",
					"13.1.3",
					"13.2",
					"13.2.2",
					"13.2.3",
					"13.3",
					"13.3.1",
--					"13.4",
				}	
			elseif v.note == "ios12" then
				osList = {
					"12.3",	"12.3",	"12.3","12.3","12.3","12.3","12.3",
					"12.3.1","12.3.1","12.3.1",
					"12.3","12.3",
					"12.2","12.1.4",
				}
--			elseif v.note == "ios11" then
--				osList = {
--					"11.4","11.4","11.4","11.4","11.4","11.4","11.4","11.4",
--					"11.4.1","11.4.1","11.4.1","11.4.1","11.4.1","11.4.1","11.4.1",
--					"11.3.1","11.3.1",
--					"11.3",
--				}
			else
				osList = {
					"13.0","13.0","13.0",
					"13.1",	"13.1",	"13.1",	"13.1",	"13.1",	"13.1",	"13.1",	"13.1",	
					"13.1.2","13.1.2","13.1.2","13.1.2","13.1.2","13.1.2","13.1.2","13.1.2",
					"13.1.3","13.1.3","13.1.3",
					"13.2","13.2","13.2",
					"13.2.2","13.2.2","13.2.2",
					"13.2.3","13.2.3","13.2.3","13.2.3","13.2.3","13.2.3",
					"13.3","13.3","13.3","13.3","13.3",
					"13.3.1","13.3.1","13.3.1",
--					"13.4",
					"12.3.1",
					"12.3",
					"12.3",
					"12.2","12.1.4",
					"12.2",
--					"11.4","11.4","11.4","11.4","11.4","11.4","11.4","11.4",
--					"11.4.1","11.4.1","11.4.1","11.4.1","11.4.1","11.4.1","11.4.1",
--					"11.3.1","11.3.1",
--					"11.3",
				}
			end
			---设置系统完成
			
			if v.way == "金龙鱼" then
				package.loaded['jry'] = nil
				require("jry")
				main(v)
			elseif v.way == "王丹丹-四叶草" then
				package.loaded['wdd-syc'] = nil
				require("wdd-syc")
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
			elseif v.way == "wdd-趣玩" then
				package.loaded['quwang'] = nil
				require("quwang")
				main(v)			
			elseif v.way == "河北-巨掌" then
				package.loaded['juzhang'] = nil
				require("juzhang")
				main(v)
			elseif v.way == "刷td" then
			package.loaded['std'] = nil
			require("std")
			main(v)
			else
				package.loaded[v.way]=nil
				require(v.way)
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
		log(errMessage)
--		sys.alert(errMessage, 3)
		delay(5)
	end
end

































