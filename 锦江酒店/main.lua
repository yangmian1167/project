
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
--[[
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

--]]
function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account =  "xx"
	idfalist.password = var.password or ''
	idfalist.phone = var.phone
	idfalist.other = other
	return post(url,idfalist)
end

--来信平台
function _vCode_lx() --来信

	local User = 'api-32182-rLPZxzn'
	local Pass = 'yangmian121'
	local PID = '990'
    local token,number = "a5c85b2e94093b9885a885a8c89451e36710242c",""
    return {
	    login=(function() 
            local RetStr
			for i=1,5,1 do
				sys.toast("获取token\n"..i.."次共5次")
                sys.msleep(1500)
				local lx_url = 'http://api.banma1024.net/api/do.php?action=loginIn&name='..User..'&password='..Pass
				log(lx_url)
                RetStr = get(lx_url)
				if RetStr then
					RetStr = string.split(RetStr,"|")
					if RetStr[1] == 1 or RetStr[1] == '1' then
						token = RetStr[2]
						log('token='..token,true)
						break
					end
				else
					log(RetStr)
				end
			end
			return RetStr;
        end), 
		getPhone=(function()
            local RetStr=""
			local url___ = "http://api.banma1024.net/api/do.php?action=getPhone&sid="..PID.."&token="..token.."&vno=0"
			log(url___)
			RetStr = get(url___)
			if RetStr ~= "" and  RetStr ~= nil then
				log(RetStr)
				RetStr = string.split(RetStr,"|")
			end
			delay(3)
			if RetStr[1] == 1 or RetStr[1]== '1' then
				number = RetStr[2]
				log(number)
				local phone_title = (string.sub(number,1,3))
--				local blackPhone = {'144','141','142','143','144','145','146','147','199','161','162','165','167','170','171'}
--				local blackPhone = {"130","131","132","145","155","156","166","171","175","176","185","186","134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
--				local blackPhone = {"134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
				local blackPhone = {}
				for k,v in ipairs(blackPhone) do
					if phone_title == v then
						local lx_url =	'http://api.banma1024.net/api/do.php?action=addBlacklist&sid='..PID..'&phone='..number..'&token='..token
						get(lx_url);
						log("拉黑->"..number)
						delay(3)
						return false
					end
				end
				return number
			end
        end),
	    getMessage=(function()
			local Msg
            for i=1,25,1 do
				sys.msleep(3000)
				RetStr = get("http://api.banma1024.net/api/do.php?action=getMessage&sid="..PID.."&token="..token.."&phone="..number)
				log(RetStr);
				if RetStr then
					local arr = string.split(RetStr,"|") 
					if arr[1] == '1' then 
						Msg = arr[2]
						local i,j = string.find(Msg,"%d+")
						Msg = string.sub(Msg,i,j)
					end
					if type(tonumber(Msg))== "number" then log(Msg); return Msg end
				end
				toast(tostring(RetStr).."\n"..i.."次共25次")
            end
            return false
        end),
        addBlack=(function()
			local lx_url =	'http://api.banma1024.net/api/do.php?action=addBlacklist&sid='..PID..'&phone='..number..'&token='..token
			log("拉黑"..number..'\n'..lx_url);
            return get(lx_url);
        end),
    }
end
dxcode = _vCode_lx()
--dxcode.login()
--致敬平台
function _vCode_zj() --致敬

	local User = 'yangmian'
	local Pass = 'yangmian121'
	local PID = '52650'
    local token,number = "",""
    return {
	    login=(function() 
            local RetStr
			for i=1,5,1 do
				sys.toast("获取token\n"..i.."次共5次")
                sys.msleep(1500)
				local lx_url = 'http://api.myzjxl.com:8080/Login/?username='..User..'&password='..Pass
				log(lx_url)
                RetStr = get(lx_url)
				log(RetStr)
				if RetStr then
					RetStr = string.split(RetStr,"|")
					log(RetStr[1])
					if RetStr[1] == 1 or RetStr[1] == '1' then
						token = RetStr[2]
						log('token='..token)
						return true
					end
				else
					log(RetStr)
				end
			end
			return RetStr;
        end), 
		getPhone=(function()
            local RetStr=""
			local url___ = "http://api.myzjxl.com:8080/GetPhone/?id="..PID.."&token="..token.."&isp=3"
			log(url___)
			RetStr = get(url___)
			if RetStr ~= "" and  RetStr ~= nil then
				log(RetStr)
				RetStr = string.split(RetStr,"|")
			end
			if RetStr[1] == 1 or RetStr[1]== '1' then
				number = RetStr[2]
				log(number)
				local phone_title = (string.sub(number,1,3))
				local blackPhone = {'144','141','142','143','144','145','146','147','199','161','162','165','167','170','171'}
				for k,v in ipairs(blackPhone) do
					if phone_title == v then
						local lx_url =	'http://api.myzjxl.com:8080/Addblack/?id='..PID..'&phone='..number..'&token='..token
						get(lx_url);
						log("拉黑->"..number)
						return false
					end
				end
				return number
			end
        end),
	    getMessage=(function()
			local Msg
            for i=1,25,1 do
				sys.msleep(3000)
				RetStr = get("http://api.myzjxl.com:8080/GetMsg/?id="..PID.."&token="..token.."&phone="..number)
				log(RetStr);
				if RetStr then
					local arr = string.split(RetStr,"|") 
					if arr[1] == '1' then 
						Msg = arr[2]
						local i,j = string.find(Msg,"%d+")
						Msg = string.sub(Msg,i,j)
					end
					if type(tonumber(Msg))== "number" then log(Msg); return Msg end
				end
				sys.toast(tostring(RetStr).."\n"..i.."次共25次")
            end
            return false
        end),
        addBlack=(function()
			local lx_url =	'http://api.myzjxl.com:8080/Addblack/?id='..PID..'&phone='..number..'&token='..token
			log("拉黑"..number..'\n'..lx_url);
            return get(lx_url);
        end),
    }
end



var = {}
--var.appbid = "com.wondertek.hecmccmobile";
--var.appbid = "com.plateno.btota";
var.appbid = "cn.miao";


function inputword(v)
	key.send_text(v,200)
end







tips = {}
tips_我知道了 = {{{208, 999, 0x987de6},{457, 989, 0x987de6},{120, 455, 0xa0c3fd},{125, 288, 0x918ef0},}, 85, 31, 100, 575, 1065}
登录界面 = {{{ 86, 154, 0xc9c9c9},{ 86, 155, 0x323232},{ 89, 186, 0xbfbfbf},{273, 154, 0xc4c4c4},{280, 167, 0x9d9d9d},{263, 188, 0x909090},}, 85, 73, 129, 293, 200}
登录界面_请输入手机号 = {{{ 90, 335, 0xe2e2e5},{ 88, 311, 0xf1f1f2},{153, 310, 0xefeff1},{255, 311, 0xececee},{252, 336, 0xe5e5e8},}, 85, 79, 301, 268, 343}
登录界面_获取验证码 = {{{498, 451, 0x535353},{448, 444, 0xcfcfcf},{450, 461, 0xc0c0c0},{556, 443, 0xdedede},{556, 462, 0xc2c2c2},}, 85, 442, 437, 566, 469}
登录界面_键盘完成 = {{{572, 655, 0x007aff},{574, 666, 0x007aff},{609, 656, 0x007aff},}, 85, 548, 635, 628, 681}
登录界面_同意条款 = {{{113, 764, 0xffffff},{106, 766, 0xfefefe},{121, 759, 0x9d9d9d},{106, 773, 0x9e9e9e},}, 85, 100, 748, 129, 781}
登录界面_登录按钮 = {{{298, 670, 0xffffff},{157, 662, 0x987de6},{534, 708, 0x987de6},{346, 682, 0xffffff},{494, 669, 0x987de6},}, 85, 71, 633, 552, 728}
开启健康之旅 = {{{415, 720, 0xfffecf},{474, 740, 0xf2dc92},{546, 733, 0xeed280},{588, 735, 0xe8c366},}, 85, 391, 710, 599, 753}
tips户外 ={{{460, 554, 0xeec346},{254, 565, 0x6fa47b},{290, 515, 0xf1eddc},{335, 768, 0xf1a9ae},{480, 689, 0x705457},}, 85, 118, 407, 510, 812}
tips春风 ={{{191, 425, 0xecf0cf},{339, 461, 0xf5f3cc},{290, 748, 0xf9c94d},{467, 664, 0x51dea8},}, 85, 101, 330, 514, 797}
tips超值 ={{{194, 697, 0x5119cd},{231, 749, 0xff00a5},{184, 787, 0x3c03c9},{378, 734, 0xff29a7},{469, 701, 0x2511c4},}, 85, 141, 677, 511, 804}
tips更新提示下次再说={{{130, 774, 0x007aff},{212, 791, 0x007aff},{206, 790, 0xf9f9f9},{419, 782, 0x007aff},{263, 361, 0x000000},{262, 358, 0xf9f9f9},}, 85, 81, 312, 566, 821}
function reg1()
	local TIMEline = os.time()
	local OUTtime = 3*60
	local 手机号 = true
	local 短信 = false
	local 提交 = false
--	var.password  = myRand(4,8,2)
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			if d(tips_我知道了,'tips_我知道了',true) then
			elseif d(tips更新提示下次再说,'tips更新提示下次再说',true) then
			elseif d(登录界面,'登录界面') then
				if d(登录界面_请输入手机号,'登录界面_请输入手机号') then
					if 手机号 then
						var.phone = dxcode.getPhone()
						if var.phone then
							if #var.phone == 11 then
								click(101, 323)
								inputword(var.phone)
								手机号 = false
								短信 = true
							end
						end
					end
				elseif 短信 then
					if d(登录界面_获取验证码,'登录界面_获取验证码',true) then
					else	
						var.sms = dxcode.getMessage()
						if #var.sms == 4 then
							click(98, 465)
							inputword(var.sms)
	--						up('咪咕视频','点击注册')
							短信 = false
							提交 = true
						end	
					end	
				elseif 提交 then
					if d(登录界面_键盘完成,'登录界面_键盘完成',true) then
					elseif d(登录界面_同意条款,'登录界面_同意条款',true) then
					elseif d(登录界面_登录按钮,'登录界面_登录按钮',true) then

					end
				end
			elseif d(开启健康之旅,'开启健康之旅') or d(tips户外,'tips户外') or d(tips春风,'tips春风') or d(tips超值,'tips超值') then
				up_hb('妙健康',other,'提交注册')
				up_wenfree('妙健康',other,'提交注册')
				delay(5)
				return true
			end
		end	
		delay(1)
	end
end


个人中心界面 = {{{572, 1077, 0x987de6},{572, 1067, 0xffffff},{562, 1067, 0x4d4d4d},{298, 1069, 0x987de6},{337, 1099, 0x987de6},}, 85, 272, 1047, 618, 1133}
返回箭头 = {{{31, 70, 0x333333},{43, 57, 0xcbcbcb},{43, 82, 0x7a7a7a},{33, 70, 0xf7f7f7},{34, 75, 0xcfcfcf},}, 85, 24, 49, 52, 89}
主界面点我的 = {{{576, 1092, 0x9e9e9e},{576, 1086, 0x9e9e9e},{561, 1120, 0x9a9a9a},{580, 1075, 0xffffff},{582, 1101, 0xffffff},}, 85, 547, 1051, 606, 1131}
我是帅哥 = {{{109, 653, 0x387957},{214, 648, 0x3c7a59},{408, 643, 0xf4bf5f},{510, 653, 0xf8c061},{473, 660, 0x844b46},}, 85, 64, 607, 532, 692}
选好了 = {{{350, 1008, 0xffffff},{184,  994, 0xccb8fe},{505, 1026, 0xab9cff},{498,  993, 0xab9cff},}, 85, 111, 974, 535, 1044}
立即领取 = {{{326, 782, 0xff3018},{225, 762, 0xffe523},{422, 793, 0xffc010},{409, 739, 0xff2a21},}, 85, 170, 732, 471, 830}
优选计划 = {{{113, 156, 0x314a7a},{ 89, 156, 0x2e3868},{ 73, 147, 0x494b8a},{127, 155, 0x15083a},{ 82, 125, 0x78eef8},}, 85, 54, 103, 154, 234}
加入计划 = {{{339, 1092, 0xffffff},{298, 1101, 0xfdfcff},{296, 1101, 0xc0b1ff},{  9, 1064, 0xd4c3ff},{625, 1065, 0xd4c1fe},{626, 1116, 0xbbacff},}, 85, 248, 1079, 395, 1113}
加入计划1 = {{{339, 1095, 0xffffff},{337, 1096, 0xc4b2ff},{ 11, 1063, 0xd5c4ff},{632, 1064, 0xd4c1ff},{621, 1121, 0xb9aaff},}, 85, 2, 1064, 636, 1132}
我知道了 = {{{311, 668, 0xffffff},{313, 668, 0xa59ac7},{270, 668, 0x978bbe},{325, 673, 0x9487bc},}, 85, 252, 653, 379, 689}
设置密码界面 = {{{305, 488, 0xffffff},{327, 483, 0xffffff},{122, 468, 0xcccccc},{143, 511, 0xcccccc},{513, 473, 0xcccccc},{520, 518, 0xcccccc},}, 85, 85, 444, 559, 537}
tips户外 ={{{460, 554, 0xeec346},{254, 565, 0x6fa47b},{290, 515, 0xf1eddc},{335, 768, 0xf1a9ae},{480, 689, 0x705457},}, 85, 118, 407, 510, 812}
tips春风 ={{{191, 425, 0xecf0cf},{339, 461, 0xf5f3cc},{290, 748, 0xf9c94d},{467, 664, 0x51dea8},}, 85, 101, 330, 514, 797}
tips超值 ={{{194, 697, 0x5119cd},{231, 749, 0xff00a5},{184, 787, 0x3c03c9},{378, 734, 0xff29a7},{469, 701, 0x2511c4},}, 85, 141, 677, 511, 804}
立即加入 = {{{337, 608, 0xffffff},{274, 599, 0xffffff},{137, 579, 0xd0bdff},{512, 632, 0xa693ff},{235, 366, 0x1f1047},{214, 366, 0x81d9fa},}, 85, 45, 206, 563, 666}
tips选好了 ={{{434, 730, 0xffffff},{377, 709, 0x987de6},{519, 734, 0x987de6},{187, 730, 0x987de6},}, 85, 59, 647, 572, 814}
制定健康目标 ={{{354, 602, 0xffffff},{274, 600, 0xffffff},{157, 579, 0xcdbaff},{489, 628, 0xa592ff},{496, 577, 0xcebbff},}, 85, 104, 540, 516, 661}
选择你希望改善的方向 ={{{153, 120, 0x848484},{152, 149, 0x7f7f7f},{437, 119, 0x868686},{473, 119, 0xdcdcdc},{486, 124, 0x828282},{485, 149, 0x747474},}, 85, 149, 113, 492, 154}
完善您的基本信息 ={{{198, 119, 0xc6c6c6},{186, 130, 0xc9c9c9},{407, 119, 0xbebebe},{453, 145, 0x7f7f7f},{445, 149, 0x9b9b9b},}, 85, 183, 113, 458, 154}
完善您的基本信息_下一步 ={{{509, 1055, 0x987de6},{180, 1016, 0x987de6},{185, 1048, 0x987de6},{493, 1020, 0x987de6},}, 85, 74, 948, 562, 1081}
完善您的基本信息_选A  = {{{128, 413, 0x4b4b4b},{106, 413, 0x595959},{114, 409, 0xf8f8f8},{114, 407, 0x444444},{118, 390, 0x343434},}, 85, 93, 358, 144, 1107}
您的健康报告  = {{{226, 119, 0xa8a8a8},{220, 147, 0x5d5d5d},{396, 120, 0x5d5d5d},{420, 132, 0xa1a1a1},{415, 150, 0xa2a2a2},}, 85, 214, 112, 424, 157}
目标坚持日饮8杯水  = {{{163, 121, 0x9c9c9c},{163, 149, 0x9c9c9c},{271, 119, 0x838383},{465, 119, 0x838383},{479, 145, 0x929292},{477, 125, 0xe5e5e5},}, 85, 160, 115, 488, 154}
为您定制课程  = {{{223, 120, 0x9b9b9b},{222, 121, 0xa9a9a9},{219, 148, 0xededed},{417, 120, 0x7a7a7a},{420, 148, 0x999999},{420, 147, 0x999999},}, 85, 217, 113, 426, 154}
tips更多功能知道了 ={{{533,  831, 0x9480e2},{571,  852, 0xffffff},{595,  875, 0x9480e2},{567, 1030, 0xd1bdff},{548, 1066, 0x2d3963},}, 85, 499, 823, 609, 1083}
经大数据计算推荐健 ={{{103,  61, 0x9480e2},{102, 107, 0x9480e2},{128,  82, 0xffffff},{455,  83, 0xffffff},{486,  76, 0xffffff},{529,  60, 0x9480e2},}, 85, 69, 51, 571, 119}
经大数据计算推荐健_相机任务 ={{{522, 855, 0xffffff},{516, 855, 0xc5b7ff},{503, 842, 0xc4b2ff},{526, 869, 0xb0a0ff},{504, 878, 0xc3b1ff},}, 85, 482, 827, 544, 885}
完成任务 ={{{306, 942, 0xffffff},{272, 952, 0xffffff},{140, 935, 0x9480e2},{537, 971, 0x9480e2},{544, 936, 0x9480e2},{372, 941, 0xffffff},}, 85, 61, 917, 564, 987}
打卡 ={{{312, 667, 0xffffff},{336, 660, 0xffffff},{136, 619, 0xb490ff},{573, 747, 0xb490ff},{572, 767, 0xffffff},{573, 813, 0x8eb8ff},}, 85, 14, 471, 604, 1007}
返回箭头2 ={{{38, 84, 0xcacaca},{35, 84, 0x333333},{50, 70, 0x5d5d5d},{50, 99, 0x606060},{50, 97, 0x9e9e9e},}, 85, 29, 59, 58, 104}
function 填资料()
	local TIMEline = os.time()
	local OUTtime = 4*60
	var.password  = myRand(4,8,2)
	
	完成任务key = true
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			if d(我是帅哥,'我是帅哥',true) then
			elseif d(选好了,'选好了',true) then
				click(158, 599)
			elseif d(立即领取,'立即领取',true) then
			elseif d(优选计划,'优选计划') then
				click(270, 435)
			elseif d(加入计划,'加入计划',true) or d(加入计划1,'加入计划1',true) then
			elseif d(我知道了,'我知道了',true) then
			elseif d(立即加入,'立即加入',true) or d(制定健康目标,'制定健康目标',true) then
			
			
			elseif d(开启健康之旅,'开启健康之旅') then
				click(301, 448)
				delay(5)
			elseif d(个人中心界面,'个人中心界面') then
				click(590, 78)
				delay(2)
				click(249, 199)
			elseif d(设置密码界面,'设置密码界面') then
				click(118, 324)
				inputword(var.password)
				delay(2)
				click(253, 497)
				up_hb('妙健康',other,'完整注册')
				up_wenfree('妙健康',other,'完整注册')
				delay(3)
				return true
			elseif d(tips户外,'tips户外') or d(tips春风,'tips春风') or d(tips超值,'tips超值') then
				click(321, 929)
			elseif d(tips更多功能知道了,'tips更多功能知道了',true) then
			elseif d(tips选好了,'tips选好了',true) then
			
			elseif d(返回箭头,'返回箭头') then
				if d(选择你希望改善的方向,'选择你希望改善的方向') then
					click(150, 393)
				elseif d(完善您的基本信息,'完善您的基本信息') then
					
					if d(完善您的基本信息_选A,'完善您的基本信息_选A')  then
						click(215, 403)
						click(282, 737)
						click(308, 1091)
					else
						moveTo(591, 811,585, 230)
					end
				elseif d(您的健康报告,'您的健康报告')  then
					moveTo(591, 811,585, 230)
				elseif d(目标坚持日饮8杯水,'目标坚持日饮8杯水')  then
					moveTo(591, 811,585, 230)
					moveTo(591, 811,585, 230)
				elseif d(为您定制课程,'为您定制课程')  then
					click(304, 369)
				else
					if d(返回箭头,'返回箭头',true) then
						
					end	
				end		
			elseif 完成任务key and d(经大数据计算推荐健,'经大数据计算推荐健')  then
				if d(经大数据计算推荐健_相机任务,'经大数据计算推荐健_相机任务') then
					moveTo(507, 677,118, 669)
				else	
					click(198, 480)
					delay(3)
					moveTo(385, 983,363, 144)
					moveTo(385, 983,363, 144)
					moveTo(385, 983,363, 144)
				end	
			elseif d(打卡,'打卡',true)  then
			elseif d(完成任务,'完成任务',true)  then
				完成任务key = false
			elseif d(完善您的基本信息_下一步,'完善您的基本信息_下一步',true)  then
			elseif d(返回箭头2,'返回箭头2',true) then
			elseif d(主界面点我的,'主界面点我的',true) then
			else
				click(38, 43)
			end	
		end
		delay(1)
	end
end


--[[

function main()
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(var.appbid) then
			idfa = XXTfakerGetinfo(var.appbid)['IDFA']
			reg1()
			填资料()
		end
	end
end



while (true) do
	local ret,errMessage = pcall(main)
	if ret then
	else
		log(errMessage)
--		sys.alert(errMessage, 3)
		delay(5)
	end
end

--]]

--XXTfakerNewPhone(var.appbid)
XXTfakerNewPhone('com.longloan.xinchengfenqi')


--填资料()
--url = 'https://www.vandream.com/'
--for i = 1 , 20 do
--	vpnx()
--	delay(3)
--	if vpn() then
--		XXTfakerNewPhone('com.apple.mobilesafari')
--		delay(3)
--		app.open_url(url)
--		delay(15)
--	end
--end



