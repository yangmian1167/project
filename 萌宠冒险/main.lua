
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

local curl = require('lcurl')
local e = curl.easy()

bid={}


bid.萌宠冒险 = {	["appid"] =  "1404154276", ["appbid"] = "com.kouyo.rexue.coo", ["keyword"]="萌宠冒险" }
bid.创世娱乐 = {	["appid"] =  "1378014100", ["appbid"] = "com.cssoft.csyl", ["id"]= 250, ["keyword"]="下分棋牌" }
bid.自如 = {	["appid"] =  "685872176", ["appbid"] = "com.ziroom.ZiroomProject", ["id"]= 253, ["keyword"]="自如" }

screen.init(0)
var = {}
var.lun = 0
var.adid = "159573638dbf9b"
var.channel = ""
--全局变量

function up(name,other)
	local url = 'http://hlj.51-gx.com/Public/idfa/?service=idfa.idfa'
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

function activation(name)
	log("activation")
	local url = "http://api.channel.tanrice.com/index/channel/activation"
	local postarr={}
	postarr.id = bid[name]["id"]
	postarr.cid = 23
	postarr.idfa  = idfa
	postarr.ip = ip or get_ip() or "192.168.1.1"
	postarr.model = model
	postarr.version = sys.version()
--	postarr.keyword = e:escape(bid[name]["keyword"])
	
	log(postarr)
	
	local getdata = post(url,postarr)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data["code"] == "0" then
			return true
		end
	end
end

function idfaclick(idfa,id,keyword)
	log("click")
	local url = "http://api.channel.tanrice.com/index/channel/click"
	local postarr={}
	postarr.id = id 
	postarr.cid = 23
	postarr.idfa  = idfa
	postarr.ip = ip or get_ip() or "192.168.1.1"
	postarr.model = model
	postarr.version = sys.version()
	postarr.keyword =  e:escape(keyword)
	

	log(postarr)
	
	local getdata = post(url,postarr)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data["Remark"] == "Success" then
			return true
		end
	end
end

function checkidfa(idfa,appid,keyword)
	log("checkidfa")
	local url = "http://39.107.71.237/api/Index/checkIdfa.html"
	local postarr={}
	postarr.job_id = 3
	postarr.channel_id = 88
	postarr.app_id = appid
	postarr.idfa  = idfa
	postarr.ip = ip or get_ip() or "192.168.1.1"
	postarr.mac = '002000000000'
	postarr.model = model
	postarr.version = sys.version()
	postarr.keyword = e:escape(keyword)
	log(postarr)
	
	local getdata = post(url,postarr)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data['code'] == 0 then
			return true
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

--[[
function idfaisok(name)
	if XXTfakerNewPhone(bid[name]["appbid"])then
		idfa = XXTfakerGetinfo(bid[name]["appbid"])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		if checkidfa(idfa,bid[name]["id"],bid[name]["keyword"])then
			return idfaclick(idfa,bid[name]["id"],bid[name]["keyword"])
		end
	end
end
--]]

function idfaisok(name)
	if XXTfakerNewPhone(bid[name]["appbid"])then
		idfa = XXTfakerGetinfo(bid[name]["appbid"])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		return checkidfa(idfa,bid[name]["appid"],bid[name]["keyword"])
	end
end


function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.jd_agree={{{528,1069,0x4d7bfe},{231,1068,0xffffff},},85}
apparr.jd_skip={{{516,83,0xf8f8f8},{592,84,0xf8f8f8},{576,76,0x666666},{572,91,0x666666},}, 85, 507, 60, 606, 113}


function newidfa(name,times)
	for i= 1,times do

		local TIMEline = os.time()
		local OUTtime = rd(180,190)
		while os.time()- TIMEline < OUTtime do
			log("激活app中")
			if active(bid[name]["appbid"],4)then
				if d(apparr.right,"apparr.right",true)then
				elseif bid[name]["appbid"] == "com.jd.jinrong" and (d(apparr.jd_agree,"apparr.jd_agree",true,1)or d(apparr.jd_skip,"apparr.jd_skip",true,1) ) then
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
		up(name,'深圳激活')
	end
end

--期货掌中宝
function beewallidfa(name)
	if idfaisok(name)then
		newidfa(name,1)
		return true
	end
	delay(1)
end


--[[]]
lun = 0
while true do
	if vpn() then
		if checkip()then
			if beewallidfa("萌宠冒险")then

			end
		end
	end
	lun = lun + 1
	log(lun)
	vpnx()
end
--]]
































