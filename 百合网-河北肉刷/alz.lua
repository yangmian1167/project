kfy={}
kfy.id = '10952'
kfy.action = 'loginIn'
kfy.name = 's-gozqerp3'
kfy.password = 'a135246'
kfy.url = 'http://api.ndd001.com/do.php'
token = 'f8629ece-0246-4eda-935a-224fb45746a1'




function GET_message(phone)
	local get ={}
	get.sid = kfy.id
	get.action = 'getMessage'
	get.phone = phone
	get.token = token
	local res = post(kfy.url,get)
	if res ~= nil then
		smslist = string.split(res,'|')
		if smslist[1] == '1' then
			sms = smslist[2]
			local i,j = string.find(sms,"%d+")
			sms = string.sub(sms,i,j)
			nLog(sms)
			return true
		else
			sys.toast(res)
		end
	end
end

function GET_message_a(phone)
	local get ={}
	get.sid = kfy.id
	get.action = 'getMessage'
	get.phone = phone
	get.token = token
	local res = post(kfy.url,get)
	if res ~= nil then
		smslist = string.split(res,'|')
		if smslist[1] == '1' then
			sms = smslist[2]
			local i,j = string.find(sms,"验证码：%d+")
			sms = string.sub(sms,i,j)
			local i,j = string.find(sms,"%d+")
			sms = string.sub(sms,i,j)
			nLog(sms)
			return true
		end
	end
end


function GET_Phone()
	local get ={}
	get.sid = kfy.id
	get.action = 'getPhone'
	get.token = token
--	get.vno = '0'
	--get.locationMatching='include&locationLevel=c&location=江苏'
	local res = post(kfy.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			phone = phone_list[2]
			phoneheader = string.sub(phone,1,3)
			if phoneheader == '171' or phoneheader == '170' then
				return false
			end
			return phone
		else
			log(phone_list[2],true)
		end
	end
end

function GET_Phone_a(phone)
	local get ={}
	get.sid = kfy.id
	get.action = 'getPhone'
	get.token = token
	get.phone = phone
	get.vno = '0'
	--get.locationMatching='include&locationLevel=c&location=江苏'
	local res = post(kfy.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			phone = phone_list[2]
			return phone
		end
	end
end

--[[
1、action=addBlacklist
2、提交参数：sid=项目id&phone=要加入黑名单的手机号&token=登录时返回的令牌
3、调用实例：http://api.ipadh.cn/do.php?action=addBlacklist&sid=项目id&phone=要加入黑名单的手机号&token=登录时返回的令牌
4、返回值：1|操作成功
5、备注：如果是正常取到了短信，是不用操作加入黑名单和释放手机号的
--]]
function addBlacklist(phone)
	local get ={}
	get.sid = kfy.id
	get.action = 'addBlacklist'
	get.token = token
	get.phone = phone
	--get.locationMatching='include&locationLevel=c&location=江苏'
	local res = post(kfy.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			return true
		end
	end
end

--高德 地址转换api------
function GET_local(lo,lt)
	local gaode = {}
	gaode.location = lo..','..lt
	gaode.key = 'aebbbe9fbc1ab12bdfb4bca79621f494'
	gaode.poitype = '%E5%B0%8F%E5%8C%BA'
	gaode.radius = 1000
	gaode.extensions = base
	gaode.batch = 'false'
	gaode.roadlevel = 0
	local gaodeurl = 'http://restapi.amap.com/v3/geocode/regeo'
	local res = json.decode(post(gaodeurl,gaode))
	if res.regeocode.formatted_address then
		return res.regeocode.formatted_address
	end
end


