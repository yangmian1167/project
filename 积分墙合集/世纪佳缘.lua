nLog = require('nLog')()
require('faker')
require('xxtsp')
--require('lianxin')
--require("jiema")
require("name")

--require("LuaDemo")


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
--[[
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
--]]--

phonenamelist = {}

for i=1,40 do
	key = "iPhone"..i
	phonenamelist[key]="nj"..i
end

--[[
local appbids = app.front_bid()
if appbids ~= "com.apple.springboard" then
	app.quit(appbids)
	vpnx()
--	closeX(appbids)
end
--]]


screen.init(0)
var = {}
var.lun = 0


--服务器对接取号

function _Server_get()
	phone_name = device.name()
	phone_imei = device.serial_number()
	log(phone_name)
	log(phone_imei)
	return{
		login=(function()
			return	
		end),
		addBlack=(function()
			return	
		end),
		getPhone = (function()
				RetStr = get('http://sms.wenfree.cn/public/?service=App.Sms.GetPhone'.."&imei="..phone_imei.."&phonename="..phone_name)
				RetStr = json.decode(RetStr)
				log(RetStr)
				if RetStr then
					if RetStr.data.meg == success or RetStr.data.meg == 'success' then
						phone = RetStr.data.phone
						log(phone)
					end
				else
					log(RetStr)
				end
				delay(3)
				return phone
		end),
		 getMessage=(function()
			local Msg
            for i=1,25,1 do
				sys.msleep(3000)
				RetStr = get("http://sms.wenfree.cn/public/?service=App.Sms.GetMessage".."&imei="..phone_imei.."&phonename="..phone_name)
				RetStr = json.decode(RetStr)
				log(RetStr);
				if RetStr then
					if RetStr.data.meg == success or RetStr.data.meg == 'success' then
						Msg = RetStr.data.sms
						if type(tonumber(Msg))== "number" then log(Msg); return Msg 
						else
							log(Msg)
							local i,j = string.find(Msg,"%d+")
							Msg = string.sub(Msg,i,j)
							if type(tonumber(Msg))== "number" then log(Msg); return Msg end
						end
					end
				end
				toast(tostring(RetStr).."\n"..i.."次共25次")
				delay(3)
            end
            return false
        end),
	
	
	}
	
end
dxcode = _Server_get()

function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = ip or '192.168.1.1'
	idfalist.account = account or locals or get_local() or '未知'
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end
function up_hb(other)
	local url = 'http://hb.wenfree.cn/api/Public/idfa/'
	local postdate = {}
	postdate.service = 'Idfa.Idfa'
	postdate.name = '世纪佳缘'
	postdate.idfa = phone
--	postdate.phone = phone
	postdate.password = password
	postdate.ip = ip or get_ip() or '192.168.1.1'
	postdate.other = other
	postdate.account = account
	log(post(url,postdate))
	-- body
end
function checkip()
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

function checkphone()
--	ip = get_ip() or "192.168.1.1"
--	log(ip)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=Ip.Checkphone&name=婚恋网&phone='..phone
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("手机号可以用:OK.",true)
			return true
		else
			log("手机重复, 排重失败",true)
		end
	end
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

