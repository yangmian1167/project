
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
	idfalist.device =json.encode(fakerdevice) 
	return post(url,idfalist)
end

function checkidfa(name)
	log("准备查询->checkidfa")
	local url = "http://wenfree.cn/api/Public/idfa/"
	local postArr = {}
	postArr.service = 'Idfas.Distinct'
	postArr.uid = bid[name]['adid']
--	postArr.uid = '2106'
	postArr.source = 'meizh'
	postArr.appid = bid[work]['appid']
	postArr.idfa = idfa
	postArr.device = model
	postArr.os = os_version
	postArr.ip =ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.keyword = e:escape(keyword)
	postArr.keyword = bid[name]['keyword']
	postArr.udid = udid
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
			log("idfa排重: OK.",true)
			return true
		else
			log("idfa------排重失败",true)
		end
	end
end

function clickidfa(name)
	log("准备点击")
	local url = "http://wenfree.cn/api/Public/idfa/"
	local postArr = {}
	postArr.service = 'Idfas.Click'
	postArr.uid = bid[name]['adid']
--	postArr.uid = '2106'
	postArr.source = 'meizh'
	postArr.appid = bid[work]['appid']
	postArr.idfa = idfa
	postArr.device = model
	postArr.os = os_version
	postArr.ip =ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
--	postArr.keyword = e:escape(keyword)
	postArr.keyword = bid[name]['keyword']
	postArr.udid = udid
	if callback_key then
		postArr.callback  = (e:escape("http://wenfree.cn/api/Public/idfa/?service=Idfa.Callbackname&idfa="..idfa.."&name="..name))
--		postArr.callback  = "http"
	end
	
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
		if  data.data.msg == 'success' then
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
	local url = "http://wenfree.cn/api/Public/idfa/"
	local postArr = {}
	postArr.service = 'Idfas.Report'
	postArr.uid = bid[name]['adid']
	postArr.source = 'meizh'
	postArr.appid = bid[work]['appid']
	postArr.idfa = idfa
	postArr.device = model
	postArr.os = os_version
	postArr.ip =ip or get_ip() or rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)..'.'..rd(1,255)
	postArr.keyword = bid[name]['keyword']
	postArr.udid = udid
	if callback_key then
		postArr.callback  = (e:escape("http://wenfree.cn/api/Public/idfa/?service=Idfa.Callbackname&idfa="..idfa.."&name="..name))
--		postArr.callback  = "http"
	end

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
		if tonumber(data["code"]) == 200 or data.data.msg == 'success' then
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
			if clickidfa(name)then
				delay(rd(60,65))
				vkey = rd(1,100)
				log(vkey)
				if bid[work]['adid'] == '2770' then
					if vkey > 15 then
						log('准备激活')
						newidfa(name)
					elseif vkey <= 15 then
						log('准备试玩')
						newplayer(name)
					end
				elseif bid[work]['adid'] == '2764' then
					if vkey > 15 then
						log('准备激活')
						newidfa(name)
					else
						log('准备试玩')
						newplayer1(name)
					end
				else
					newidfa(name)
				end
				if activeidfa(name)then
					up(name,bid[name]['keyword'].."-激活成功")
				end
			end
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

apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.right_agree={{
		{475, 964, 0x49b849},
		{478, 968, 0xffffff},
		}, 85, 323, 602, 624, 1132}

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(60,70)
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

