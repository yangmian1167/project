
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
var.source = "lixuanjishua"


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
	idfalist.account = bid[name]['keyword'] or account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkidfa(name)
	local url = "http://m.cmzqian.com/API/common/repeat"
	local postArr = {}
	postArr.adid=bid[name]['adid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source=var.source
	postArr.os_version = sys.version()
	postArr.device = model
	postArr.keyword = keyword or bid[name]['keyword']

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


function clickidfa(name)
	local url = "http://m.cmzqian.com/API/common/checkClick"
	local postArr = {}
	postArr.adid=bid[name]['adid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source=var.source
	postArr.os_version = sys.version()
	postArr.device = model
	postArr.keyword = keyword or bid[name]['keyword']
	
	----------------------
--	postArr.keyword = e:escape(bid[name]['keyword'])
	if callbackid then
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
		if tonumber(data.status) == 1 then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
		end
	end
end


function activeidfa(name)
	local url = "http://m.cmzqian.com/API/common/activate"
	local postArr = {}
	postArr.adid=bid[name]['adid']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.source=var.source
	postArr.os_version = sys.version()
	postArr.device = model
	postArr.keyword = keyword or bid[name]['keyword']
	
	----------------------
--	postArr.keyword = e:escape(bid[name]['keyword'])
--	postArr.keyword = bid[name]['keyword']
	if callbackid then
		--postArr.callbackurl  = "http://idfa888.com/Public/idfa/?service=idfa.callback&id="..callbackid
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
		if tonumber(data.status) == 1 then
			log("激活成功: OK.",true)
			return true
		else
			log("idfa-激活失败",true)
		end
	end
end

function checkip()
	ip = get_ip() or "192.168.1.1"
	local url = 'http://hlj.51-gx.com/Public/idfa/?service=idfa.checkip&ip='..ip
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
		local OUTtime = rd(30,35)
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


bid.花上钱贷款 = {	["appid"] =  "1278376336", ["appbid"] = "com.jiucang.huashangqian", ["adid"]= '1032', ["keyword"]="花上钱贷款" }
bid.拓道财富 = {	["appid"] =  "1428159989", ["appbid"] = "com.tuodao.tdcaifu", ["adid"]= '1036', ["keyword"]="拓道财富" }
bid.信贷360 = {	["appid"] =  "1399516881", ["appbid"] = "com.block.xd360", ["adid"]= '1019', ["keyword"]="信贷360" }



--[[]]
while true do
	log("vpn-key")
	if false or  vpn() then
		if checkip()then
			onlyactive("花上钱贷款")
--			onlyactive("拓道财富")
--			onlyactive("信贷360")
		end
	end
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	vpnx()
	sys.msleep(2000)

end

--]]



































