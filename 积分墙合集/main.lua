nLog = require('nLog')()








-- 总的脚本, 用渠道名来区分脚本



package.loaded['jry'] = nil
require("jry")
require("szry")
require("wdd")
require("yzdd")

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

































