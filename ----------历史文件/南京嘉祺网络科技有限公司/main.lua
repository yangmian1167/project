
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
var.cid = "29"


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

function checkidfa(name)
	local url = "http://api.channel.tanrice.com/index/channel/checkIdfa"
	local postArr = {}
	postArr.id=bid[name]['id']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.cid=var.cid
	postArr.keyword = keyword or bid[name]['keyword']

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

function activeidfa(name)
	local url = "http://api.channel.tanrice.com/index/channel/activation"
	local postArr = {}
	local postArr = {}
	postArr.id=bid[name]['id']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.cid=var.cid
	
	----------------------
	postArr.model=model
	postArr.version = sys.version()
--	postArr.keyword = e:escape(bid[name]['keyword'])
	postArr.keyword = keyword or bid[name]['keyword']
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
		if data.Remark == "Success" then
			log("激活成功: OK.",true)
			return true
		else
			log("idfa-激活失败",true)
		end
	end
end

function clickidfa(name)
	local url = "http://api.channel.tanrice.com/index/channel/click"
	local postArr = {}
	local postArr = {}
	postArr.id=bid[name]['id']
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.cid=var.cid
	
	----------------------
	postArr.model=model
	postArr.version = sys.version()
--	postArr.keyword = e:escape(bid[name]['keyword'])
	postArr.keyword = keyword or bid[name]['keyword']
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
		if data.Remark == "Success" then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
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
		local dtassss = up(name,keyword)
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
		local dtassss = up(name,keyword)
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
	
			if callbackid ~= nil then
				if checkidfa(name)then
					if clickidfa(name)then
						delay(rd(10,20))
						newidfa(name,1)
						if activeidfa(name)then
							up(name,"激活成功")
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
		
		local dtassss = up(name,keyword)
		if dtassss ~= nil then
			callbackid = json.decode(dtassss)['data']['id']
			if callbackid ~= nil then
				if checkidfa(name)then
					delay(rd(10,20))
					newidfa(name,1)
					if activeidfa(name)then
						up(name,"激活成功")
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
		up(name,keyword)
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

bid.NOW直播 = {	["appid"] =  "1097492828", ["appbid"] = "com.tencent.now", ["adid"]= 253, ["keyword"]="口碑" }
bid.小黑鱼 = {	["appid"] =  "1326101904", ["appbid"] = "com.xhy.blackfish.app", ["id"]= 977, ["keyword"]="借钱" }
bid.知乎 = {	["appid"] =  "432274380", ["appbid"] = "com.zhihu.ios", ["id"]= 978, ["keyword"]="果壳" }
bid.网易考拉 = {	["appid"] =  "965789238", ["appbid"] = "com.netease.kaola", ["id"]= 999, ["keyword"]="母婴" }
bid.众安保险 = {	["appid"] =  "1019481423", ["appbid"] = "com.zhongan.insurance", ["id"]= 1008 , ["keyword"]="月经" }
bid.蜜芽宝贝 = {	["appid"] =  "973366293", ["appbid"] = "com.OfficialMiYaBaoBei.MiYaBaoBei", ["id"]= 1009 , ["keyword"]="贝店" }
bid.新浪财经 = {	["appid"] =  "430165157", ["appbid"] = "com.sina.stock", ["id"]= 1010 , ["keyword"]="财经" }
bid.猎聘 = {	["appid"] =  "540996859", ["appbid"] = "com.lietou.insw-c-ios-iphone", ["id"]= 1015 , ["keyword"]="找工作" }
bid.斗罗战神 = {	["appid"] =  "1417067097", ["appbid"] = "com.dlzs.ds2", ["id"]= 1022 , ["keyword"]="西游变态版" }
bid.梦幻金游 = {	["appid"] =  "1437878371", ["appbid"] = "com.mhjy.jinyou", ["id"]= 1027 , ["keyword"]="天天富翁" }
bid.够花 = {	["appid"] =  "1257627631", ["appbid"] = "gouhuaHaiercash", ["id"]= 1040 , ["keyword"]="网贷" }
bid.烈火如歌 = {	["appid"] =  "1346520528", ["appbid"] = "com.Aligames.lhrg", ["id"]= 1046 , ["keyword"]="逆水寒" }
bid.小米贷款 = {	["appid"] =  "1236629993", ["appbid"] = "com.xiaomi.loan", ["id"]= 1050 , ["keyword"]="借款" }
bid.酷狗音乐 = {	["appid"] =  "472208016", ["appbid"] = "com.kugou.kugou1002", ["id"]= 1064 , ["keyword"]="抖音" }
bid.链家 = {	["appid"] =  "472208016", ["appbid"] = "com.exmart.HomeLink", ["id"]= 1070 , ["keyword"]="自如租房" }
bid.银河战舰 = {	["appid"] =  "472208016", ["appbid"] = "galaxy.empire", ["id"]= 1075 , ["keyword"]="红警" }

bid.小黑鱼.keyword={
{"借款app", 950},
{"现金借款",  950},
	}
--app.run("com.xhy.blackfish.app")
--os.exit()
----[[]]
while true do
	log("vpn-key")
	for k,v in ipairs(bid.小黑鱼.keyword) do
		keyword = v[1]
		if  vpn() then
			if checkip()then
	--			activeapi("众安保险")
	--			activeapi("银河战舰")
	--			activeapi("斗罗战神")
	--			activeapi("酷狗音乐")
	--			activeapi("酷狗音乐")
	--			callbackapi("蜜芽宝贝")
	--			callbackapi("新浪财经")
	--			callbackapi("猎聘")
	--			callbackapi("小米贷款")
	--			onlyactive("够花")
	--			onlyactive("梦幻金游")
	--			onlycheckidfa("链家")
				beewallidfa("小黑鱼")
	--			callbackapi("知乎")
	--			callbackapi("蜜芽宝贝")
			end
		end
	end
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	vpnx()
	sys.msleep(2000)
end

--]]





































