nLog = require('nLog')()
require('faker')
require('xxtsp')
--require("yumi")
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

atexit(function() 
		sys.toast('脚本结束了！')
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
--			closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.app = 'com.baihe.online'

phonenamelist = {}

for i=1,40 do
	key = "iPhone"..i
	phonenamelist[key]="nj"..i
end


local appbids = app.front_bid()
if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
	vpnx()
--	closeX(appbids)
end

--[[

local success = vpnconf.create{
    dispName = 'nj-'..device.name(),       -- VPN 的显示名
    VPNType = "L2TP",              -- VPN 的类型，支持 PPTP、L2TP、IPSec、IKEv2
    server = 'yhtip.com',    -- 服务器地址
    authorization = phonenamelist[device.name()],      -- 账号
    password = 'Aa112211',           -- 密码
    secret = '1',            -- 密钥，PPTP 可不填
    encrypLevel = 1,               -- 加密级别，选填，默认 1
    group = '',                    -- 群组名称，选填，默认 ""
    VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
}
if success then
    sys.alert('创建成功')
else
    sys.alert('创建失败，确定人品没有问题？')
end
os.exit()
--]]


screen.init(0)
var = {}
var.lun = 0

--[[
--kfy.id = '10482'
if not(YUMI())then
	log("--")
	os.exit()
else
	log(yumi.token)
end
--全局变量
--]]

function getId()
	local url = 'http://idfa888.com/Public/dyid/?service=dyid.getfix'
	local idfalist ={}
	return post(url,idfalist)
end
function backfix(id)
	local url = 'http://idfa888.com/Public/dyid/?service=dyid.backfix&id='..id
	local idfalist ={}
	return post(url,idfalist)
end
--[[
testdata ={
	["ret"] = 200,
	["data"]= {
		["id"]= "2",
		["phonename"]= "xxt-5s",
		["phoneimei"]= "F18MK243FF9V",
		["phoneos"]= "11.0.3",
		["name"]= "百合网",
		["idfa"]= "5E5AD232-C80F-4AEE-FE0C-246C675450C0",
		["ip"]= "114.217.4.242",
		["account"]= "所在地理位置：<code>江苏省苏州市 电信</code>",
		["password"]= "Km26229753",
		["phone"]= "15143244630",
		["other"]= "女",
		["todo"]= "no",
		["time"]= "1536296222",
		["addtime"]= "1536296164"
	},

}
--]]

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
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




imgUrl = "http://image.baidu.com/channel/listjson?pn=15000&rn=1&tag1=%E7%BE%8E%E5%A5%B3&tag2=%E5%85%A8%E9%83%A8&ftags=%E5%A4%B4%E5%83%8F&ie=utf8"


page={}
page.切换登录按钮 ={{{422, 119, 0xa7a7a7},{448, 104, 0x555555},{214, 119, 0xff9300},}, 85, 101, 79, 528, 170}
page.登录界面 ={{{419, 117, 0xff9300},{405, 117, 0xff9300},{429, 150, 0xff6759},{215, 118, 0x5b5b5b},{216, 119, 0xffffff},}, 85, 165, 90, 519, 162}
	page.登录按钮 ={{{310, 460, 0xffffff},{362, 460, 0xff5d5f},{115, 472, 0xff7b48},}, 85, 52, 271, 577, 858}
	page.手机号 ={{{128,397,0xc7c7cd},{161,391,0xc7c7cd},{190,383,0xc7c7cd},}, 85, 27, 353, 589, 427}
page.封号={{{163,646,0x1282fd},{397,647,0x007aff},{321,534,0x000000},{446,453,0xf9f9f9},},85}
page.封号不存在={{{254, 575, 0xffffff},{325, 587, 0x4c3736},{437, 573, 0xf5f2f2},}, 85}

function loginbh()
	local TimeLine = os.time()
	local OutTime = 60*3
	local logintimes = 0
	
	while os.time()-TimeLine < OutTime do
		if active(bid.app,5)then	
			if d(page.切换登录按钮,"page.切换登录按钮",true)then
			elseif d(page.登录界面 ,"page.登录界面")then
--				if d(page.手机号,'page.手机号',true)then
					click(117, 232)
					input(bhdata.data.phone)
					click(101, 211)
					input(bhdata.data.password)
					d(page.登录按钮,"page.登录按钮",true)
--				end
				if d(page.封号不存在,"page.封号不存在")then
					return false
				elseif d(page.登录按钮,"page.登录按钮",true)then
					logintimes = logintimes + 1
					if logintimes > 20 then
						return false
					end
				end
				
			elseif d(page.本地相册,"page.本地相册",true,3)then
				delay(rd(2,4))
				return true
			else
				if d(page.封号,'page.封号',true,1) then
					return false
				else
					click(40, 84)
				end
			end
		end
	end
end


















page.主菜单={{{578,1096,0x929292},{300,1079,0x9d9d9d},{179,1078,0x929292},{49,1086,0xff425a},}, 85, 22, 1050, 623, 1132}
page.主菜单_我的_资料={{{567,192,0xaaaaaa},{590,83,0x979797},{578,1096,0xff2983},{300,1080,0x9d9d9d},{43,1074,0x929292},}, 85, 0, 0, 0, 0}
page.编辑_编辑_我喜欢谁={{{544,825,0xff5e00},{544,605,0xff5e00},{530,330,0xff5e00},{597,70,0xffffff},{527,356,0xff5e00},}, 85, 445, 45, 629, 875}
page.编辑_编辑_我喜欢谁ios10={{{549,792,0xff5e00},{549,808,0xff5e00},{549,765,0xff5e00},{549,784,0xfff5ef},{530,284,0xff5e00},
					{531,319,0xff5e00},}, 85, 468, 222, 620, 840}
page.编辑资料界面={{{388,80,0x525252},{367,87,0x525252},{300,73,0x525252},{52,83,0xfc6e27},}, 85, 9, 53, 521, 115}
page.infolist={
	{607, 354, 0xd1d1d5},
	{608, 446, 0xcbcbd0},
	{608, 538, 0xcbcbd0},
	{608, 722, 0xcbcbd0},
	{607, 814, 0xd1d1d5},
	{607, 906, 0xd1d1d5},
}
page.滑动确定={{{601,662,0xfd6e27},{603,648,0xfd6e27},}, 85, 588, 493, 622, 877}
page.编辑资料_保存={{{599,89,0xfd6e27},{550,80,0xfd6e27},{367,79,0x525252},{52,83,0xfc6e27},}, 85, 23, 47, 626, 120}
page.编辑_更多资料界面={{{596,72,0xfc6127},{568,85,0xfc6127},{594,98,0xfc6127},{52,84,0xfc6e27},
					{38,82,0xffffff},}, 85, 18, 45, 636, 122}
page.编辑_基本资料={{{547,1074,0xff5e00},{547,1062,0xff5e00},{58,1078,0x333333},{58,1081,0xffffff},
					{58,1083,0x333333},{32,1082,0x333333},{59,1069,0x333333},{59,1096,0x333333},}, 85, 0, 0, 0, 0}



function clickM(x,y,m)
	local m = m or 1
	for i=1,m do
		click(x,y,0.5)
	end
end


function makeinfo()
	local TimeLine = os.time()
	local OutTime = 60*3
	local sexhight = false
	local makeinfo_ = false
	
	
	while os.time()-TimeLine < OutTime do
		if active(bid.app,5)then
			if d(page.主菜单,"page.主菜单",true)then
			elseif d(page.主菜单_我的_资料,"page.主菜单_我的_资料",true)then
			elseif makeinfo_ and (d(page.编辑_编辑_我喜欢谁,"page.编辑_编辑_我喜欢谁",false)or d(page.编辑_编辑_我喜欢谁ios10,"page.编辑_编辑_我喜欢谁ios10",false))then
				up("百合网",sexk.."修改资料")
				sys.alert("注册完成,即将退出",3)
				closeX(appbids)
				return true
			elseif d(page.编辑_编辑_我喜欢谁,"page.编辑_编辑_我喜欢谁",false) or d(page.编辑_编辑_我喜欢谁ios10,"page.编辑_编辑_我喜欢谁ios10",false) then
					if sexhight then
						moveTo(300,700,300,400,5,20)
						moveTo(300,700,300,400,5,20)
					else
						if d(page.编辑_编辑_我喜欢谁,"page.编辑_编辑_我喜欢谁",true)then
						elseif d(page.编辑_编辑_我喜欢谁ios10,"page.编辑_编辑_我喜欢谁ios10",true)then
						end
					end
			elseif d(page.编辑资料界面,"page.编辑资料界面",false)then
					for i,v in ipairs(page.infolist)do
						click(v[1],v[2])
						if i == 1 then
							clickM(168, 809,rd(6,9))
						elseif i == 2 then
							clickM(171, 1035,rd(1,2))					
						elseif i == 3 then
							clickM(171, 1035,rd(1,2))
							clickM(468, 1037,rd(1,3))
						elseif i == 4 then
							local choice = {
								{585,  831, 0xffeade},
								{585,  916, 0xffffff},
								{585, 1003, 0xffffff},
							}
							click(choice[1][1],choice[rd(1,#choice)][2])
						elseif i == 5 then
							local choice = {
								{583,  628, 0xff5e00},
								{584,  717, 0xffffff},
								{590,  811, 0xffffff},
								{589,  892, 0xffffff},
								{585,  979, 0xffffff},
								{590, 1068, 0xffffff},
							}						
							click(choice[1][1],choice[rd(1,#choice)][2])
						elseif i == 6 then
							local choice = {
								{583,  742, 0xff5e00},
								{588,  828, 0xffffff},
								{588,  919, 0xffffff},
								{586, 1001, 0xffffff},
								{587, 1093, 0xffffff},
							}
							click(choice[1][1],choice[rd(1,#choice)][2])
						end
						d(page.滑动确定,"page.滑动确定",true)
					end
					if d(page.编辑资料_保存,"page.编辑资料_保存",true)then
						delay(5)
						makeinfo_ = true
					end

			elseif d(page.编辑_更多资料界面,"page.编辑_更多资料界面") then
				if d(page.编辑_基本资料,"page.编辑_基本资料",true)then
				else
					moveTo(300,700,300,400,5,20)
				end
			else
				if d(page.本地相册,"page.本地相册",true,3)then
					
				end
			end
		end
		delay(0.5)
	end
end






page.基本资料界面={{{380,76,0x000000},{370,72,0xffffff},{368,72,0x000000},{42,83,0x888888},},85}
	page.基本资料界面_请输入={{{444,285,0xc7c7cd},{457,285,0xc7c7cd},{495,285,0xff8432},{501,285,0xffffff},}, 85, 367, 255, 519, 319}
	page.基本资料界面_性别女={{{538,372,0xe2e2e2},{406,376,0x9bc1fd},{386,379,0x9bc1fd},}, 85, 365, 349, 590, 417}
		page.基本资料界面_性别女_选框={{{586,664,0xffffff},{585,644,0xebebeb},{564,665,0xe6e6e6},{607,665,0xe6e6e6},}, 85, 554, 634, 622, 969}
	page.基本资料界面_完成={{{306,1042,0xffffff},{309,1022,0xff645a},{86,1041,0xff7948},{530,1043,0xff4e6b},}, 85, 17, 968, 621, 1125}
page.昵称={{{46,77,0xfd6e27},{306,77,0x525252},{308,72,0xffffff},},85}
	page.昵称完成={{{569,85,0xfd884d},{551,73,0xfd6e27},{545,67,0xffffff},}, 85, 526, 61, 614, 109}
page.我知道了={{{383,840,0xff5962},{369,317,0xffa251},{356,775,0x008eff},},85}
page.本地相册={{{367,860,0xfd6e27},{396,767,0xfd6e27},{569,154,0xffffff},},85}			--3x
page.照片={{{328,78,0x000000},{331,81,0xf9f9f9},{552,80,0x007aff},},85}
page.照片ios10={{{214,210,0x000000},{105,543,0x8e8e93},{309,70,0x000000},{563,77,0x208bff},}, 85,  11, 12, 630, 571}
page.照片_详情={{{21,83,0x007aff},{309,79,0xf9f9f9},{313,79,0x3a3a3a},{552,86,0x007aff},},85}
page.照片_详情ios10={{{23,83,0x007aff},{60,184,0x000000},{313,86,0x3a3a3a},{567,82,0x1e8aff},}, 85, 5, 7, 630, 460}
page.照片_注册成功={{{569,1097,0x43fe85},{62,1086,0xe83c2d},},85}
page.照片_地址未显示={{{596,404,0xc7c7cc},{568,407,0xd9d9d9},{523,404,0xffffff},{530,404,0xd9d9d9},}, 85, 450, 341, 625, 465}
page.照片_地址_确定={{{602,661,0xfd6e27},{581,667,0xfd6e27},}, 85, 535, 626, 628, 697}

function fix()
	local TimeLine = os.time()
	local OutTime = 60*3
	sex = rd(1,100)
	sex_key = 60
	local manfix_key = true
	--设置这个sex_key的值越大 女的就越少
	if sex > sex_key then
		sexk = "女"
		manfix_key = false
	else
		sexk = "男"
	end
	
	log("sex-> ".. sex)

	while os.time()-TimeLine < OutTime do
		if active(bid.app,5)then
			if d(page.基本资料界面,"page.基本资料界面") then
				if d(page.基本资料界面_请输入,"page.基本资料界面_请输入",true)then
				elseif sex > sex_key and d(page.基本资料界面_性别女,"page.基本资料界面_性别女",true)then
					click(597, 663)
					for i= 1, rd(3,5) do
						moveTo(312,  634,312, rd(980,1072),10,20)
					end
					d(page.基本资料界面_性别女_选框,"page.基本资料界面_性别女_选框",true)
					click(567, 538)
				elseif manfix_key then
					click(597, 663)
					for i= 1, rd(2,4) do
						moveTo(312,  634,312, rd(980,1072),10,20)
					end
					d(page.基本资料界面_性别女_选框,"page.基本资料界面_性别女_选框",true)
					click(567, 538)
					manfix_key = false
				elseif d(page.我知道了,"page.我知道了",true,1)then
				else
					if d(page.基本资料界面_完成,"page.基本资料界面_完成",true)then
						up("婚恋网",sexk)
						delay(10)
					elseif d(page.照片_地址未显示,"page.照片_地址未显示",true)then
						delay(2)
						d(page.照片_地址_确定,"page.照片_地址_确定",true)
					else
						moveTo(316, 733,316, 433)
						delay(2)
					end
				end
			elseif sexk == '男' and d(page.本地相册,"page.本地相册",true,3)then
				dialog("男不上传头像",1)
				return true
			elseif d(page.本地相册,"page.本地相册",false,1)then
				delay(1)
				clear.all_photos()
				delay(1)
				local c, h, r = http.get(img_url(), 10)
				if (c == 200) then
					local img = image.load_data(r)
					img:save_to_album()
					delay(1)
					d(page.本地相册,"page.本地相册",true,1)
				else
					sys.alert("下载失败",3)
				end
				
			elseif d(page.照片_注册成功,"page.照片_注册成功",true,1)then
				up("婚恋网",sexk)
				delay(10)
				return true
			elseif d(page.照片_详情,"page.照片_详情") or d(page.照片_详情ios10,"page.照片_详情ios10")then
				click(87,280)
			elseif d(page.照片,"page.照片") or d(page.照片ios10,"page.照片ios10")then
				click(87,225)
			elseif d(page.昵称,"page.昵称")then
				input(random_name()..myRand(4,rd(4,6)))
				if d(page.昵称完成,"page.昵称完成",true)then
					delay(1)
				end
			
			else
				
				if d(page.tip_bad,"page.tip_bad",true)then
					return false
				elseif d(page.allow,"page.allow",true)then
				elseif d(page.allow_local,"page.allow_local",true)then
				end
			end
		end
		delay(0.5)
	end
end






page.allow={{{477,665,0x007aff},{187,668,0x007aff},}, 85, 71, 440, 580, 702}
page.allow_local={{{360,594,0x007aff},{347,684,0x007aff},{359,777,0x007aff},}, 85, 324, 565, 373, 797}

page.tip_bad={{{154,635,0x007aff},{164,662,0x007aff},{502,646,0x007aff},}, 85, 111, 613, 533, 681}

page.regUI={{{446,264,0xeae3dc},{223,277,0xffffff},{215,271,0xfdfdfe},}, 85, 113, 103, 513, 348}
	page.regUI_login={{{128,393,0xc7c7cd},{124,380,0xc7c7cd},{113,403,0xc7c7cd},}, 85, 63, 357, 269, 433}
	page.regUI_send={{{504,500,0xff5b61},{501,500,0xfffafa},{496,515,0xff5e5f},}, 85, 400, 456, 577, 545}
	page.regUI_pwd={{{355,607,0xc7c7cd},{355,595,0xc7c7cd},{360,619,0xc7c7cd},}, 85, 328, 573, 383, 641}
	page.regUI_reg={{{321,785,0xff635c},{321,775,0xffffff},{321,759,0xff625b},}, 85, 244, 711, 399, 837}
page.success={{{551,266,0xff8432},{284,949,0xff7e44},{73,1070,0xff6659},},85}


function reg()
	local TimeLine = os.time()
	local OutTime = 60*3

	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
--	local 密码 = true
	local 提交过了 = false

	local 取短信次数 = 0
	password = myRand(4,rd(8,12))

	while os.time()-TimeLine < OutTime do
		if active(bid.app,10)then
			if d(page.success,"page.success") then
				return true
			elseif d(page.regUI,"page.regUI") then
				if 取号 then
					delay(3)
					if d(page.regUI_login,"page.regUI_login",true)then
						delay(1)
						if GET_Phone()then
							log(phone,true)
							delay(2.8)
							if type(tonumber(phone)) == "number" then
								phoneKey(phone)
								click(604, 610)
								取号 = false
								验证码 = true
							else
								click(604, 610)
							end
						end
					end
				elseif 验证码 then
					if d(page.regUI_send,"page.regUI_send",true)then
						验证码 = false
						短信 = true
					end
				elseif 短信 then
					if d(page.regUI_pwd,"regUI_pwd",true)then
						input(password)
						click(604, 610)				--点击空白
					elseif GET_message(phone)then
						click(160, 499)
						input(sms)
						click(604, 610)				--点击空白
						短信 = false
						提交 = true
					else
						delay(2.5)
					end
				elseif 提交 then
					if d(page.regUI_reg,"page.regUI_reg",true)then
						up("百合网","提交注册")
						delay(3)
					end
				end
			else
				
				if d(page.tip_bad,"page.tip_bad",true)then
					log('注册过的')
					return false
				elseif d(page.allow,"page.allow",true)then
				elseif d(page.allow_local,"page.allow_local",true)then
				end
			end
		end
		delay(0.5)
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
		local c, h, b = http.get("http://ip.cn", 30)
--      local c, h, b = http.get("https://www.ipip.net/",30)
        if (c==200) then
            sys.toast("", -1)
            done = true
--          return b:match('%d+%.%d+%.%d+%.%d+'),b:match('所在地理位置：<code>.*</code>')
            return b:match('%d+%.%d+%.%d+%.%d+'),b:match('所在地理位置：<code>.*</code>')
        end
    end
end

--[[

while true do
	if false or vpn() then
		ip,locals = get_local()
		
		if ip ~= "192.168.1.1" and ip~= nil then
			if false or checkip()then
				if false or XXTfakerNewPhone(bid.app)then
					idfa = XXTfakerGetinfo(bid.app)['IDFA']
					delay(1)
					if reg()then
						if fix()then
							makeinfo()
						end
					end
				end
	
			end
		end
	end
	app.quit(bid.app)
	vpnx()
	delay(2)
end



--]]
while true do
	bhdata = (getId())
	if bhdata ~= nil then
		bhdata = json.decode(bhdata)
		if bhdata.data == "获取失败" then
			dialog("全部完成",60)
			delay(2)
		else
			if vpn() then
				if XXTfakerNewPhone(bid.app)then
					if loginbh()then
						backfix(bhdata.data.id)
					end
				end
			end
			app.quit(bid.app)
			vpnx()
			delay(2)
		end
	end
end

--clear.all_photos()














































































