yumi={}
yumi.id = '703'
yumi.uid = '41497-kax'
yumi.pwd = '19940723'
yumi.url = 'http://api.jyzszp.com/Api/index'
--yumi.token = '6dd92f7dbe2becd4959f7c9f7b8ce0d9'


function YUMI()
	local str = {}
	str['uid'] = yumi.uid
	str['pwd'] = yumi.pwd
	local res = post(yumi.url..'/userlogin',str)
	if res ~= nil then
		yumi.token = string.split(res,'|')[3]

		return true
	end
end

function GET_Phone()
	local get ={}
	get = {}
	get['action'] = 'getPhone'
	get['pid'] = yumi.id
	get['uid'] = yumi.uid
	get['token'] = yumi.token
	get['vxnh'] = 2
	local res = post(yumi.url..'/getMobilenum',get)
	if res ~= nil then
		phone_list = string.split(res,'|')
		phone = phone_list[1]
		return phone
	end
end

function GET_message(phone)
	local get ={}
	get['mobile'] = phone
	get['pid'] = yumi.id
	get['uid'] = yumi.uid
	get['token'] = yumi.token
	local res = post(yumi.url..'/getVcodeAndReleaseMobile',get)
	if res ~= nil then
		local i,j = string.find(res,"|")
		if i ~= nil and j ~= nil then
			SMS_list = string.split(res,'|')
			sms = SMS_list[2]
			if sms ~= nil then
				return true
			end
		else
			delay(3)
		end
	end
end























































