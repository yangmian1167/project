
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
	postdate.ip = ip or get_ip() or '192.168.1.1'
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








--有信平台
function _vCode_yx() --有信

	local	User = 'zhangvsqaz1go'
	local	Pass = '199412'
	local PID = '83409'
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
--月亮平台
function _vCode_yl() --月亮平台

	local	User = '51135893913'
	local	Pass = '199412'
	local PID = '1282'
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
function _vCode_wzy() --万众云

	local	User = 'api-GbzRcm'
	local	Pass = '199555'
	local PID = '13332'
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
function _vCode_lh() --蓝狐

	local	User = 'api-SMuo3byY'
	local	Pass = '199555'
	local PID = '12616'
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















--log(device.serial_number())










var = {}
var.appbid = "com.jiayuan.havefun"


function inputword(v)
	key.send_text(v,200)
end







tips = {}
--tips_手机登录注册 = {{{313, 783, 0xffffff},{189, 764, 0xc4c6cc},{195, 791, 0xa5a8b1},{447, 762, 0x686d7c},{446, 793, 0xb3b5bd},}, 85, 182, 745, 462, 806}
tips_手机登录注册 = {{{306, 782, 0xffb089},{279, 769, 0xff894d},{265, 769, 0xfff8f4},{139, 746, 0xff7733},{517, 800, 0xff7733},}, 85, 62, 727, 590, 832}
登录界面 = {{{ 74, 170, 0x141625},{ 72, 195, 0x9c9da4},{ 84, 208, 0xc6c7ca},{397, 168, 0x71727b},{403, 209, 0x6c6e77},}, 85, 69, 160, 419, 218}
登录界面_获取验证码 = {{{521, 501, 0xffffff},{409, 504, 0xced0d3},{416, 520, 0xffffff},{535, 517, 0xffffff},}, 85, 395, 484, 552, 535}
登录界面_登录 = {{{344, 676, 0xffffff},{151, 650, 0xff7733},{536, 681, 0xff7733},{545, 649, 0xff7733},}, 85, 42, 627, 580, 696}
请选择性别界面 = {{{285, 945, 0xa4a7b0},{334, 949, 0xffffff},{333, 953, 0x4b5062},{342, 962, 0x9498a2},{348, 969, 0x343a4e},}, 85, 274, 941, 371, 983}
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
							click(232, 380)
							inputword(var.phone)
							手机号 = false
							短信 = true
						end
					end

				elseif 短信 then
					if d(登录界面_获取验证码,'登录界面_获取验证码',true) then
					else	
						var.sms = dxcode.getMessage()
						if #var.sms == 5 then
							click(156, 508)
							inputword(var.sms)
	--						up('咪咕视频','点击注册')
							短信 = false
							提交 = true
						end	
					end	
				elseif 提交 then
					if d(登录界面_登录,'登录界面_登录',true) then
					end
				end
			elseif d(请选择性别界面,'请选择性别界面') then
				v_xb = math.random(1,100)
				if v_xb > 10 then
					click(317, 410) --男
				else
					click(310, 654) -- 女
				end	
				d(请选择性别界面,'请选择性别界面',true)
				delay(2)
				up_hb('嗨玩',other,'提交注册')
				up_wenfree('嗨玩',other,'提交注册')
				delay(3)
				return true
					
			end
		end	
		delay(1)
	end
end



--[[]]

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


for i = 1 , 5000 do
	local ret,errMessage = pcall(main)
	if ret then
	else
		log(errMessage)
--		sys.alert(errMessage, 3)
		delay(5)
	end
end

--]]





