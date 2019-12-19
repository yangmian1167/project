
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

require('jiema')
require('name')



bid={}
bid.花上钱贷款 = {	["appid"] =  "1278376336", ["appbid"] = "com.jiucang.huashangqian", ["adid"]= '1032', ["keyword"]="花上钱贷款" }



screen.init(0)
var = {}
var.source = "shidong"
var.adid = '215369'


function sign(adid,timestamp)
	local str = var.source.."|"..adid.."|"..idfa.."|"..var.key.."|"..timestamp
	log(str)
	return string.md5(str)
end

--全局变量

--function up(name,other)
--	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
--	local idfalist ={}
--	idfalist.phonename = phonename or device.name()
--	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
--	idfalist.phoneos = phoneos or sys.version()
--	idfalist.name = name
--	idfalist.idfa = idfa
--	idfalist.ip = ip or get_ip() or '192.168.1.1'
--	idfalist.account = bid[name]['keyword'] or account
--	idfalist.password = password
--	idfalist.phone = phone
--	idfalist.other = other
--	idfalist.appid = bid[name]['appid']
--	return post(url,idfalist)
--end

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function checkidfa(name)
	log('checkidfa-->'..name)
	local url = "http://api.qingsongzhuan666.com/qszCheckIdfa"
	local postArr = {}
	postArr.appId = bid[name]['adid']
	postArr.idfa = idfa
	postArr.clientIp=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.appid = bid[name]['appid']
	postArr.chSource = var.source
--	postArr.word = bid[name]['keyword']
	postArr.osVersion = os_version or sys.version()
	postArr.model = model
	postArr.udid = udid


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
		if tonumber(data['code']) == 0  then
			log("idfa: OK.",true)
			return true
		else
			log("idfa----排重失败",true)
		end
	end
end

 
function clickidfa(name)
	log("clickidfa->"..name)
	local url = "http://api.qingsongzhuan666.com/qszNoticeIdfa"
	local postArr = {}
	postArr.appId = bid[name]['adid']
	postArr.idfa = idfa
	postArr.clientIp=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.appid = bid[name]['appid']
	postArr.chSource = var.source
	postArr.keyword = bid[name]['keyword']
	postArr.osVersion = os_version or sys.version()
	postArr.model = model
	postArr.udid = udid
	
	if callback_key  then
		log("回调")
		local curl = require('lcurl')
		local e = curl.easy()
		postArr.callBackAddr  = e:escape( "http://idfa888.com/Public/idfa/?service=idfa.callback&idfa="..idfa.."&appid="..bid[name]['appid'] )
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
		if tonumber(data['code']) == 0 then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
		end
	end
end


function activeidfa(name)
	log('activeidfa-->'..name)
	local url = "http://api.qingsongzhuan666.com/qszReportIdfa"
	local postArr = {}
	postArr.appId = bid[name]['adid']
	postArr.idfa = idfa
	postArr.clientIp=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.appid = bid[name]['appid']
	postArr.chSource = var.source
	postArr.keyword = bid[name]['keyword']
	postArr.osVersion = os_version or sys.version()
	postArr.model = model
	postArr.udid = udid
	
	if callback_key  then
		log("回调")
		local curl = require('lcurl')
		local e = curl.easy()
		postArr.callbackUrl  = e:escape( "http://idfa888.com/Public/idfa/?service=idfa.callback&idfa="..idfa.."&appid="..bid[name]['appid'] )
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
		if tonumber(data['code']) == 0 then
			log("激活成功: OK.",true)
			back_pass(task_id,"ok")
			return true
		else
			log("idfa-激活失败",true)
		end
	end
end

function callback(name)
	log('callback-->'..name)
	local url = "http://yourhost/path"
	local postArr = {}
	postArr.cid = bid[name]['adid']
	postArr.idfa = idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.appid = bid[name]['appid']
--	postArr.source = var.source
--	postArr.word = bid[name]['keyword']
	postArr.sysVer = os_version or sys.version()
	postArr.model = model
	postArr.udid = udid
--	postArr.product = model
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	
	url = url..'?'..post_data
	log(url)
	log(postArr)
