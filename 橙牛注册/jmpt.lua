--来信平台
function _vCode_lx() --来信

	local User = 'api-32182-rLPZxzn'
	local Pass = 'yangmian121'
	local PID = '2530'
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
--dxcode = _vCode_lx()

--月亮平台
function _vCode_yl() --月亮平台

	local	User = 'yangmian12'
	local	Pass = 'yangmian121'
	local PID = '1387'
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
dxcode = _vCode_yl()



