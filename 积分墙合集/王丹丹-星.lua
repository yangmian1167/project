
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


log = require('nLog')()
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

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
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
	idfalist.appid = bid[name]['appid']
	idfalist.device =json.encode(fakerdevice) 
	return post(url,idfalist)
end

function checkidfa(name)
	log("准备查询->checkidfa")
	local url = "http://ad.masaike2018.com/ad/idfaRepeat"
	local postArr = {}
--	postArr.service = 'Idfas.Distinct'
--	postArr.uid = bid[name]['adid']
--	postArr.uid = '2106'
	postArr.source = 'xwzg'
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.device = model
	postArr.os = os_version
	postArr.ip =ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.keyword = e:escape(keyword)
	postArr.keyword = bid[name]['keyword']
--	postArr.udid = udid
--	if callbackKey then
--		postArr.callback  = e:escape("http://wenfree.cn/api/Public/idfa/?service=Idfa.Callbackname&idfa="..idfa.."&name="..name)
----		postArr.callback  = "http"
--	end

	local postdata = ""
	for k,v in pairs(postArr)do
		postdata = postdata .."&" ..k.."="..v
	end

	url = url.."?"..postdata
	log(url)
	local getdata = get(url)
	if  getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data.data[idfa]) == 0 then 
			log("idfa: OK.",true)
			return true
		else
			log("idfa------排重失败",true)
		end
	end
end

function clickidfa(name)
	log("准备点击")
	local url = "http://ad.masaike2018.com/ad/click"
	local postArr = {}
--	postArr.service = 'Idfas.Distinct'
--	postArr.uid = bid[name]['adid']
--	postArr.uid = '2106'
	postArr.source = 'xwzg'
	postArr.appid = bid[name]['appid']
	postArr.idfa = idfa
	postArr.device = model
	postArr.os = os_version
	postArr.ip =ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.keyword = e:escape(keyword)
	postArr.keyword = bid[name]['keyword']
--	postArr.udid = udid
--	if callbackKey then
--		postArr.callback  = (e:escape("http://wenfree.cn/api/Public/idfa/?service=Idfa.Callbackname&idfa="..dfa).."&name="..e:escape(name)))
		postArr.callback  = e:escape("http://wenfree.cn/api/Public/idfa/?service=Idfa.Callback&idfa="..idfa.."&appid="..bid[name]['appid'])
--		postArr.callback  = "http"
--	end
		
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end

	url = url..'?'..post_data
	log("url----------------\n" .. url)
	log(postArr)

	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if  data.message == '操作成功' and tonumber(data.status) == 1  then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
		end
	else
		log("点击返回空")
	end
end


function activeidfa(name)
	log("准备点击-上报")
	local url = "http://47.94.160.255/api/v1/click/qianxin"
	local postArr = {}
--	postArr.service = 'Idfas.Report'
--	postArr.uid = bid[name]['adid']
--	postArr.source = bid[name]['adid']
	postArr.appid = bid[work]['appid']
	postArr.idfa = idfa
--	postArr.device = model
--	postArr.os = os_version
	postArr.ip =ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.keyword = bid[name]['keyword']
--	postArr.udid = udid
--	if callbackKey then
		postArr.callback  = ("http://wenfree.cn/api/Public/idfa/?service=Idfa.Callbackname&idfa="..idfa.."&name="..name)
--		postArr.callback  = "http"
--	end

	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end

	url = url..'?'..post_data
	log("url----------------\n" .. url)
	log(postArr)

	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data["date"]["result"] == 'ok' or data["message"] == '操作成功' then
			log("激活成功: OK.",true)
			back_pass(task_id,"ok")
			return true
		else
			log("idfa-激活失败",true)
		end
	else
		log("点击返回空")
	end
end


--排重-点击-end
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
						delay(rd(5,10))
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
		fakerdevice = XXTfakerGetinfo(bid[name]['appbid'])
		if checkidfa(name)then
				if newidfa(name) then
					if clickidfa(name)then
--					if activeidfa(name)then
					up(name,bid[name]['keyword'].."-激活成功")
					back_pass(task_id,"ok")
--					end
				end
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

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(25,28 )
	while os.time()- TIMEline < OUTtime do
		if active(bid[name]['appbid'],4)then
			if d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
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
	return true
end




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
			ip = get_ip()
			callback_key = false
			if v.json == "回调" then
				callback_key = true
			end
			activeapi(work)
		end
		vpnx()
		delay(2)
	end
end















