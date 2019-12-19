
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

bid={}
bid.花上钱贷款 = {	["appid"] =  "1278376336", ["appbid"] = "com.jiucang.huashangqian", ["adid"]= '1032', ["keyword"]="花上钱贷款" }



screen.init(0)
var = {}
var.source = "32"


function sign(adid,timestamp)
	local str = var.source.."|"..adid.."|"..idfa.."|"..var.key.."|"..timestamp
	log(str)
	return string.md5(str)
end

--全局变量

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
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
	local url = "http://api.jizhukeji.com/union/checkidfa"
	local postArr = {}
	postArr.appid=bid[name]['appid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source=var.source

	index = 0
	post_data = ''
	
	for k,v in pairs(postArr)do
		index = index + 1
		if v ~= nil then
			if index == 8 then
				post_data = post_data..k..'='..v
			else
				post_data = post_data..k..'='..v..'&'
			end
		end
	end
	url = url..'?'..post_data
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
			log("idfa------排重失败",true)
		end
	end
end


function clickidfa(name,callbackkey)
	local url = "http://api.jizhukeji.com/union/clickidfa"
	local postArr = {}
	postArr.appid=bid[name]['appid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source=var.source
	
	----------------------
--	postArr.keyword = e:escape(bid[name]['keyword'])
	if callbackkey and callbackid then
		postArr.callback  = "http://idfa888.com/Public/idfa/?service=idfa.callback&id="..callbackid
	end
	
	index = 0
	post_data = ''
	
	for k,v in pairs(postArr)do
		index = index + 1
		if index == 8 then
			post_data = post_data..k..'='..v
		else
			post_data = post_data..k..'='..v..'&'
		end
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
	local url = "http://api.jizhukeji.com/union/directactiveidfa"
	local postArr = {}
	postArr.appid=bid[name]['appid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source=var.source
	
	
	index = 0
	post_data = ''
	
	for k,v in pairs(postArr)do
		index = index + 1
		if index == #postArr then
			post_data = post_data..k..'='..v
		else
			post_data = post_data..k..'='..v..'&'
		end
	end
	url = url..'?'..post_data
	log(url)
	log(postArr)
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
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Ip.checkip&ip='..ip
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
		local dtassss = up(name,bid[name]['keyword'])
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
			if callbackid ~= nil then
				if checkidfa(name)then
					if clickidfa(name,true)then
						delay(rd(10,20))
						newidfa(name,1)
					end
				end
			end
		end
	end
end

function activeapi(name)

	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		local dtassss = up(name,bid[name]['keyword'])
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
	
			if callbackid ~= nil then
				if checkidfa(name)then
					if clickidfa(name)then
						delay(rd(10,20))
						newidfa(name,1)
						if activeidfa(name)then
							up(name,bid[name]['keyword'].."-激活成功")
						end
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
		return checkidfa(name)
	end
end

function clickisok(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
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

function newidfa(name,times)
	for i= 1,times do

		local TIMEline = os.time()
		local OUTtime = rd(15,20)
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



bid.吐槽 = {	["appid"] =  "1030314779", ["appbid"] = "com.xiaoge.tucao", ["adid"]= '1032', ["keyword"]="吐槽" }
bid.便捷生成助手 = {	["appid"] =  "1205269443", ["appbid"] = "cn.6ag.AppScreenshots", ["adid"]= '1032', ["keyword"]="便捷生成助手" }
bid.贵金属期货 = {	["appid"] =  "1386652458", ["appbid"] = "com.QQapp.RXGuiJinShuqh", ["adid"]= '1032', ["keyword"]="贵金属期货" }
bid.外汇软件 = {	["appid"] =  "1371579306", ["appbid"] = "com.PL.WHRJ", ["adid"]= '1032', ["keyword"]="外汇软件" }
bid.原油投资 = {	["appid"] =  "1399420481", ["appbid"] = "com.yuanyoutouzi.cn", ["adid"]= '1032', ["keyword"]="原油投资" }
bid.电网棋牌 = {	["appid"] =  "1267747194", ["appbid"] = "com.shijiandingji", ["adid"]= '1032', ["keyword"]="电网棋牌" }
bid.掌上玩久久 = {	["appid"] =  "1442909213", ["appbid"] = "com.liang.zhengkao", ["adid"]= '1032', ["keyword"]="掌上玩久久" }
bid.期货投资 = {	["appid"] =  "1272193616", ["appbid"] = "com.app.QHRJ", ["adid"]= '1032', ["keyword"]="期货投资" }
bid.yc平台 = {	["appid"] =  "1442074623", ["appbid"] = "com.Equipment.LY.www", ["adid"]= '1032', ["keyword"]="yc平台" }
bid.趣平台 = {	["appid"] =  "1441503468", ["appbid"] = "snx.com.quweixingzuo", ["adid"]= '1032', ["keyword"]="趣平台" }
bid.孝感棋牌 = {	["appid"] =  "1445687270", ["appbid"] = "com.xiaoganwujinjiancaishangcheng.wjjc", ["adid"]= '1032', ["keyword"]="孝感棋牌" }
bid.KINGDOM = {	["appid"] =  "1438480746", ["appbid"] = "jd.KingDom.com", ["adid"]= '1032', ["keyword"]="KINGDOM" }
bid.乐悦智能 = {	["appid"] =  "1445376355", ["appbid"] = "com.SafetyMonitor.sjq", ["adid"]= '1032', ["keyword"]="乐悦智能" }
bid['特摩ネットディスクの助手'] = {	["appid"] =  "590402807", ["appbid"] = "com.slavamax.tOpener", ["adid"]= '1032', ["keyword"]="特摩ネットディスクの助手" }
bid['安全守护伴侣'] = {	["appid"] =  "1446730742", ["appbid"] = "com.aqblIos.preject.www", ["adid"]= '1032', ["keyword"]="安全守护伴侣" }
bid['古龍经典'] = {	["appid"] =  "1442167818", ["appbid"] = "com.yubery.gulongClassic", ["adid"]= '1032', ["keyword"]="古龍经典" }
bid['轻松学广场舞视频教学'] = {	["appid"] =  "1082180369", ["appbid"] = "com.dupeifu.qsxgcw", ["adid"]= '1032', ["keyword"]="轻松学广场舞视频教学" }


function ends()
	
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	vpnx()
	sys.msleep(2000)
	
end
--]]
function main()
while true do
	log("vpn-key")
	
	if false or  vpn() then
		if checkip()then
	-----------------------------------
			local TaskDate = ( get_task() )
			if TaskDate then
				for i,v in ipairs(TaskDate) do
					work = v.work
					task_id = v.task_id
					
					log(work)
					bid[work]={}
					bid[work]['keyword']=v.keyword
					
					if string.len(v.appbid)>5 then
						bid[work]['appbid']=v.appbid
					end
					if string.len(v.appid)>5 then
						bid[work]['appid']=v.appid
					end
					
					log(bid[work])
					if bid[work]['appbid'] ~= nil then
						onlyactive(work)
					end
				end
			end
	------------------------------------
		end
	end
	ends()
end
end


while (true) do
	local ret,errMessage = pcall(main)
	if ret then
	else
		sys.alert(errMessage, 15)
		delay(1)
	end
end

















