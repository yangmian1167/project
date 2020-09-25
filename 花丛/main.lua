
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
--[[]]
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
function up_wenfree(name,other)
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
function up_hb(name,other,account)
	local url = 'http://hb.wenfree.cn/api/Public/idfa/'
	local postdate = {}
	postdate.service = 'Idfa.Idfa'
	postdate.name = name
	postdate.idfa = idfa
	postdate.phone = var.phone
	postdate.password = var.password
	postdate.other = other
	postdate.account = account
	log(post(url,postdate))
	-- body
end



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


--有信平台
function _vCode_yx() --有信

	local	User = 'zhangvsqaz1go'
	local	Pass = '199412'
	local PID = '83406'
    local token,number = "a8e7f1b50254cbb57f210491c6f484ad7cbd604d",""	
    return {
	    login=(function() 
            local RetStr
			for i=1,5,1 do
				sys.toast("获取token\n"..i.."次共5次")
                sys.msleep(1500)
				local lx_url = 'http://api.cafebay.cn/api/do.php?action=loginIn&name='..User..'&password='..Pass
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
			local url___ = "http://api.cafebay.cn/api/do.php?action=getPhone&sid="..PID.."&token="..token
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
				local blackPhone = {'144','141','142','143','144','145','146','147','199','170','171'}
--				local blackPhone = {"130","131","132","145","155","156","166","171","175","176","185","186","134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
--				local blackPhone = {"134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
				local blackPhone = {}
				for k,v in ipairs(blackPhone) do
					if phone_title == v then
						local lx_url =	'http://api.cafebay.cn/api/do.php?action=addBlacklist&sid='..PID..'&phone='..number..'&token='..token
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
				RetStr = get("http://api.cafebay.cn/api/do.php?action=getMessage&sid="..PID.."&token="..token.."&phone="..number)
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
			local lx_url =	'http://api.cafebay.cn/api/do.php?action=addBlacklist&sid='..PID..'&phone='..number..'&token='..token
			log("拉黑"..number..'\n'..lx_url);
            return get(lx_url);
        end),
    }
end
--dxcode = _vCode_yx()	
--dxcode.login()
function _vCode_wzy() --万众云

	local	User = 'api-GbzRcm'
	local	Pass = '199555'
	local PID = '13336'
    local token,number = "074a7678aa5611ea92c100163e0007a2",""	
    return {
	    login=(function() 
            local RetStr
			for i=1,5,1 do
				sys.toast("获取token\n"..i.."次共5次")
                sys.msleep(1500)
				local lx_url = 'http://dev.wanzhongma.com/open/api/login?userName='..User..'&password='..Pass..'&json=2'
				log(lx_url)
                RetStr = get(lx_url)
				if RetStr then
					RetStr = string.split(RetStr,"|")
					if RetStr[1] == 0 or RetStr[1] == '0' then
						token = RetStr[3]
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
			local url___ = "http://dev.wanzhongma.com/open/api/getPhone?sid="..PID.."&token="..token..'&json=2'
			log(url___)
			RetStr = get(url___)
			if RetStr ~= "" and  RetStr ~= nil then
				log(RetStr)
				RetStr = string.split(RetStr,"|")
			end
			delay(3)
			if RetStr[1] == 0 or RetStr[1]== '0' then
				number = RetStr[3]
				log(number)
				local phone_title = (string.sub(number,1,3))
--				local blackPhone = {'144','141','142','143','144','145','146','147','199','161','162','165','167','170','171'}
--				local blackPhone = {"130","131","132","145","155","156","166","171","175","176","185","186","134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
--				local blackPhone = {"134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
				local blackPhone = {}
				for k,v in ipairs(blackPhone) do
					if phone_title == v then
						local lx_url =	'http://dev.wanzhongma.com/open/api/addBlacklist?sid='..PID..'&phone='..number..'&token='..'&json=2'
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
				RetStr = get("http://dev.wanzhongma.com/open/api/getMessage?sid="..PID.."&token="..token.."&phone="..number..'&json=2')
				log(RetStr);
				if RetStr then
					local arr = string.split(RetStr,"|") 
					if arr[1] == '0' then 
						Msg = arr[3]
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
			local lx_url =	'http://dev.wanzhongma.com/open/api/addBlacklist?sid='..PID..'&phone='..number..'&token='..'&json=2'
			log("拉黑"..number..'\n'..lx_url);
            return get(lx_url);
        end),
    }
end
--dxcode = _vCode_wzy()



--月亮平台
function _vCode_yl() --月亮平台

	local	User = '51135893913'
	local	Pass = '199412'
	local PID = '1281'
    local token,number = "ad83d006f68c32e237a955f8d90f9ed1_10216",""	
    return {
	    login=(function() 
            local RetStr
			for i=1,5,1 do
				sys.toast("获取token\n"..i.."次共5次")
                sys.msleep(1500)
				local lx_url = 'http://47.56.243.107:9000/yhapi.ashx?act=login&ApiName='..User..'&PassWord='..Pass
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
			local url___ = "http://47.56.243.107:9000/yhapi.ashx?act=getPhone&iid="..PID.."&token="..token.."&did="..User
			log(url___)
			RetStr = get(url___)
			if RetStr ~= "" and  RetStr ~= nil then
				log(RetStr)
				RetStr = string.split(RetStr,"|")
			end
			delay(3)
			if RetStr[1] == 1 or RetStr[1]== '1' then
				number = RetStr[5]
				number_pid = RetStr[2]
				log(number)
				log(number_pid)
				local phone_title = (string.sub(number,1,3))
				local blackPhone = {'144','141','142','143','144','145','146','147','199','161','162','165','167','170','171'}
--				local blackPhone = {"130","131","132","145","155","156","166","171","175","176","185","186","134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
--				local blackPhone = {"134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
				local blackPhone = {}
				for k,v in ipairs(blackPhone) do
					if phone_title == v then
						local lx_url =	'http://47.56.243.107:9000/yhapi.ashx?act=addBlack&reason='..User..'&pid='..number_pid..'&token='..token
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
				RetStr = get("http://47.56.243.107:9000/yhapi.ashx?act=getPhoneCode&pid="..number_pid.."&token="..token)
				log(RetStr);
				if RetStr then
					local arr = string.split(RetStr,"|") 
					if arr[1] == '1' then 
						Msg = arr[3]
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
			local lx_url =	'http://47.56.243.107:9000/yhapi.ashx?act=addBlack&reason='..User..'&pid='..number_pid..'&token='..token
			log("拉黑"..number..'\n'..lx_url);
            return get(lx_url);
        end),
    }
end
--dxcode = _vCode_yl()
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

function _vCode_lh() --蓝狐

	local	User = 'api-SMuo3byY'
	local	Pass = '199555'
	local PID = '12615'
    local token,number = "074a7678aa5611ea92c100163e0007a2",""	
    return {
	    login=(function() 
            local RetStr
			for i=1,5,1 do
				sys.toast("获取token\n"..i.."次共5次")
                sys.msleep(1500)
				local lx_url = 'http://xiangjiuer.cn/sms/api/login?username='..User..'&password='..Pass
				log(lx_url)
                RetStr = get(lx_url)
				RetStr = json.decode(RetStr)
				log(RetStr)
				if RetStr then
					if RetStr.expire == 604800 or RetStr.expire == '604800' then
						token = RetStr.token
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
			local url___ = "http://xiangjiuer.cn/sms/api/getPhone?sid="..PID.."&token="..token..'&json=2'
			log(url___)
			RetStr = get(url___)
			RetStr = json.decode(RetStr)
			log(RetStr)
			delay(3)
			if RetStr.code == 0 or RetStr.code== '0' then
				number = RetStr.phone
				log(number)
				local phone_title = (string.sub(number,1,3))
--				local blackPhone = {'144','141','142','143','144','145','146','147','199','161','162','165','167','170','171'}
--				local blackPhone = {"130","131","132","145","155","156","166","171","175","176","185","186","134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
--				local blackPhone = {"134","135","136","137","138","139","147","150","151","152","157","158","159","178","182","183","184","187","188","198"}
				local blackPhone = {}
				for k,v in ipairs(blackPhone) do
					if phone_title == v then
						local lx_url =	'http://dev.wanzhongma.com/open/api/addBlacklist?sid='..PID..'&phone='..number..'&token='..'&json=2'
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
				RetStr = get("http://xiangjiuer.cn/sms/api/getMessage?sid="..PID.."&token="..token.."&phone="..number..'&json=2')
				RetStr = json.decode(RetStr)
				log(RetStr)
				if RetStr then
					if RetStr.code == 0 or RetStr.code == '0' then 
						Msg = RetStr.sms
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
			local lx_url =	'http://dev.wanzhongma.com/open/api/addBlacklist?sid='..PID..'&phone='..number..'&token='..'&json=2'
			log("拉黑"..number..'\n'..lx_url);
            return get(lx_url);
        end),
    }
end
--dxcode = _vCode_lh()
--dxcode.login()

var = {}
var.appbid = "com.jiayuan.miyou"


function inputword(v)
	key.send_text(v,200)
end







tips = {}
tips_手机登录注册 = {{{414, 1056, 0xffffff},{407, 1057, 0x715af5},{414, 1058, 0xd2cbfc},{332, 1018, 0x715af5},{477, 1085, 0x715af5},}, 85, 194, 1001, 541, 1101}
登录界面 = {{{487, 685, 0x715af5},{387, 683, 0x715af5},{256, 681, 0x715af5},{215, 587, 0x7f756e},{202, 459, 0x807670},}, 85, 53, 440, 509, 692}
登录界面_获取验证码 = {{{616, 554, 0xffffff},{639, 552, 0xffffff},{517, 560, 0xffffff},}, 85, 506, 544, 657, 579}
请选择性别界面 = {{{337, 709, 0xffffff},{139, 675, 0x715af6},{518, 737, 0x715af6},{528, 674, 0x715af6},{ 78, 170, 0x333333},{ 81, 189, 0x333333},}, 85, 59, 159, 580, 763}
注册完成界面 = {{{421, 1272, 0xffffff},{358, 1271, 0x715af5},{358, 1269, 0xffffff},{299, 1245, 0x715af5},}, 85, 271, 1232, 495, 1300}
function reg()
	local TIMEline = os.time()
	local OUTtime = 3*60
	local 手机号 = true
	local 短信 = false
	local 提交 = false
--	var.password  = myRand(4,8,2)
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			if d(tips_手机登录注册,'tips_手机登录注册',true) then
			elseif d(登录界面,'登录界面') then
				if 手机号 then
					var.phone = dxcode.getPhone()
					if var.phone then
						if #var.phone == 11 then
							click(225, 425)
							inputword(var.phone)
							手机号 = false
							短信 = true
						end
					end

				elseif 短信 then
					if d(登录界面_获取验证码,'登录界面_获取验证码',true) then
					else	
						var.sms = dxcode.getMessage()
						if #var.sms == 4 then
							click(111, 561)
							inputword(var.sms)
	--						up('咪咕视频','点击注册')
							短信 = false
							提交 = true
						end	
					end	
				elseif 提交 then
					if d(登录界面,'登录界面',true) then
					end
				end
--			elseif d(请选择性别界面,'请选择性别界面') then
			elseif d(注册完成界面,'注册完成界面') then
				v_xb = math.random(1,100)
				if v_xb > 10 then
					click(235, 461) --男
				else
					click(501, 472) -- 女
				end	
				d(请选择性别界面,'请选择性别界面',true)
				delay(2)
				up_hb('花丛',other,'提交注册')
				up_wenfree('花丛',other,'提交注册')
				delay(3)
				return true
					
			end
		end	
		delay(1)
	end
end

点击添加头像 = {{{379, 444, 0x545657},{378, 434, 0xecf0f4},{350, 432, 0xecf0f4},{343, 429, 0x4b4c4d},}, 85, 312, 391, 436, 484}
注册完成界面_相册选取 = {{{376, 1003, 0x333333},{373, 1002, 0xffffff},{312, 1008, 0x464646},{345, 1242, 0x9497b0},{406, 1259, 0x9497b0},}, 85, 283, 987, 455, 1292}
相机胶卷界面 = {{{312, 68, 0x686868},{309, 88, 0xcecece},{383, 98, 0xffffff},{436, 69, 0x8f8f8f},{437, 98, 0x525252},}, 85, 299, 62, 449, 105}
tips_完成 = {{{715, 1294, 0x53b311},{708, 1293, 0x181818},{682, 1284, 0x458f13},}, 85, 653, 1271, 734, 1308}
注册完成界面_填写昵称 = {{{107, 700, 0xe9e9ec},{101, 708, 0xe8e8eb},{110, 728, 0xfcfcfd},{215, 699, 0xf7f7f8},{226, 725, 0xe7e7ea},}, 85, 93, 695, 237, 737}
注册完成界面_选择生日 = {{{104, 830, 0xf0f0f2},{102, 856, 0xe5e5e8},{204, 831, 0xceced4},{223, 858, 0xd7d7dc},}, 85, 97, 825, 229, 860}
tips_选择生日界面 = {{{666, 665, 0x8e8e93},{655, 658, 0xdcdcde},{656, 681, 0xe4e4e5},{693, 657, 0xd2d2d4},{707, 682, 0xe3e3e5},}, 85, 649, 650, 720, 689}
tips_选择生日确定 = {{{695, 667, 0xff7733},{690, 667, 0xffd0b9},{672, 667, 0xff7733},{668, 667, 0xffffff},}, 85, 654, 653, 710, 686}
tips_从相册选取 = {{{315,  995, 0x333333},{309, 1002, 0xffffff},{320, 1020, 0xd4d4d4},{383, 1016, 0x333333},{391, 1016, 0xffffff},{444, 1019, 0x989898},}, 85, 285, 980, 458, 1022}
注册完成界面_性别男 = {{{288, 1018, 0xe6f3ff},{268, 1013, 0x4b4c4d},{477,  999, 0xfff2f2},{488,  999, 0x4b4c4d},}, 85, 178, 966, 574, 1050}
注册完成界面 = {{{421, 1272, 0xffffff},{358, 1271, 0x715af5},{358, 1269, 0xffffff},{299, 1245, 0x715af5},}, 85, 271, 1232, 495, 1300}
注册完成 = {{{98, 1288, 0xffffff},{93, 1281, 0x000000},{89, 1289, 0xffffff},{85, 1312, 0xffffff},}, 85, 60, 1247, 122, 1327}
注册完成2 = {{{108, 1275, 0x848484},{ 94, 1275, 0x000000},{162, 1288, 0x000000},{260, 1281, 0x7c7c7c},}, 85, 52, 1245, 472, 1316}
注册完成3 = {{{566, 720, 0x735cf5},{566, 719, 0xffffff},{420, 705, 0x715af5},{573, 745, 0x715af5},{268, 720, 0x474747},{223, 707, 0xffffff},}, 85, 92, 687, 599, 759}
function 填资料()
	local TIMEline = os.time()
	local OUTtime = 3*60
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			if d(注册完成界面,'注册完成界面') then
				if d(点击添加头像,'点击添加头像',true) then
				elseif d(注册完成界面_相册选取,'注册完成界面_相册选取',true) then
				elseif d(注册完成界面_填写昵称,'注册完成界面_填写昵称') then
					click(614, 713)
				elseif d(注册完成界面_选择生日,'注册完成界面_选择生日',true) then
				elseif d(注册完成界面_性别男,'注册完成界面_性别男',true) then
				elseif d(注册完成界面,'注册完成界面',true) then
				else
					click(82, 534)
				end
			elseif d(相机胶卷界面,'相机胶卷界面') then 
				x1 = 180 * (math.random(0,2)) 
				y1 = 180 * (math.random(0,2)) 
				click(99+x1, 232+y1)
				
			elseif d(tips_选择生日界面,'tips_选择生日界面') then
				for i = 1 , math.random(1,9) do
					click(224, 964)
				end
				for i = 1 , math.random(1,9) do
					click(359, 961)
				end
				for i = 1 , math.random(1,9) do
					click(506, 961)
				end
			elseif d(tips_从相册选取,'tips_从相册选取',true) then
			elseif d(tips_选择生日确定,'tips_选择生日确定',true) then
			elseif d(tips_完成,'tips_完成',true) then
			elseif d(注册完成,'注册完成') or d(注册完成2,'注册完成2') or d(注册完成3,'注册完成3') then
				up_hb('花丛',other,'完整注册')
				up_wenfree('花丛',other,'完整注册')
				return true
			end

		end
		delay(1)
	end
end



--PID = '13336'

--[[]]

function main()
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(var.appbid) then
			idfa = XXTfakerGetinfo(var.appbid)['IDFA']
			if reg() then
				 填资料()
			end
		end
	end
end


for i = 1 , 1000 do
	local ret,errMessage = pcall(main)
	if ret then
	else
		log(errMessage)
--		sys.alert(errMessage, 3)
		delay(5)
	end
end

--]]