--	log(url.."?"..table.concat( postArr ))
--	log(postArr)
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data.status) == 1 or data.message == 'ok' then
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
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.checkip&ip='..ip
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
						delay(rd(3,6))
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
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		udid = XXTfakerGetinfo(bid[name]["appbid"])['UDID']

		if checkidfa(name)then
			if clickidfa(name)then
				delay(rd(3,6))
				if reg() then
					if activeidfa(name)then
						up(name,bid[name]['keyword'].."-激活成功")
					end
				end	
			end
		end
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

apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(30,50)
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



function upidfa(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name or '打卡助手'
	idfalist.idfa = idfa or account
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = bid[work]['keyword'] or account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other or tturl
	return post(url,idfalist)
end



appbid = 'com.amgtec.DaKa'
itemid = "8758"

打卡助手 = {}
打卡助手.立即注册 = {{{580, 84, 0x464646},{532, 93, 0x333333},{603, 81, 0x333333},}, 85, 514, 63, 622, 103}
打卡助手.注册界面 = {{{529, 525, 0x586bfb},{368, 519, 0x596cfc},{337, 515, 0x7282fc},{558, 513, 0x8492fd},}, 85, 328, 499, 576, 545}
打卡助手.获取验证码 = {{{533, 312, 0x333333},{442, 296, 0x586bfb},{569, 330, 0xffffff},{570, 335, 0x586bfb},}, 85, 433, 280, 586, 345}
打卡助手.注册下一步 = {{{317, 455, 0xffffff},{163, 443, 0x586bfc},{439, 472, 0x586bfc},}, 85, 92, 382, 514, 509}
打卡助手.弹窗下一步 = {{{321, 1059, 0x586bfb},{316, 1016, 0x586bfb},{328, 1103, 0x586bfb},}, 85, 214, 982, 420, 1119}
打卡助手.登录信息界面 = {{{ 70, 157, 0xafafaf},{ 70, 199, 0xdadada},{330, 157, 0xb5b5b5},{338, 199, 0x747474},{350, 195, 0x161616},}, 85, 53, 144, 365, 222}
打卡助手.登录信息界面_完成 = {{{417, 505, 0x586bfc},{208, 473, 0x586bfc},{408, 460, 0x586bfc},{309, 483, 0xffffff},}, 85, 163, 425, 478, 533}
打卡助手.完成注册 = {{{139, 729, 0xffffff},{496, 847, 0xffffff},{166, 878, 0x666666},{478, 892, 0x666666},}, 85, 117, 666, 545, 967}
打卡助手.手机号已注册 = {{{335, 595, 0xffffff},{181, 562, 0x5e5e5e},{496, 630, 0x5e5e5e},{487, 545, 0xffffff},}, 85, 115, 532, 521, 665}


function reg()
	local timeline = os.time()
	local outtime = rd(120,150)
	local 取号 = true
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
	while os.time() - timeline < outtime do
		if active(appbid,5) then
			if d(打卡助手.立即注册,'打卡助手.立即注册',true) then
			elseif d(打卡助手.注册界面,'打卡助手.注册界面') then
				if d(打卡助手.手机号已注册,'打卡助手.手机号已注册') then
					laixin_black(phone)
					delay(2)
					return false
				elseif d(打卡助手.注册下一步,'打卡助手.注册下一步',true) then
				elseif d(打卡助手.获取验证码,'打卡助手.获取验证码',true) then
				elseif 取号 then
					phone = laixin_phone()
					input(phone)
					取号 = false
					验证码 = true
				elseif 验证码 then
					yzm = laixin_yzm()
					log(yzm)
					if #yzm == 4 then
						click(108, 325)
						delay(2)
						input(yzm)
						验证码 = false
						提交 = true
					end
				end
			elseif d(打卡助手.登录信息界面,'打卡助手.登录信息界面') then
				if d(打卡助手.登录信息界面_完成,'打卡助手.登录信息界面_完成',true) then
				elseif 提交 then
					account = random_name()
					input(account)
					delay(2)
					click(82, 329)
					password = myRand(4,math.random(8,10))
					input(password)
					提交 = false
					注册完成 = true
				end	
			elseif 注册完成 then
				if d(打卡助手.完成注册,'打卡助手.完成注册') then
					upidfa(name,other)
					delay(2)
					return true
				end	
			else
				d(打卡助手.弹窗下一步,'打卡助手.弹窗下一步',true)
			end

		end
		delay(1)
	end	
    return false
end



require('jiema')
require('name')

function main(v)
	----------------------------------
	if vpn() then
		if true or checkip()then
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
		end
		vpnx()
		delay(2)
	end
end


















