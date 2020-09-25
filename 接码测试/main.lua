
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

		User = 'api-18190-rKpL6bd'
		Pass = '135246'
	local PID = '14112'
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
var.appbid = "cn.miao";



function inputword(v)
	key.send_text(v,200)
end





tips_开始体验={{{324, 934, 0xfef5f8},{225, 915, 0xe11e4e},{424, 944, 0xe63491},}, 85, 169, 877, 467, 980}
tips_我知道了={{{357, 835, 0xffffff},{192, 828, 0x33b3fe},{461, 859, 0x2aadff},}, 85, 137, 802, 496, 886}
tips_更换号码={{{172, 648, 0x007aff},{231, 645, 0x007aff},{433, 637, 0x007aff},{514, 640, 0x007aff},}, 85, 97, 614, 531, 668}
点击登录注册={{{217, 189, 0x000000},{103, 183, 0xcacaca},{ 51, 215, 0xa4a4a4},{ 90, 215, 0x919191},}, 85, 17, 141, 319, 246}
点击注册={{{572,  88, 0x31363e},{196, 700, 0x3778ff},{484, 690, 0x3778ff},{313, 267, 0x0092dc},{289, 250, 0xc90317},}, 85, 0, 0, 0, 0}
同意并继续={{{438, 857, 0x3778ff},{229, 810, 0x3778ff},{223, 878, 0xffffff},{443, 787, 0xffffff},}, 85, 131, 770, 510, 891}

--注册界面={{{292, 70, 0xd7d8d9},{291, 96, 0x909397},{345, 71, 0xa5a7aa},{343, 97, 0x95989c},}, 85, 131, 770, 510, 891}
注册界面={{{291, 71, 0xd4d6d7},{291, 96, 0x909397},{345, 71, 0xa5a7aa},{344, 97, 0xd8d9da},}, 85, 282, 56, 354, 110}
注册界面_手机号界面={{{220, 216, 0xa9abaf},{216, 241, 0xd4d5d6},{419, 217, 0xb4b6b9},{417, 246, 0x5b5f65},}, 85, 200, 198, 435, 255 }
注册界面_手机号界面_下一步={{{319, 567, 0xffffff},{288, 563, 0xffffff},{190, 544, 0x3778ff},{537, 592, 0x3778ff},}, 95, 41, 507, 609, 633}
注册界面_设置密码界面={{{220, 213, 0xd2d3d5},{221, 243, 0xccced0},{418, 243, 0xb7b9bb},{419, 227, 0xb6b8bb},{419, 214, 0xb4b6b9},}, 85, 198, 195, 435, 258}
注册界面_设置密码界面_注册按钮={{{333, 587, 0xffffff},{309, 599, 0xffffff},{ 88, 561, 0x3778ff},{528, 619, 0x3778ff},{527, 537, 0xfdfdfd},}, 85, 19, 531, 615, 634}

注册成功界面={{{ 94, 200, 0x2d3f55},{ 52, 200, 0x325381},{ 76, 178, 0xffffff},{ 47, 167, 0x62affa},{102, 167, 0x62affa},}, 85, 27, 133, 126, 241}
function reg()
	local TIMEline = os.time()
	local OUTtime = 4*60
	local 手机号 = true
	local 短信 = false
	local 提交 = false
	var.password  = myRand(4,8,2)
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			if d(tips_开始体验,"tips_开始体验",true) then
			elseif d(tips_我知道了,"tips_我知道了",true) then
			elseif d(tips_更换号码,"tips_更换号码",true) then
				delay(3)
				click(579, 445)
				手机号 = true
			elseif d(点击登录注册,"点击登录注册",true) then
			elseif d(点击注册,"点击注册",true) then
			elseif d(同意并继续,"同意并继续",true) then
			elseif d(注册界面,"注册界面") then
				if d(注册界面_设置密码界面,"注册界面_设置密码界面") then
					if d(注册界面_设置密码界面_注册按钮,"注册界面_设置密码界面_注册按钮",true) then
					else
						click(82, 498)
						input(var.password)
					end	
				elseif d(注册界面_手机号界面,"注册界面_手机号界面") then
					if d(注册界面_手机号界面_下一步,"注册界面_手机号界面_下一步",true) then
					elseif 手机号 then
						var.phone = dxcode.getPhone()
						if var.phone then
							if #var.phone == 11 then
								click(88, 453)
								inputword(var.phone)
								手机号 = false
								短信 = true
							end
						end
					end
				elseif 短信 then	
						var.sms = dxcode.getMessage()
						if #var.sms == 6 then
							inputword(var.sms)
							up('咪咕视频','点击注册')
							短信 = false
							提交 = true
						end	
				end	
			elseif 提交 then
				if d(注册成功界面,'注册成功界面') then
					up('咪咕视频','注册成功')
					return true
				end						
					
			else
				click(578, 1123)
			end

		end
		delay(1)	
	end

