lx={}
lx.id = '12939'
lx.action = 'loginIn'
lx.name = 'a15240678777'
lx.password = 'Tyx168777'
lx.url = 'http://api.lianxins.com/api/do.php'
token = '3607e5589629d2cb988b50b459402cd3'
--lx.author = 'yangmian'


function login()
	local get ={}
	get.sid = lx.id
	get.action = 'loginIn'
	get.name = lx.name
	get.password = lx.password
	local token = post(lx.url,get)
	if token ~= nil then
		token = string.split(token,'|')
		if token[1] == '1' then
			token = token[2]
--			local i,j = string.find(token,"%d+")
--			token = string.sub(token,i,j)
			nLog(token)
			return true
		else
			sys.toast(token)
		end
	end	
end

function GET_message(phone)
	local get ={}
	get.sid = lx.id
	get.action = 'getMessage'
	get.phone = phone
	get.token = token
	local res = post(lx.url,get)
	if res ~= nil then
		smslist = string.split(res,'|')
		if smslist[1] == '1' then
			sms = smslist[2]
			local i,j = string.find(sms,"%d+")
			sms = string.sub(sms,i,j)
			nLog(sms)
			return true
		else
			sys.toast(res..phone)
		end
	end
	delay(3)
end

function GET_message_a(phone)
	local get ={}
	get.sid = lx.id
	get.action = 'getMessage'
	get.phone = phone
	get.token = token
	local res = post(lx.url,get)
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
	delay(3)
end


function GET_Phone()
	local get ={}
	get.sid = lx.id
	get.action = 'getPhone'
	get.token = token
	get.vno = '0'
	--get.locationMatching='include&locationLevel=c&location=江苏'
	local res = post(lx.url,get)
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
	get.sid = lx.id
	get.action = 'getPhone'
	get.token = token
	get.phone = phone
	get.vno = '0'
	--get.locationMatching='include&locationLevel=c&location=江苏'
	local res = post(lx.url,get)
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
	get.sid = lx.id
	get.action = 'addBlacklist'
	get.token = token
	get.phone = phone
	--get.locationMatching='include&locationLevel=c&location=江苏'
	local res = post(lx.url,get)
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


