
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
bid.期货掌中宝 = { 1324945454,"com.qihuozhangzhongbao"}


screen.init(0)
var = {}
var.channel = "whaso"


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
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = keyword or account
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
	local url = "http://api.refanqie.com/1/hlw-coreapi/channel/checkIdfa.json"
	local postArr = {}
	postArr.appid =bid[name]['appid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.channel = var.channel
	postArr.keyword = bid[name]['keyword']
--	postArr.adid = 153171
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
		if data[idfa] == 0 then
			log("idfa: OK.",true)
			return true
		else
			log("idfa------排重失败",true)
		end
	end
end


function clickidfa(name)
	local url = "http://api.refanqie.com/1/hlw-coreapi/channel/reportClick.json"
	local postArr = {}
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.ip   = ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.channel = var.channel
	
	----------------------
	postArr.model=model
	postArr.version = phoneos or sys.version()
	postArr.keyword = bid[name]['keyword']
	
	if callbackid then
		postArr.callbackurl  = "http://idfa888.com/Public/idfa/?service=idfa.callback&id="..callbackid
	end
	
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
		if data["message"] == "ok" then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
		end
	end
end


function activeidfa(name)
	local url = "http://api.refanqie.com/1/hlw-coreapi/channel/submitIdfa.json"
	local postArr = {}
	postArr.appid=bid[name]['appid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.channel =var.channel
	
	----------------------
	postArr.model=model
	postArr.version = phoneos or sys.version()
--	postArr.keyword = e:escape(bid[name]['keyword'])
	postArr.keyword = bid[name]['keyword']
	if callbackid then
		postArr.callbackurl  = "http://idfa888.com/Public/idfa/?service=idfa.callback&id="..callbackid
	end
	
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
		if data['message'] == "ok" then
			log("激活成功: OK.",true)
			return true
		else
			log("idfa-激活失败",true)
		end
	end
end



function checkip()
	ip = get_ip() or "192.168.1.1"
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
		local dtassss = up(name,bid[name]['keyword'])
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
			if callbackid ~= nil then
				if checkidfa(name)then
					if clickidfa(name)then
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
		phoneos = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		
		keyword = bid[name]['keyword']
		local dtassss = up(name,bid[name]['keyword'])
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
	
			if callbackid ~= nil then
				if checkidfa(name)then
					if clickidfa(name)then
						delay(rd(2,5))
						newidfa(name,1)
						if activeidfa(name)then
							up(name,keyword.."-激活成功")
							back_pass(task_id,"ok")
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
					delay(rd(2,5))
					newidfa(name,1)
					if activeidfa(name)then
						up(name,keyword .. "-激活成功")
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
		phoneos = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		return checkidfa(name)
	end
end

function clickisok(name)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		phoneos = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
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

apparr.qq_取消={{{ 33,  77, 0xffffff},{184, 888, 0x1ac27b},{193, 990, 0x02a8e5},}, 85, 9, 49, 609, 1121}
apparr.qq_排行={{{198, 528, 0x31c27c},{ 77, 517, 0x31c27c},{577, 525, 0x31c27c},}, 85, 16, 442, 624, 626}

function newidfa(name,times)
	for i= 1,times do
		local TIMEline = os.time()
		local OUTtime = rd(180,185)
		while os.time()- TIMEline < OUTtime do
			if active(bid[name]['appbid'],4)then
				if name == "QQ音乐" then
					if d(apparr.qq_取消,"apparr.qq_取消",true)then
						
					elseif d(apparr.qq_排行,"apparr.qq_排行",true)then
					end
				else
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
			else
				log("启动一次")
			end
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
--onlycheckidfa
function onlycheckidfa(name)
	if idfaisok(name)then
		delay(rd(2,3))
		newidfa(name,1)
	end
	delay(1)
end


bid.银河战舰 = {	["appid"] =  "1415584003", ["appbid"] = "galaxy.empire", ["keyword"]="左轮手枪" }
bid.DaDa英语 = {	["appid"] =  "1129663942", ["appbid"] = "com.dadaabc.DaDaClass", ["keyword"]="51talk" }
bid.启天股票 = {	["appid"] =  "1456362177", ["appbid"] = "com.qitiangp.app",["adid"] = "153171" ,["keyword"]="炒股软件" }
bid.配资大师 = {	["appid"] =  "1455210751", ["appbid"] = "TimeMasterOQI.App",["adid"] = "153173" ,["keyword"]="配资" }

keytable = {}
--keytable.iPhone06 = "战争游戏"
--keytable.iPhone07 = "文明6"
--keytable.iPhone08 = "战舰联盟"


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


--[[获取当前伪装的bid表]]

--log(XXTfakerGetinfo(app.front_bid()))

--os.exit()


function main()
while true do
	log("vpn-key")

	-----------------------------------
			local TaskDate = ( get_task() )
			if TaskDate then
				for i,v in ipairs(TaskDate) do
					
					if false or  vpn() then
						if checkip()then
							work = v.work
							task_id = v.task_id
							bid[work]={}
							bid[work]['keyword']=v.keyword
							if string.len(v.appbid)>5  then	bid[work]['appbid']=v.appbid end
							if string.len(v.appid)>5  then	bid[work]['appid']=v.appid	end
							activeapi(work)
						end
						vpnx()
						delay(3)
					end
					
				end
			end
	------------------------------------

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




