end
dxcode = _vCode_lx()
dxcode.login()
tips = {}
tips_我知道了 = {{{208, 999, 0x987de6},{457, 989, 0x987de6},{120, 455, 0xa0c3fd},{125, 288, 0x918ef0},}, 85, 31, 100, 575, 1065}
登录界面 = {{{ 86, 154, 0xc9c9c9},{ 86, 155, 0x323232},{ 89, 186, 0xbfbfbf},{273, 154, 0xc4c4c4},{280, 167, 0x9d9d9d},{263, 188, 0x909090},}, 85, 73, 129, 293, 200}
登录界面_请输入手机号 = {{{ 90, 335, 0xe2e2e5},{ 88, 311, 0xf1f1f2},{153, 310, 0xefeff1},{255, 311, 0xececee},{252, 336, 0xe5e5e8},}, 85, 79, 301, 268, 343}
登录界面_获取验证码 = {{{498, 451, 0x535353},{448, 444, 0xcfcfcf},{450, 461, 0xc0c0c0},{556, 443, 0xdedede},{556, 462, 0xc2c2c2},}, 85, 442, 437, 566, 469}
登录界面_键盘完成 = {{{572, 655, 0x007aff},{574, 666, 0x007aff},{609, 656, 0x007aff},}, 85, 548, 635, 628, 681}
登录界面_同意条款 = {{{113, 764, 0xffffff},{106, 766, 0xfefefe},{121, 759, 0x9d9d9d},{106, 773, 0x9e9e9e},}, 85, 100, 748, 129, 781}
登录界面_登录按钮 = {{{298, 670, 0xffffff},{157, 662, 0x987de6},{534, 708, 0x987de6},{346, 682, 0xffffff},{494, 669, 0x987de6},}, 85, 71, 633, 552, 728}
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
						up('妙健康','提交注册')
						delay(5)
						return true
					end
				end
			end
		end	
		delay(1)
	end
end

