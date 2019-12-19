

dm={}
dm.id = '12315'
dm.action = 'loginIn'
dm.name = '6g0hHGsmhqaTd'
dm.password = 'yangmian121'
dm.url = 'http://api.duomi01.com/api'
token = '7b75c50b1bd00e9d07758fe38e92f562'

function dm_login()
	local get ={}
	get.action = 'loginIn'
	get.name = dm.name
	get.password = dm.password
	
	local res = post(dm.url,get)
	if res ~= nil then
		loginlist = string.split(res,'|')
		log("token--->"..loginlist[2])
		token = loginlist[2]
	end
end


function GET_message(phone)
	local get ={}
	get.sid = dm.id
	get.action = 'getMessage'
	get.phone = phone
	get.token = token
	local res = post(dm.url,get)
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
	delay(3)
end

function GET_message_a(phone)
	local get ={}
	get.sid = dm.id
	get.action = 'getMessage'
	get.phone = phone
	get.token = token
	local res = post(dm.url,get)
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
	get.sid = dm.id
	get.action = 'getPhone'
	get.token = token
	get.vno = '0'
--	get.locationMatching='include&locationLevel=c&location=杭州'
	local res = post(dm.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			phone = phone_list[2]
			log(phone)
			return true
		end
	end
end

function GET_Phone_a(phone)
	local get ={}
	get.sid = dm.id
	get.action = 'getPhone'
	get.token = token
	get.phone = phone
	get.vno = '0'
--	get.locationMatching='include&locationLevel=c&location=杭州'
	local res = post(dm.url,get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		if phone_list[1] == '1' then
			phone = phone_list[2]
			return phone
		end
	end
end




-----加黑手机号----
function dm_addBlacklist()
	local get ={}
	get.sid = dm.id
	get.action = 'addBlacklist'
	get.token = token
	get.phone = phone
	get.vno = '0'
--	get.locationMatching='include&locationLevel=c&location=杭州'
	local res = post(dm.url,get)
	if res ~= nil then
		res = string.split(res,'|')
		if phone_list[1] == '1' then
			res = res[2]
			log(res)
			return true
		end
	end
end

-----释放手机号-----
function dm_cancelRecv()
	local get ={}
	get.sid = dm.id
	get.action = 'cancelRecv'
	get.token = token
	get.phone = phone
	get.vno = '0'
--	get.locationMatching='include&locationLevel=c&location=杭州'
	local res = post(dm.url,get)
	if res ~= nil then
		res = string.split(res,'|')
		if phone_list[1] == '1' then
			res = res[2]
			log(res)
			return true
		end
	end
end



































