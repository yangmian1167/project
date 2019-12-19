
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
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkidfa(name)
	log("准备查询->checkidfa")
	local url = "http://ad.adstart.cn/channel.php"
	local postArr = {}
	if #bid[name]["note"]>1 then
		postArr.id = bid[name]["note"][1]
	elseif name == "天天跟我买" then
		postArr.id="39"
	else
		postArr.id="30"
	end
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	
	local postdata = ""
	for k,v in pairs(postArr)do
		postdata = postdata .."&" ..k.."="..v
	end
	
	url = url.."?"..postdata
	log(url)
	local getdata = get(url)
	
	if bid[name]["note"][1] == "41" then
		local data = json.decode(getdata)
		if tonumber(data[idfa])== 0 then
			return true
		end
	elseif bid[name]["appid"] == "37" then
		if (getdata == "0") then
			return true
		end
	elseif bid[name]["note"][1] == "22" and getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data['msg'] == "ok" or tonumber(data["Content"]["CheckIdfaResults"][1]["IsActive"]) == 1 then
			log("idfa: OK.",true)
--			Source = data["Content"]["Source"]
			return true
		else
			log("idfa------排重失败",true)
		end
	end
end

function clickidfa(name)
	log("准备点击")
	local url = "http://ad.adstart.cn/channel.php"
--	http://ad.adstart.cn/channel.php?id=30&ip={ip}&idfa={idfa}&callback={callback} 
	local postArr = {}
	
	if #bid[name]["note"]>1 then
		postArr.id = bid[name]["note"][2]
	elseif name == "天天跟我买" then
		postArr.id="39"
	else
		postArr.id="30"
	end
	
	postArr.idfa=idfa
	postArr.ip=ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.callback  = e:escape("http://idfa888.com/Public/idfa/?service=idfa.callback&idfa="..idfa)
	
	local post_data = ''
	for k,v in pairs(postArr)do
		post_data = post_data..k..'='..v..'&'
	end
	
	url = url..'?'..post_data
	log("url----------------\n" .. url)
	log(postArr)

	local getdata = get(url)
	if bid[name]["note"][2] == "42" then
		local data = json.decode(getdata)
		if(data['error']) == "成功" then
			return true
		end
	elseif name == "天天跟我买" then
		if getdata == "1" then
			return true
		end
	elseif getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if tonumber(data["Content"]["IsActive"]) == 1 or data.message == 'ok' then
			log("点击成功: OK.",true)
			return true
		else
			log("idfa-点击失败",true)
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
		if checkidfa(name)then
			if clickidfa(name)then
				delay(rd(2,3))
				newidfa(name)
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

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(20,25 )
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
end

function main(v)
	work = v.work
	task_id = v.task_id
	bid={}
	bid[work]={}
	bid[work]['keyword']=v.keyword
	bid[work]['appbid']=v.appbid
	bid[work]['appid']=v.appid
	bid[work]['note']=string.split(v.note,'|')
	
	if vpn() then
		if checkip()then
	-----------------------------------
			if callbackapi(work)then
				task_callback(task_id,"ok")
				up(work,"点击成功")		--上传到idfa888 备份
			end
	------------------------------------
		else
			task_callback(task_id,"ip重复")
		end
		vpnx()
		delay(2)
	else
		task_callback(task_id,"vpn-false")
	end
end



