--reg1()
个人中心界面 = {{{572, 1077, 0x987de6},{572, 1067, 0xffffff},{562, 1067, 0x4d4d4d},{298, 1069, 0x987de6},{337, 1099, 0x987de6},}, 85, 272, 1047, 618, 1133}
返回箭头 = {{{31, 70, 0x333333},{43, 57, 0xcbcbcb},{43, 82, 0x7a7a7a},{33, 70, 0xf7f7f7},{34, 75, 0xcfcfcf},}, 85, 24, 49, 52, 89}
主界面点我的 = {{{576, 1092, 0x9e9e9e},{576, 1086, 0x9e9e9e},{561, 1120, 0x9a9a9a},{580, 1075, 0xffffff},{582, 1101, 0xffffff},}, 85, 547, 1051, 606, 1131}
我是帅哥 = {{{109, 653, 0x387957},{214, 648, 0x3c7a59},{408, 643, 0xf4bf5f},{510, 653, 0xf8c061},{473, 660, 0x844b46},}, 85, 64, 607, 532, 692}
选好了 = {{{350, 1008, 0xffffff},{184,  994, 0xccb8fe},{505, 1026, 0xab9cff},{498,  993, 0xab9cff},}, 85, 111, 974, 535, 1044}
立即领取 = {{{326, 782, 0xff3018},{225, 762, 0xffe523},{422, 793, 0xffc010},{409, 739, 0xff2a21},}, 85, 170, 732, 471, 830}
优选计划 = {{{113, 156, 0x314a7a},{ 89, 156, 0x2e3868},{ 73, 147, 0x494b8a},{127, 155, 0x15083a},{ 82, 125, 0x78eef8},}, 85, 54, 103, 154, 234}
加入计划 = {{{339, 1092, 0xffffff},{298, 1101, 0xfdfcff},{296, 1101, 0xc0b1ff},{  9, 1064, 0xd4c3ff},{625, 1065, 0xd4c1fe},{626, 1116, 0xbbacff},}, 85, 248, 1079, 395, 1113}
我知道了 = {{{311, 668, 0xffffff},{313, 668, 0xa59ac7},{270, 668, 0x978bbe},{325, 673, 0x9487bc},}, 85, 252, 653, 379, 689}
设置密码界面 = {{{305, 488, 0xffffff},{327, 483, 0xffffff},{122, 468, 0xcccccc},{143, 511, 0xcccccc},{513, 473, 0xcccccc},{520, 518, 0xcccccc},}, 85, 85, 444, 559, 537}
function 填资料()
	local TIMEline = os.time()
	local OUTtime = 4*60
	var.password  = myRand(4,8,2)
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			
			if d(我是帅哥,'我是帅哥',true) then
			elseif d(选好了,'选好了',true) then
				click(158, 599)
			elseif d(立即领取,'立即领取',true) then
			elseif d(优选计划,'优选计划') then
				click(270, 435)
			elseif d(加入计划,'加入计划',true) then
			elseif d(我知道了,'我知道了',true) then
			elseif d(主界面点我的,'主界面点我的',true) then
			elseif d(个人中心界面,'个人中心界面') then
				click(590, 78)
				delay(2)
				click(249, 199)
			elseif d(设置密码界面,'设置密码界面') then
				click(118, 324)
				inputword(var.password)
				delay(2)
				click(253, 497)
				up('妙健康','完整注册')
				delay(3)
				return true
			elseif d(返回箭头,'返回箭头',true) then
			else
				
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

--log(app.front_bid())
--XXTfakerNewPhone('com.xingqi.live')


----------------------------------------------------------------------
----------------------------------------------------------------------
--XXTouch语言Demo
--1.查询账号余额，2.上传图片识别，3.识别报错
----------------------------------------------------------------------
----------------------------------------------------------------------

--功能函数
function fmt(p, ...)
	if select('#', ...) == 0 then
		return p
	else return string.format(p, ...) end
end

