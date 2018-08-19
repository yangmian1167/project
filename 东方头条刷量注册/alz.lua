kfy={}
kfy.id = '10576'
kfy.action = 'loginIn'
kfy.name = 's-f3z93kng'
kfy.password = 'whoami@520'
kfy.url = 'http://api.ndd001.com/do.php'
token = '668d1e2a-e0eb-4716-9d75-6aadacf51337'


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

function GET_Phone()
	local get ={}
	get.sid = kfy.id
	get.action = 'getPhone'
	get.token = token
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


