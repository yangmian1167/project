
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

function atexit(callback) 
	-- 参数为一个函数，使用 atexit(一个函数) 注册一个函数在脚本结束时执行，
	--建议不要耗时太长
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
--			closeX(appbids)
		end
		sys.msleep(500)
	end)

--全局变量
function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = ip or get_ip()
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkidfa(name)
	log("准备查询->checkidfa")
	local url = "http://120.27.15.39/work/middleaction.php?action=paichongAction"
	local postArr = {}
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.from = "lifan623883"
	postArr.clientip= ip or get_ip()
	postArr.model = model
	postArr.osversion = os_version
	local postdata = ""
	for k,v in pairs(postArr)do
		postdata = postdata .."&" ..k.."="..v
	end
	url = url..postdata
	log(url)
	local getdata = get(url)
	if getdata then
		local data = json.decode(getdata)
		log(data)
		if data[idfa] == "0" then
			log("排重成功")
			return true
		else
			log("排重失败",true)
		end
	end
end

function clickidfa(name)
	log("准备点击->clickidfa")
	local url = "http://120.27.15.39/work/middleaction.php"
	local postArr = {}
	postArr.action = "clickAction"
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.from = "lifan623883"
	postArr.clientip= ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.model = model
	postArr.osversion = os_version
	if callbackKey then
		postArr.callback  = e:escape("http://idfa888.com/Public/idfa/?service=idfa.callback&idfa="..idfa)
	end
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	
	url = url..'?'..post_data
	log("url----------------\n" .. url)
	log(postArr)

	local getdata = get(url)
	if getdata then
		local data = json.decode(getdata)
		log(data)
		if data["code"] == 0 then
			log("点击成功")
			return true
		else
			log("点击失败",true)
		end
	end
end

--排重-点击-end
function callbackapi(name)
	XXTfakerNewPhone("com.tencent.mqq")
	delay(2)
	if XXTfakerNewPhone(bid[name]['appbid'])then
		idfa = XXTfakerGetinfo(bid[name]['appbid'])['IDFA']
		model = XXTfakerGetinfo(bid[name]["appbid"])['ProductType']
		os_version = XXTfakerGetinfo(bid[name]["appbid"])['ProductVersion']
		if checkidfa(name)then
			if clickidfa(name)then
				delay(rd(2,3))
				login()
				return true
			end
		end
	end
end

apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.right_agree={{
	{475, 964, 0x49b849},
	{478, 968, 0xffffff},
}, 85, 323, 602, 624, 1132}


function getqq()
	local url = "http://news.wenfree.cn/phalapi/public/"
	local arr = {}
	arr['s'] = 'App.Site.Qq'
	arr['taskid'] = task_id
	local data = post(url,arr)
	if data then
		local data = json.decode(data)
		log(data)
		return data.data
	end
end

function backqq(id,todo)
	local url = "http://news.wenfree.cn/phalapi/public/"
	local arr = {}
	arr['s'] = 'App.Site.Updateqq'
	arr['id'] = id
	arr['todo'] = todo
	return post(url,arr)
end


q = {}
q.立即签到={{
	{465, 234, 0xb2ddb7},
	{483, 247, 0x3399ff},
	{553, 214, 0x3399ff},
	{509, 243, 0xffffff},
	{509, 243, 0xffffff},
}, 85, 417, 204, 616, 269}
q.qq微信登录={{
	{449, 548, 0xffffff},
	{540, 547, 0x3399ff},
	{ 92, 547, 0x57d982},
	{386, 547, 0x3399ff},
}, 85, 35, 475, 605, 613}
q.qq_微信登录={{
	{460, 940, 0xffffff},
	{573, 908, 0x3399ff},
	{371, 969, 0x3399ff},
	{278, 940, 0x57d982},
	{ 53, 926, 0x57d982},
}, 85, 22, 881, 619, 995}
q.tips_打开qq={{
	{445, 625, 0x007aff},
	{466, 627, 0x007aff},
	{164, 627, 0x007aff},
	{164, 627, 0x007aff},
	{157, 619, 0xedf9f3},
}, 85, 83, 477, 571, 663}

