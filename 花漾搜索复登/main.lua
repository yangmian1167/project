nLog = require('nLog')()
require('faker')
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


appbid = "com.chinaso.search"






screen.init(0)
var = {}
var.lun = 0
--全局变量


function getdevice()
	local url = 'http://wenfree.cn/api/Public/idfa/'
	local devicelist ={}
	devicelist.service = 'Idfa.GetNday'
	devicelist.name = '花漾搜索'
	devicelist.rate = '100'
	devicelist.day = '4'
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
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(22,25)
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






function reg()
	data = getdevice()
	devices = json.decode(data.data.device)
--	log(device)
	ids = data.data.id
	log(ids)
	if devices ~= nil then
		if back(appbid) then
			backid(ids)
		end	
	end
	
end

while (true) do
	local ret,errMessage = pcall(reg)
	if ret then
	else
		log(errMessage)
--		sys.alert(errMessage, 3)
		delay(5)
	end
end