apparr.游客登录={{{597, 777, 0xffffff},{574, 782, 0xffffff},{573, 776, 0xf7663a},{513, 790, 0xf9825e},}, 85, 504, 754, 618, 797}
apparr.账号进入游戏={{{303, 770, 0xfefefa},{215, 751, 0xf9683b},{218, 787, 0xf96e39},{478, 752, 0xfd7c34},}, 85, 63, 715, 589, 834 }
apparr.协议确认={{{342, 878, 0xfcefd1},{265, 863, 0x745522},{378, 897, 0x664611},}, 85, 233, 849, 413, 919}
apparr.进入游戏={{{300, 912, 0xfaf4c8},{228, 895, 0x997e2d},{412, 943, 0x694619},}, 85, 177, 860, 489, 1077}
apparr.领取奖励={{{528, 869, 0xffffff},{465, 857, 0x897631},{565, 872, 0x6e5602},}, 85, 462, 849, 576, 885}
apparr.前往打怪={{{442, 640, 0xfcfcfa},{393, 632, 0x8f7c36},{485, 655, 0x6e5601},}, 85, 382, 626, 501, 667}
apparr.关闭窗口={{{619, 87, 0x7c5b29},{611, 74, 0xc0ab4f},{607, 62, 0x313336},}, 85, 590, 52, 636, 103}
apparr.实名窗口={{{589, 336, 0x515151},{590, 328, 0xffffff},{375, 325, 0xf8663d},{372, 346, 0xffffff},{275, 339, 0xf97b57},}, 85, 245, 313, 613, 355}
apparr.选区窗口关闭={{{556, 231, 0xf6f198},{566, 250, 0x6a4e20},{555, 241, 0x0f0f0e},{554, 223, 0x2b2a2a},}, 85, 535, 214, 577, 256}
function newplayer(name)
	local TIMEline = os.time()
	local OUTtime = math.random(240,280 )
	while os.time()- TIMEline < OUTtime do
		if active(bid[name]['appbid'],4)then
			if d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
			elseif d(apparr.游客登录,"apparr.游客登录",true)then
			elseif d(apparr.实名窗口,"apparr.实名窗口",true)then
			elseif d(apparr.账号进入游戏,"apparr.账号进入游戏",true)then
			elseif d(apparr.协议确认,"apparr.协议确认",true)then
			elseif d(apparr.进入游戏,"apparr.进入游戏",true)then
			elseif d(apparr.领取奖励,"apparr.领取奖励",true)then
			elseif d(apparr.前往打怪,"apparr.前往打怪",true)then
			elseif d(apparr.关闭窗口,"apparr.关闭窗口",true)then
			elseif d(apparr.选区窗口关闭,"apparr.选区窗口关闭",true)then
			else
				click(323, 855)
				delay(1)
--				click(517, 863)
--				delay(1)
			end
		else
			log("启动一次")
		end
	end
	return true
end

gy = {}
gy.游客登录={{{ 97, 761, 0xf9825e},{100, 795, 0xffffff},{ 98, 821, 0xf86e44},{109, 851, 0xf8764e},}, 85, 89, 747, 129, 868}
gy.允许={{{216, 710, 0x007aff},{211, 705, 0xf9f9f9},{204, 436, 0x007aff},}, 85, 189, 364, 254, 761}
gy.进入游戏={{{111, 524, 0xfbfdfc},{ 83, 392, 0xfa6c38},{127, 402, 0xf9683b},{102, 772, 0xff8b32},}, 85, 76, 325, 157, 848}
gy.实名弹窗={{{551, 841, 0x515151},{550, 822, 0xffffff},{541, 562, 0xf8663d},{544, 553, 0xffffff},}, 85, 523, 492, 584, 864}
gy.下一步={{{53,  952, 0x304265},{72, 1055, 0x304369},{53,  991, 0x364e71},}, 85, 30, 923, 88, 1072}
gy.开启冒险={{{ 92,  868, 0x384a6b},{112,  961, 0x3a537a},{ 92, 1016, 0x344769},}, 85, 61, 838, 120, 1051}
gy.游戏公告={{{131, 570, 0x2992c4},{122, 513, 0x2164a3},{141, 615, 0x2575b0},}, 85, 107, 488, 161, 654}
gy.开始游戏={{{121, 629, 0x2571ae},{ 97, 502, 0x2162a1},{113, 499, 0x236ba8},}, 85, 74, 488, 145, 658}
gy.更新={{{188, 703, 0xdf9824},{193, 658, 0xd4881a},{189, 434, 0x2a91c4},}, 85, 171, 357, 209, 769}
function newplayer1()
	local TIMEline = os.time()
	local OUTtime = math.random(240,280 )
	local 切换网络key = true
	while os.time()- TIMEline < OUTtime do
		if active(bid[name]['appbid'],4)then
			if 切换网络key then
				delay(15)
				vpnx()
				closeX(app.front_bid())
				切换网络key =false
			elseif d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
			elseif d(gy.实名弹窗,"gy.实名弹窗",true)then
			elseif d(gy.游客登录,"apparr.游客登录",true)then
			elseif d(gy.允许,"gy.允许",true)then
			elseif d(gy.进入游戏,"gy.进入游戏",true)then
			elseif d(gy.下一步,"gy.下一步",true)then
			elseif d(gy.开启冒险,"gy.开启冒险",true)then
			elseif d(gy.游戏公告,"gy.游戏公告",true)then
			elseif d(gy.开始游戏,"gy.开始游戏",true)then
			elseif d(gy.更新,"gy.更新",true)then
			else
				click(323, 855)
				delay(1)
--				click(517, 863)
--				delay(1)
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