q.qq_登录={{
	{514, 1003, 0x00cafc},
	{448, 1000, 0xffffff},
	{148, 1002, 0x00cafd},
	{156,  998, 0xf1fdfe},
}, 85, 10, 923, 629, 1060}
q.qq_登录界面={{
	{318, 719, 0xe9ebf2},
	{238, 234, 0xea1c27},
	{254, 259, 0xffffff},
	{251, 220, 0xf9ae08},
	{410, 248, 0x000000},
}, 85, 60, 113, 583, 792}

q.qq_登录按钮={{
	{316, 712, 0x0e7eee},
	{320, 691, 0xffffff},
	{238, 239, 0xea1c27},
	{254, 221, 0xf9ae08},
}, 85, 154, 144, 456, 787}
q.qq_授权确定={{
	{311, 803, 0xffffff},
	{ 51, 814, 0x00cafc},
	{579, 760, 0x00cafc},
	{428, 233, 0x00adfc},
	{459, 226, 0xf23050},
	{447, 214, 0xffaa00},
}, 85, 23, 34, 624, 877}
q.qq_tps_同意={{
	{461, 861, 0x40a0ff},
	{437, 849, 0x40a0ff},
	{118, 864, 0x000000},
	{108, 864, 0x000000},
	{320, 863, 0xffffff},
}, 85, 45, 821, 599, 902}
q.qq_tps_封号={{
	{294, 809, 0x616161},
	{301, 711, 0x000000},
	{319, 603, 0x000000},
	{321, 603, 0xffffff},
	{ 50, 295, 0xffffff},
	{575, 304, 0xffffff},
}, 85, 43, 281, 593, 849}

