
--[[
local cloud_cc = require("cloud_cc")(
	"2BA695C9633E1E712764746FFD90649C",
	{
		"/lua/scripts/faker.lua",
		"/lua/scripts/xxtsp.lua",
		"/lua/scripts/nLog.xxt",
	}
)

]]





bid={}
bid.花上钱贷款 = {	["appid"] =  "1278376336", ["appbid"] = "com.jiucang.huashangqian", ["adid"]= '1032', ["keyword"]="花上钱贷款" }



screen.init(0)
var = {}
var.source = "www"
var.adid = '215369'


function sign(adid,timestamp)
	local str = var.source.."|"..adid.."|"..idfa.."|"..var.key.."|"..timestamp
	log(str)
	return string.md5(str)
end

--全局变量

function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = bid[name]['keyword'] or account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	idfalist.device =json.encode(fakerdevice) 
	return post(url,idfalist)
end

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function checkidfa(name)
	log('checkidfa-->'..name)
	local url = "http://m.moneyli.top/IDFA/repeat"
	local postArr = {}
	postArr.adid = bid[name]['adid']
	postArr.idfa = idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source = var.source
	postArr.keyword = bid[name]['keyword']
	postArr.os_version = os_version or sys.version()
	postArr.device = model
	postArr.udid = udid
	postArr.product = model
	

	post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	
	local url = url..'?'..post_data
	log(url)
	log(postArr)

	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data[idfa]) == 0 then
			log("idfa: OK.",true)
			return true
		else
			log("idfa----排重失败",true)
		end
	end
end


function clickidfa(name)
	log("clickidfa->"..name)
	local url = "http://m.moneyli.top/IDFA/checkClick"
	local postArr = {}
	postArr.adid = bid[name]['adid']
	postArr.idfa = idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source = var.source
	postArr.keyword = bid[name]['keyword']
	postArr.os_version = os_version or sys.version()
	postArr.device = model
	postArr.udid = udid
	postArr.product = model

	if callback_key  then
		log("回调")
		local curl = require('lcurl')
		local e = curl.easy()
		postArr.callbackurl  = e:escape( "http://idfa888.com/Public/idfa/?service=idfa.callback&idfa="..idfa )
	end
	
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	
	url = url..'?'..post_data
	log(url)
	log(postArr)
	
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data.status) == 1 or data.message == 'ok' then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
		end
	end
end


function activeidfa(name)
	log('activeidfa-->'..name)
	local url = "http://m.moneyli.top/IDFA/activate"
	local postArr = {}
	postArr.adid = bid[name]['adid']
	postArr.idfa = idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source = var.source
	postArr.keyword = bid[name]['keyword']
	postArr.os_version = os_version or sys.version()
	postArr.device = model
	postArr.udid = udid

	log(url.."?"..table.concat( postArr ))
	log(postArr)
	local getdata = post(url,postArr)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data.status) == 1 then
			log("激活成功: OK.",true)
			back_pass(task_id,"ok")
			return true
		else
			log("idfa-激活失败",true)
		end
	end
end

function checkip()
	ip = get_ip() or "192.168.1.1"
	log(ip)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=Ip.Checkip&ip='..ip
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("ip可以用:OK.",true)
			return true
		else
			log("ip, 排重失败",true)
		end
	end
end

function callbackapi(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		udid = XXTfakerGetinfo(bid[name]["appbid"])['UDID']
		
		local dtassss = up(name,bid[name]['keyword'])
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
			if callbackid ~= nil then
				if checkidfa(name)then
					if clickidfa(name,true)then
						delay(rd(50,60))
						newidfa(name,1)
					end
				end
			end
		end
	end
end

function activeapi(name)
	log("name->" .. name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		fakerdevice = XXTfakerGetinfo(bid[name]['appbid'])
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		udid = XXTfakerGetinfo(bid[name]["appbid"])['UDID']

--		if checkidfa(name)then
--			if clickidfa(name)then
--				delay(rd(20,30))
				newidfa(name,1)
--				if activeidfa(name)then
--					up(name,bid[name]['keyword'].."-激活成功")
--				end
--			end
--		end
	end
end

function onlyactive(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		
		local dtassss = up(name,bid[name]['keyword'])
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
			if callbackid ~= nil then
				if checkidfa(name)then
					delay(rd(3,6))
					newidfa(name,1)
					if activeidfa(name)then
						up(name,bid[name]['keyword'].."-激活成功")
					end

				end
			end
		end
	end
end


function idfaisok(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		return checkidfa(name)
	end
end

function clickisok(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		if checkidfa(name)then
			return clickidfa(name)
		end
	end
end

function beesign(appid,idfa)
	local txt = var.source.."|"..appid.."|"..idfa.."|"..var.key
	log("md5---"..txt)
	return string.md5(txt)
end


function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

--url = 'https://apps.apple.com/us/app/id1436467071?l=zh&ls=1' --ab客
url = 'https://f1.leniugame.com/b8/71/bbaabb.html' --天涯刀锋
--url = 'https://apps.apple.com/cn/app/id1228049107' --畅阅小说阅读

function open(url)
	openUrl(url)
	delay(3)
	local timeline = os.time()
	local outtimes = 15
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
	return true
end


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(22,25)
	open(url)
	while os.time()- TIMEline < OUTtime do
		if active(bid[name]['appbid'],4)then
			if d(apparr.right,"apparr.right",true)then

			else
				moveTo(600,300,100,100,30,50)
				delay(1)
				click(321, 978)
				delay(1)
				click(462, 666)
				delay(1)
			end
		else
			log("启动一次")
		end
		delay(2)
	end
	up(name,bid[name]['keyword'])
end

--期货掌中宝
function beewallidfa(name)
	if clickisok(name)then
		delay(rd(2,3))
		newidfa(name,1)
	end
	delay(1)
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

function main(v)
	----------------------------------
	if vpn() then
		if false or checkip()then
			log(v)
			work = v.work
			task_id = v.task_id
			bid={}
			bid[work]={}
			bid[work]['adid']=v.adid
			bid[work]['keyword']=v.keyword
			bid[work]['appbid']=v.appbid
			bid[work]['appid']=v.appid
			log("act")
			callback_key = false
			if v.note == "回调" then
				callback_key = true
			end
			activeapi(work)
			back_pass(task_id,"ok")
		end
		vpnx()
		delay(2)
	end
end


















