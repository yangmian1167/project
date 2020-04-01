
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
	idfalist.password = var.password
	idfalist.phone = var.phone
	idfalist.other = other
	return post(url,idfalist)
end

--来信平台
function _vCode_lx() --来信

	local User = 'api-32182-rLPZxzn'
	local Pass = 'yangmian121'
	local PID = '8859'
    local token,number = "",""
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
				local blackPhone = {"134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
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
var.appbid = "com.wondertek.hecmccmobile";



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

function main()
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(var.appbid) then
			idfa = XXTfakerGetinfo(var.appbid)['IDFA']
			reg()
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