phonekeyArr = {
	{104,  760, 0xffffff},
	{317,  768, 0xffffff},
	{526,  755, 0xffffff},
	{112,  866, 0xffffff},
	{330,  869, 0x696969},
	{522,  874, 0xffffff},
	{115,  977, 0xffffff},
	{322,  978, 0x000000},
	{544,  962, 0x000000},
	[0]={316, 1081, 0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(phonekeyArr[phone_mun][1],phonekeyArr[phone_mun][2],0.3)
	end
end

function get_local()
    local done = false
	local outtime = os.time()
    thread.dispatch(function()
		outtime = os.time()
        while (os.time()-outtime < 30) do
            if (done) then
                sys.toast("", -1)
                return
            else
                sys.toast("正在获取 IP 地址...", device.front_orien())
            end
            sys.msleep(2000)
        end
    end)
    while (os.time() - outtime < 30) do
--		local c, h, b = http.get("http://ip.chinaz.com/getip.aspx?ts="..tostring(sys.rnd()), 30)
--		local c, h, b = http.get("http://pv.sohu.com/cityjson?ie=utf-8", 30)
		local c, h, b = http.get("https://wenfree.cn/api/app.php?s=App.IP.GetInfo", 30)
--        local c, h, b = http.get("https://www.ipip.net/",30)
        if (c==200) then
            sys.toast("", -1)
            done = true
--            return b:match('%d+%.%d+%.%d+%.%d+'),b:match('所在地理位置：<code>.*</code>')
            return b:match('%d+%.%d+%.%d+%.%d+'),b:match('cname.*}')
        end
    end
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

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

bid={}
bid.app = 'com.jiayuan.jiayuaniphone'

page={}

--page_手机号登录注册 = {{{252,  956, 0xcf1278},{262,  956, 0xcf1278},{264,  970, 0xe36837},{460,  962, 0xc9b29d},{406, 1058, 0x4e97d5},}, 85, 140, 924, 548, 1110}
page_手机号登录注册 = {{{ 82, 171, 0xa1a2a3},{ 79, 201, 0xc4c5c5},{ 92, 216, 0xcecfcf},{463, 169, 0x4d4f50},{461, 217, 0xc0c1c1},{469, 193, 0x88898a},}, 85, 76, 161, 476, 226}
page_手机号登录注册_获取验证码 = {{{360, 632, 0xffffff},{254, 635, 0xffffff},{193, 611, 0xf95a76},{443, 661, 0xf83f83},{391, 623, 0xfff9fb},{390, 620, 0xf84182},}, 85, 83, 588, 557, 689}
page_填写资料1界面 = {{{305, 164, 0xb7b7b7},{317, 193, 0x676767},{345, 197, 0xc0c0c0},{309, 263, 0xaacdec},{393, 270, 0xc4dcf2},}, 85, 297, 139, 404, 286}

function reg()
	local TimeLine = os.time()
	local OutTime = 60*5

	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
--	local 密码 = true
	local 提交过了 = false
	local movekey = 1
	取短信次数 = 0
	发验证码次数 = 0
	sex = rd(1,100)
	sex_key = 50
--	password = myRand(4,rd(8,12))
	password = 'AaDd112211'

	while os.time()-TimeLine < OutTime do
		if active(bid.app,10)then
			if d(page_手机号登录注册,'page_手机号登录注册') then
				
				if 取号 then
					phone = dxcode.getPhone()
--					log(phone)
					number = phone
					if phone ~= nil or phone ~= '' then
						delay(2.8)
						if type(tonumber(phone)) == "number" then
							click(285, 335)
							phoneKey(phone)
							取号 = false
							短信 = true
						end
					end
				elseif 短信 then
					if d(page_手机号登录注册_获取验证码,'page_手机号登录注册_获取验证码',true) then
					else
						yzm = dxcode.getMessage()
--						log(yzm)
						if yzm ~= nil or yzm ~= '' then
							click(180, 429)
							delay(2.8)
							phoneKey(yzm)			
							短信 = false
							提交 = true
--						else
--							return false
						end
					end	

				end	
			elseif d(page_上传头像跳过,'page_上传头像跳过',true) then
			elseif d(page_上传头像跳过1,'page_上传头像跳过1',true) then
			elseif d(page_主界面,'page_主界面') or d(page_主界面2,'page_主界面2')or d(page_主界面3,'page_主界面3') then
				up_hb('注册过拉黑')
				return false
			elseif 提交 and  d(page_填写资料1界面,'page_填写资料1界面') then
				up_hb('提交注册')
				return true
			end
		end
		delay(0.5)
	end
end	

page_填写资料1界面_生日未选择 ={{{442, 664, 0xf5f5f5},{527, 681, 0xefefef},{525, 661, 0xf8f8f8},{453, 687, 0xdddddd},{470, 686, 0xe5e5e5},{395, 186, 0x878787},}, 85, 435, 653, 539, 693}
page_填写资料1界面_地区未选择 ={{{442, 756, 0xf5f5f5},{440, 764, 0xdfdfdf},{439, 776, 0xf5f5f5},{525, 753, 0xf8f8f8},{519, 779, 0xe5e5e5},}, 85, 431, 748, 534, 784}
page_填写资料1界面_请输入昵称 ={{{183, 442, 0xf4f4f4},{181, 449, 0xf5f5f5},{185, 466, 0xeeeeee},{319, 440, 0xebebeb},{329, 444, 0xf4f4f4},{322, 466, 0xdcdcdc},}, 85, 179, 436, 337, 476}
page_完成 ={{{557, 647, 0xc2e3ff},{547, 650, 0x8dcbff},{602, 668, 0xc8e6ff},{599, 673, 0xa9d8ff},}, 85, 542, 639, 607, 679}
page_完成_生日 ={{{294, 645, 0xe8e8e8},{288, 658, 0xa1a1a1},{289, 670, 0xdddddd},{346, 646, 0xdadada},{346, 673, 0xd5d5d5},}, 85, 282, 638, 356, 678}
page_完成_所在地区 ={{{258, 647, 0xbebebe},{281, 645, 0x848484},{255, 672, 0xd4d4d4},{381, 646, 0x8b8b8b},{382, 670, 0xd3d3d3},}, 85, 248, 639, 390, 679}
page_完成_身高 ={{{300, 644, 0xe8e8e8},{336, 644, 0xe3e3e3},{290, 673, 0xd7d7d7},{308, 674, 0xcacaca},{323, 674, 0xebebeb},{347, 673, 0xb6b6b6},}, 85, 286, 636, 356, 678}
page_完成_学历 ={{{293, 645, 0x868686},{301, 644, 0xc8c8c8},{311, 644, 0xe0e0e0},{297, 673, 0xb5b5b5},{344, 673, 0xaaaaaa},}, 85, 282, 635, 357, 678}
page_完成_月薪 ={{{294, 646, 0xc7c7c7},{291, 672, 0xb1b1b1},{329, 644, 0xe7e7e7},{342, 644, 0xf3f3f3},{346, 674, 0xe7e7e7},}, 85, 289, 638, 355, 679}
page_完成_婚史 ={{{292, 644, 0xe6e6e6},{288, 672, 0xc6c6c6},{314, 645, 0x808080},{337, 645, 0xa5a5a5},{350, 671, 0xeaeaea},}, 85, 285, 639, 356, 681}

page_填写资料1界面_下一步 ={{{539, 82, 0x979797},{538, 84, 0x333333},{495, 69, 0x989898},{596, 86, 0x898989},}, 85, 488, 50, 607, 112}

page_填写资料2界面 ={{{305, 162, 0xc7c7c7},{307, 193, 0x000000},{343, 201, 0xa4a4a4},{367, 149, 0xbcbcbc},{338, 186, 0x878787},}, 85, 293, 138, 374, 209}
page_填写资料2界面_未选择 ={{{442, 447, 0xd9d9d9},{439, 466, 0xf5f5f5},{471, 443, 0xf4f4f4},{525, 444, 0xe8e8e8},{519, 469, 0xe5e5e5},{527, 464, 0xefefef},}, 85, 434, 438, 541, 760}
page_填写资料2界面_完成注册 ={{{305, 938, 0xffffff},{263, 935, 0xffffff},{121, 903, 0xf96a6f},{503, 973, 0xf83b85},{503, 913, 0xf83b85},}, 85, 59, 884, 563, 994}

page_上传头像跳过 ={{{546,  76, 0xffffff},{549,  77, 0x363839},{406, 456, 0xd8d8d8},{345, 461, 0xffffff},{254, 287, 0x4a95d5},{192, 181, 0x000000},}, 85, 27, 51, 601, 496}
page_上传头像跳过1 ={{{547,  97, 0x66686c},{533,  87, 0x66686c},{588, 111, 0x6b6d71},{583,  85, 0xbabbbd},{588,  90, 0xc0c1c3},}, 85, 521, 68, 596, 128}
page_主界面 ={{{69, 1080, 0xff2181},{48, 1067, 0xff566d},{67, 1118, 0xe52553},{74, 1130, 0xe73862},{74, 1125, 0xffffff},}, 85, 33, 1046, 94, 1133}
page_主界面2 ={{{74, 1078, 0xff1a83},{62, 1069, 0xff2b7e},{58, 1066, 0xffffff},{54, 1066, 0xff4176},{68, 1116, 0xe42351},{72, 1116, 0xffffff},}, 85, 37, 1048, 91, 1132}
page_主界面3 ={{{71, 1077, 0xff1f82},{50, 1074, 0xff4f71},{58, 1064, 0xffffff},{58, 1058, 0xffffff},{52, 1062, 0xff4973},}, 85, 36, 1050, 89, 1100}
function fix()
	local TimeLine = os.time()
	local OutTime = 60*5
	local 比例男 = math.random(1,100)
	local	  xingbie = ''
	local 完成注册key = false
	while os.time()-TimeLine < OutTime do
		if active(bid.app,10)then
			if d(page_主界面,'page_主界面') or d(page_主界面2,'page_主界面2')or d(page_主界面3,'page_主界面3') then
				if 完成注册key then
					up_hb('完整注册')
					return true
--				else
--					up_hb('注册过拉黑')
--					return true
				end
			elseif d(page_填写资料1界面,'page_填写资料1界面') then
				if d(page_填写资料1界面_下一步,'page_填写资料1界面_下一步') then
					if 比例男 <= 50 then
						xingbie = '男'
						click(135, 571)
						click(135, 571)
					else
						xingbie = '女'
						click(451, 555)
						click(451, 555)
					end	
					d(page_填写资料1界面_下一步,'page_填写资料1界面_下一步',true)
				elseif d(page_填写资料1界面_生日未选择,'page_填写资料1界面_生日未选择',true) then
				elseif d(page_填写资料1界面_地区未选择,'page_填写资料1界面_地区未选择',true) then
				
				elseif d(page_填写资料1界面_请输入昵称,'page_填写资料1界面_请输入昵称') then
					click(475, 457)
				else
					if 比例男 <= 50 then
						xingbie = '男'
						click(135, 571)
					else
						xingbie = '女'
						click(451, 555)
					end	
				end	
			elseif d(page_填写资料2界面,'page_填写资料2界面') then
				if d(page_填写资料2界面_未选择,'page_填写资料2界面_未选择',true) then
				elseif d(page_填写资料2界面_完成注册,'page_填写资料2界面_完成注册',true) then
					完成注册key = true
				end	
			elseif d(page_完成,'page_完成') then
				if d(page_完成_生日,'page_完成_生日') then
					local 随机1 = math.random(1,5) 
					local 随机2 = math.random(1,3) 
					local 随机3 = math.random(1,3) 
					for i = 1 , 随机1 do
						click(315, 858)
					end	
					for i = 1 , 随机2 do
						click(315, 858)
					end	
					for i = 1 , 随机3 do
						click(457, 854)
					end	
					d(page_完成,'page_完成',true)
				elseif d(page_完成_所在地区,'page_完成_所在地区') then
					local 随机4 = math.random(1,10) 
					local 随机5 = math.random(1,10) 
					for i = 1 , 随机4 do
						click(185, 986)
					end
					for i = 1 , 随机5 do
						click(489, 988)
					end	
					d(page_完成,'page_完成',true)
				elseif d(page_完成_身高,'page_完成_身高') then
					if 比例男 <= 50 then
						for i = 1 ,math.random(4,8) do
							moveTo(342, 1083,342,  988)
							delay(1)
						end
					else
						for i = 1 ,math.random(3,4) do
							moveTo(342, 1083,342,  988)
							delay(1)
						end
					end
					d(page_完成,'page_完成',true)
				elseif d(page_完成_学历,'page_完成_学历') then
					for i = 1 , math.random(1,5) do
						click(342, 977)
					end	
					d(page_完成,'page_完成',true)
				elseif d(page_完成_月薪,'page_完成_月薪') then	
					for i = 1 , math.random(1,4) do
						click(339, 991)
					end	
					d(page_完成,'page_完成',true)
				elseif d(page_完成_婚史,'page_完成_婚史') then
					click(338, 980)
					d(page_完成,'page_完成',true)
				else
					d(page_完成,'page_完成',true)
				end	
			else
				if d(page_上传头像跳过,'page_上传头像跳过',true) then
				elseif d(page_上传头像跳过1,'page_上传头像跳过1',true) then
				end
			end	
			
		end
		delay(1)
	end
end







--[[]]
function main(v)
	task_id = v.task_id
	vpnx()
	delay(3)
	if false or vpn() then
		ip,locals = get_local()
		if ip ~= "192.168.1.1" and ip~= nil then
			if true or checkip()then
				if false or XXTfakerNewPhone(bid.app)then
					idfa = XXTfakerGetinfo(bid.app)['IDFA']
					delay(1)
					if reg()then
						if fix() then
							back_pass(task_id,"ok")
						end
--					else
						--yzm.get.cancelRecv()
					end
				end
	
			end
		end
	end
--	app.quit(bid.app)
--	delay(2)
end

--]]




















