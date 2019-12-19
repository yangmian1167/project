nLog = require('nLog')()
require('xxtsp')



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






-- 此处为nLog功能实现操作

function xxtinstall()
	local XXTFaker = (
	function(url, hash)
		os.remove("/var/mobile/Media/1ferver/lua/scripts/XXTFaker.xxt")
		local faker_path = "/var/mobile/Media/1ferver/lua/XXTFaker.xxt"
		local verify = 
		function(path, hash)
			local data = file.reads(path)
			if data and data:md5():lower() == hash:lower() then
				return true
			else
				os.remove(path)
				return false
			end
		end
		local download_and_verify = 
		function(url, path, hash)
			local done = false
			thread.dispatch(
				function()
					local count = 0
					while not done do
						sys.toast('正在下载伪装模块（XXTFaker）.'..string.rep('.', count%6))
						count = count + 1
						sys.msleep(30)
					end
				end
				)
			local c, h, r = http.get(url, 30)
			done = true
			sys.msleep(50)
			sys.toast('', -1)
			if c == 200 then
				file.writes(path, r)
				if verify(path, hash) then
					return true
				end
			end
			return false
		end
		local faker = nil
		if verify(faker_path, hash) then
			faker = require("XXTFaker")()
		else
			if download_and_verify(url, faker_path, hash) then
				faker = require("XXTFaker")()
				faker.uninstall()
			else
				sys.alert("伪装模块（XXTFaker）下载失败\n\n请检查网络后重新尝试")
				os.exit()
			end
		end
		return faker
	end)
	(
		"http://wenfree.cn/static/XXTFaker.xxt",
		"7EDDED1E3FEA5C91948F853E5C910DD7"
	)
	
	function XXTFakerisok()
		local 时间线 = os.time()
		local 超时 = 60
		
		while os.time()-时间线<60 do
			if not XXTFaker.exists() then
				XXTFaker.install()
			else
				sys.toast("XXTFaker is ok")
				nLog("XXTFaker is ok")
				return true
			end
		end
	end
	
	return XXTFakerisok()
end

--[[获取当前伪装的bid表]]
function XXTfakerGetbid()
	return XXTFaker.get_appbid()
end
--[[清空伪装]]
function XXTfakerClear(t)
    return XXTFaker.clear_config(
		t
    )
end
--[[获取当前伪装数据]]
function XXTfakerGetinfo(bid)
	return XXTFaker.get_config(bid)
end
--[[一键新机]]
function XXTfakerBackPhone(bid,info)
	app.close(bid)
	sys.msleep(200)
	clear.all_keychain()
	clear.pasteboard()
	clear.app_data(bid)
	clear.idfav()
	XXTFaker.filter_app({bid})
	log('一键还原',true)
	
	return XXTFaker.set_config(
				{bid},
				info
			)

end
--------xxt的函数
--log('--faker--')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end





screen.init(0)
var = {}
var.lun = 0
--全局变量


function getdevice()
	local url = 'http://wenfree.cn/api/Public/idfa/'
	local devicelist ={}
	devicelist.service = 'Idfa.GetNday'
	devicelist.name = work
	devicelist.rate = '100'
	devicelist.day = day
	local getdata = post(url,devicelist)
	if getdata then
		getdata = json.decode(getdata)
		log(getdata)
		return getdata
	end
end	

function backid(id)
	local url = 'http://wenfree.cn/api/Public/idfa/'
	local idlist ={}
	idlist.service = 'Idfa.Todocallback'
	idlist.id = id
	return post(url,idlist)
end	


function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
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


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function back(bids,times)
	if false or vpn()then
		delay(3)
		if XXTfakerBackPhone(bids,devices)then
--			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(25,28)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.right,"apparr.right",true)then
					else
						moveTo(600,300,100,100,30,50)
						delay(1)
--							click(321, 978)
--							delay(1)
--							click(462, 666)
--							delay(1)
					end
				end
			end

		end
	end
	vpnx()
	delay(3)
	log("关闭VPN-------->>>>>>>")
	return true
end



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

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function main(v)
	day = v.adid
	work = v.work
	appbid = v.appbid
	task_id = v.task_id
	
	data = getdevice()
	log(data)
	if data.data ~= "暂无帐号" then
		devices = json.decode(data.data.device)
	else
		dialog("核对日期",10)
		return 
	end
	ids = data.data.id
	log(v)
	if devices ~= nil then
		if back(appbid) then
			backid(ids)
			back_pass(task_id,"ok")
		end	
	end
	
end