q.qq_验证码界面={{{271, 69, 0x747680},{274, 98, 0x5c5f6b},{366, 69, 0x484c59},{367, 97, 0x9b9da4},{363, 99, 0xcecfd2},}, 85, 263, 61, 376, 107}
q.qq_验证码界面1={{{271, 69, 0x747680},{274, 98, 0x5c5f6b},{335, 97, 0x212636},{366, 69, 0x484c59},{368, 94, 0x9d9fa6},}, 85, 32, 100, 613, 259}
QQ阅读登录 = {}
QQ阅读登录.新用户福利tips = {{{319, 934, 0xd8d8d8},{320, 905, 0xd8d8d8},{285, 853, 0x459fff},{217, 779, 0xffcd10},{243, 736, 0x459afe},}, 85, 191, 708, 424, 988}
QQ阅读登录.选择感兴趣的内容 = {{{ 35, 126, 0xdadbdc},{ 30, 174, 0xe8e9eb},{363, 176, 0x53575a},{510, 126, 0x626568},{526, 177, 0xc0c2c4},}, 85, 15, 109, 552, 192}
QQ阅读登录.手机号验证 = {{{329, 449, 0xfdc23c},{400, 505, 0x2f91fe},{303, 543, 0xacadb0},{243, 801, 0x00cafc},{447, 812, 0x00cafc},{443, 860, 0x00cafc},}, 85, 209, 352, 482, 903}
QQ阅读登录.被盗风险较高冻结 = {{{288, 779, 0x9f9f9f},{287, 806, 0x8d8d8d},{314, 808, 0x7c7c7c},{324, 779, 0x6b6b6b},{349, 779, 0x979797},{349, 808, 0x777777},}, 85, 209, 352, 482, 903}
QQ阅读登录.账号密码错误 = {{{255, 466, 0xdadada},{253, 472, 0xc3c3c3},{252, 496, 0xacacac},{374, 466, 0x515151},{385, 470, 0xd8d8d8},{384, 496, 0x2b2b2b},}, 85, 249, 455, 392, 505}
function login()
	local TIMEline = os.time()
	local OUTtime = rd(150,180)
	local qqarr = getqq()
		  滑动key = 1	
	while os.time()- TIMEline < OUTtime do
		if app.front_bid() == "com.tencent.qqreaderiphone" then
			log("阅读")
			if d(q.立即签到,"q.立即签到",true)then
			elseif d(q.qq_微信登录,"q.qq_微信登录",true)then
			elseif d(q.qq微信登录,"q.qq微信登录",true)then
			else
				if d(q.tips_打开qq,"q.tips_打开qq",true)then
				elseif d(QQ阅读登录.新用户福利tips,"QQ阅读登录.新用户福利tips",true) then
				elseif d(QQ阅读登录.选择感兴趣的内容,"QQ阅读登录.选择感兴趣的内容") then
					内容key = {
					{539, 340, 0xffffff},
					{575, 562, 0xffffff},
					{582, 789, 0xffffff},
					}
					click(内容key[math.random(1,3)][1],内容key[math.random(1,3)][2])
				else
					moveTo(389,714,430,301,30,50)
						delay(1)
						click(576, 622)
						delay(1)
						click(576, 811)
						delay(1)
				end
			end
		elseif app.front_bid() == "com.tencent.mqq" then
			log("qq")
			if d(q.qq_登录,"q.qq_登录",true)then
			elseif d(q.qq_验证码界面,"q.qq_验证码界面",false) or d(q.qq_验证码界面1,"q.qq_验证码界面1",false) then
				if 滑动key == 1 then
					moveTo(120, 619,482, 622)
					滑动key = 滑动key + 1
				elseif 滑动key == 2 then
					moveTo(120, 619,502, 622)
					滑动key = 滑动key + 1
				elseif 	滑动key == 3 then
					moveTo(120, 619,525, 622)	
					滑动key = 滑动key + 1
					if 滑动key >= 3 then
						滑动key = 1
					end	
				end
			elseif d(q.qq_登录界面,"q.qq_登录界面",false)then
				click(317, 364)
				click(519, 281)
				input(qqarr.qq)
				click(374, 398)
				input(qqarr.password)
				click(607,  764)
				click(605,  981)
				click(590, 1087)
				delay(5)
			elseif d(q.qq_授权确定,"q.qq_授权确定",true)then
				backqq(qqarr.id,"成功")
				up(work,"登录成功")		--上传到idfa888 备份
			else
				if d(q.qq_tps_同意,"q.qq_tps_同意",true)then
				elseif d(q.qq_tps_封号,"q.qq_tps_封号",true) or d(QQ阅读登录.手机号验证,"QQ阅读登录.手机号验证",false) or d(QQ阅读登录.被盗风险较高冻结,"QQ阅读登录.被盗风险较高冻结",false) or d(QQ阅读登录.账号密码错误,"QQ阅读登录.账号密码错误",false) then
					backqq(qqarr.id,"封号")
					return false
				else
					click(20,80)
				end
			end
		else
			active("com.tencent.qqreaderiphone",5)
		end	
		delay(2)
	end
	
end

function main(v)
	work = v.work
	task_id = v.task_id
	bid={}
	bid[work]={}
	bid[work]['keyword']=v.keyword
	bid[work]['appbid']=v.appbid
	bid[work]['appid']=v.appid
	if v.note == "回调" then
		callbackKey = true
	else
		callbackKey = false
	end
	
--	if vpn() then
--		if checkip()then
			device.turn_on_airplane()
			delay(15)
			device.turn_off_airplane()
			delay(15)
			
	-----------------------------------
			if callbackapi(work)then
				task_callback(task_id,"ok")
			end
	------------------------------------
--		else
--			task_callback(task_id,"ip重复")
--		end
--		vpnx()
--		delay(2)
--	else
--		task_callback(task_id,"vpn-false")
--	end
end



