--功能函数
function tprintf(t, p, ...)
	t[#t+1] = fmt(p, ...)
end

--功能函数
--添加数据
function append_data(r, k, data, extra)
	tprintf(r, "content-disposition: form-data; name=\"%s\"", k)
	if extra.filename then
		tprintf(r, "; filename=\"%s\"", extra.filename)
	end
	if extra.content_type then
		tprintf(r, "\r\ncontent-type: %s", extra.content_type)
	end
	if extra.content_transfer_encoding then
		tprintf(
			r, "\r\ncontent-transfer-encoding: %s",
			extra.content_transfer_encoding
		)
	end
	tprintf(r, "\r\n\r\n")
	tprintf(r, data)
	tprintf(r, "\r\n")
end

--功能函数
--生成封包边界
function gen_boundary()
	local t = {"BOUNDARY-"}
	for i=2,17 do t[i] = string.char(math.random(65, 90)) end
	t[18] = "-BOUNDARY"
	return table.concat(t)
end

--功能函数
--数据封包
function encode(t, boundary)
	boundary = boundary or gen_boundary()
	local r = {}
	local _t
	for k,v in pairs(t) do
		tprintf(r, "--%s\r\n", boundary)
		_t = type(v)
		if _t == "string" then
			append_data(r, k, v, {})
		elseif _t == "table" then
			assert(v.data, "invalid input")
			local extra = {
				filename = v.filename or v.name,
				content_type = v.content_type,
				--content_transfer_encoding = v.content_transfer_encoding or "binary",
			}
			append_data(r, k, v.data, extra)
		else
			error(string.format("unexpected type %s", _t))
		end
	end
	tprintf(r, "--%s--\r\n", boundary)
	return table.concat(r), boundary
end

--功能函数
--读取图片文件
function lzReadFileByte(file)
	local f = io.open(file,"rb")
	local retbyte = f:read("*all")
	f:close()
	return retbyte
end

--功能函数
--查询余额
function lzPoint(user, pwd)
	local http = require("socket.http")
	local ltn12 = require("ltn12")
	local response_body = {}
	local post_data = string.format("user_name=%s&user_pw=%s", user, pwd);
	res, code = http.request{
		url = "http://v1-http-api.jsdama.com/api.php?mod=php&act=point",
		method = "POST",
		headers =
		{
		  ["Connection"] = "keep-alive",
			["Content-Type"] = "application/x-www-form-urlencoded",
			["Content-Length"] = #post_data,
		},
		source = ltn12.source.string(post_data),
		sink = ltn12.sink.table(response_body)
	}

	--解析返回结果
	local strBody = table.concat(response_body);
	local obj = json.decode(strBody);
	return obj['data'];
end

--功能函数
--图片识别
function lzRecoginze(user, pwd, imagefile, yzmtype)
	local http = require("socket.http")
	local ltn12 = require("ltn12")
	local pBuffer = lzReadFileByte(imagefile);
	local rq = {
		user_name = user,
		user_pw = pwd,
		yzm_minlen = "4",
		yzm_maxlen = "5",
		yzmtype_mark = yzmtype,
		zztool_token = "18d4300563a5f2dfba5a63fb265a2f21",
		upload = { filename = "yzm.jpg", content_type = "image/jpeg", data = pBuffer }
	};

	local response_body = {};

	local boundary = gen_boundary();
	local post_data, bb = encode(rq, boundary);

	res, code = http.request{
		url = "http://v1-http-api.jsdama.com/api.php?mod=php&act=upload",
		method = "POST",
		headers =
		{
		  ["Connection"] = "keep-alive",
			["Content-Type"] = fmt("multipart/form-data; boundary=%s", boundary),
			["Content-Length"] = #post_data,
		},
		source = ltn12.source.string(post_data),
		sink = ltn12.sink.table(response_body)
	}

	--解析返回结果
	local strBody = table.concat(response_body);
	local obj = json.decode(strBody);
	if obj ~= nil then
		local id = obj['data']['id'];
		local vcode = obj['data']['val'];
		if (id == nil or vcode == nil) then
			return false, id, vcode;
		else
			return true, id, vcode;
		end
	end
end

--功能函数
--打码报错
function lzReportError(user, pwd, errorid)
	local ltn12 = require("ltn12")
	local http = require("socket.http")
	local response_body = {}
	local post_data = string.format("user_name=%s&user_pw=%s&yzm_id=%s", user, pwd, errorid);
	res, code = http.request{
		url = "http://v1-http-api.jsdama.com/api.php?mod=php&act=error",
		method = "POST",
		headers =
		{
		  ["Connection"] = "keep-alive",
			["Content-Type"] = "application/x-www-form-urlencoded",
			["Content-Length"] = #post_data,
		},
		source = ltn12.source.string(post_data),
		sink = ltn12.sink.table(response_body)
	}

	--解析返回结果
	local strBody = table.concat(response_body);
	local obj = json.decode(strBody);
	local strResult = obj['result'];
	if (strResult ~= nil) then
		return "报错成功";
	else
		return "报错失败";
	end
end

--功能函数


--调用函数
yzm_username = "ouwen000";		--联众打码账号
yzm_password = "AaDd112211..";		--联众打码密码
imgfile = "/private/var/mobile/yzm.jpg";  	--验证码图片路径
yzmtype = "1001";				--验证码类型
yzmid = "";					--验证码ID(报错使用)

--[[]]
--查询余额
local lzYE = lzPoint(yzm_username, yzm_password);
lzYE = "账号余额:" .. lzYE;
--sys.alert(lzYE,1);

--上传图片识别
function orcYZM()
	local lzRe, yzmid, jiegou = lzRecoginze(yzm_username, yzm_password, imgfile, yzmtype);
	if (lzRe == true) then
		yzm_jg = jiegou
		jiegou = "识别结果:" .. jiegou;
		log(jiegou)
		return true
	else
		log("识别超时");
	end
end


--识别错误报错
--local lzRep = lzReportError(username, password, yzmid);
--print(lzRep);

						screen.image(283, 486, 539, 572):save_to_png_file("/private/var/mobile/yzm.jpg")
						imgfile = "/private/var/mobile/yzm.jpg"
						orcYZM()
						delay(3)
						click(164, 539)
						input(string.lower(yzm_jg))
						
						
						
						
						


