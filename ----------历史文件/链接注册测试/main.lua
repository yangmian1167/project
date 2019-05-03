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

bid={}
bid.大码微拍 = "com.xmfg.dmwp"
bid.开天斩龙 = "com.kai.tian.ktzl"
bid.赚钱啦 = "sz.parttimejob"
bid.四方坦克大战 = "com.sfgame.sftkdz"
bid.融360 = "com.rong360.victor"
bid.全日空海淘 = "acd.mall.apps.20170619"
bid.无忧行 = "com.cmi.jegotrip"
bid.独角秀 = "com.mydeershow.www"


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

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

--融360
--urls = "http://m.rong360.com/app/osdown/?ios=https://itunes.apple.com/cn/app/id1026689855?mt=8&android=https://campaign.rong360.com/applanding/rongapp/landing_22.html?&weixin=&from=zckj_xgxyk_ceshi01"
--全日空海淘
urls = "https://at.umeng.com/C09j0j"
function open(urls)
	openUrl(urls)
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
end
--[[
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

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function newidfa(keys,times)
	for i= 1,times do
		if false or vpn()then
			XXTfakerNewPhone('com.apple.mobilesafari')
			delay(1)
			if open(urls) then
				if XXTfakerNewPhone(bid[keys])then
					idfa = XXTfakerGetinfo(bid[keys])['IDFA']
					local TIMEline = os.time()
					local OUTtime = rd(45,50)
					while os.time()- TIMEline < OUTtime do
						if active(bid[keys],4)then
							if d(apparr.right,"apparr.right",true)then
							else
								moveTo(600,300,100,100,30,50)
								delay(1)
										click(321, 978)
										delay(1)
										click(462, 666)
										delay(1)
							end
						end
					end
					up(appname(bid[keys]),'初次上传')
					back_pass(task_id,"ok")
				end
			end	
		end
		vpnx()
		delay(3)
		log("关闭VPN-------->>>>>>>")
	end
end



while true do
	log("vpn-key")

	-----------------------------------
			local TaskDate = ( get_task() )
			if TaskDate then
				for i,v in ipairs(TaskDate) do
					work = v.work
					task_id = v.task_id
					if bid[work] ~= nil then
						newidfa(work,1)
					end
				end
			end
	------------------------------------
	ends()
end

--]]--
	

urls = 'http://e.cn.miaozhen.com/r/k=2114350&p=7Mg1m&dx=__IPDX__&rt=2&ns=__IP__&ni=__IESID__&v=__LOC__&xa=__ADPLATFORM__&tr=__REQUESTID__&mo=__OS__&m0=__OPENUDID__&m0a=__DUID__&m1=__ANDROIDID1__&m1a=__ANDROIDID__&m2=__IMEI__&m4=__AAID__&m5=__IDFA__&m6=__MAC1__&m6a=__MAC__&vo=337a1aadb&vr=2&o=https%3A%2F%2Flnk0.com%2Feasylink%2FELBdQJpo'
bid.kfc = 'com.yum.kfc.brand'
open(urls)
delay(5)
XXTfakerNewPhone(bid.kfc)
















