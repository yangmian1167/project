kfy={}
kfy.id = '10718'
kfy.action = 'loginIn'
kfy.name = 's-cgy5paih'
kfy.password = 'yangmian121'
kfy.url = 'http://api.ygcake.com/do.php'
token = '176ac85b-bad7-4f68-8d96-b0f89e71bb09'

function alz()
	local get ={}
	get.action = 'loginIn'
	get.name = kfy.name
	get.password = kfy.password
	
	local res = post(kfy.url,get)
	if res ~= nil then
		loginlist = string.split(res,'|')
		log("token--->"..loginlist[2])
		token = loginlist[2]
	end
end

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
	get.vno = '0'
--	get.locationMatching='include&locationLevel=c&location=杭州'
	local res = post(kfy.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			phone = phone_list[2]
			return true
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
--	get.locationMatching='include&locationLevel=c&location=杭州'
	local res = post(kfy.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			phone = phone_list[2]
			return phone
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


