yumi={}
yumi.id = '703'
yumi.uid = '47869-tly'
yumi.pwd = 'q3991705q'
yumi.url = 'http://api.jyzszp.com/Api/index'
yumi.token = '6dd92f7dbe2becd4959f7c9f7b8ce0d9'


function YUMI()
	local str = {}
	str['uid'] = '47869-tly'
	str['pwd'] = 'q3991705q'
	local res = post(yumi.url..'/userlogin',str)
	if res ~= nil then
		yumi.token = string.split(res,'|')[3]
		log(yumi.token)
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

function GET_Message(phone)
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
			SMS = SMS_list[2]
			if SMS ~= nil then
				return true
			end
		else
			delay(3)
		end
	end
end























































