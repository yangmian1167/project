-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('XXTdama')
screen.init(0)

function getMail()
	local Dtime = os.time()
	safari = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3)'
	server = 'http://tb1.host.apijs.cc/Public/adphone/?service=adphone.get'
	local code, res_headers, body = http.get(server, 5, {
		["User-Agent"] = safari; -- 模拟 IE8 的请求
	})
	if code == 200 then -- 如果返回的状态码是 HTTP_OK
		log('服务器通讯时间'..os.time()-Dtime)
		ma={}
		ma = json.decode(body)
		if tonumber(ma.data.ret) ~= 0 then
			id = ma.data.id
			mail = ma.data.mail
			mail_password = ma.data.mail_password
			log(ma)
			return true
		else
			sys.alert("没有邮箱了")
			os.exit()
		end
	end
end

function callback(callarr)
	safari = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3)'
	local index = 1
	local str = ""
	for k,v in pairs(callarr) do
		if index == #callarr then
			str = str..k..'='..v
		else
			str = str..k..'='..v..'&'
		end
		index = index + 1
	end
	server = 'http://tb1.host.apijs.cc/Public/adphone/?service=adphone.callback&'..str
	local code, res_headers, body = http.get(server, 9, {
		["User-Agent"] = safari; -- 模拟 IE8 的请求
	})
	if code == 200 then -- 如果返回的状态码是 HTTP_OK
		return true
	end
end

local myUrl = 'https://bitrabbit.com/zh-cn?open=signup&code=YRQTBS&activity_id=1'
btt = {}
btt['urlok']={{{275, 1016, 0xffca6d},{378,  997, 0xffca6d},}, 85}
	btt['mail']={{{175, 261, 0xc0c0c0},{179, 275, 0xc0c0c0},{178, 254, 0xc3c3c3},}, 85, 110, 241, 200, 290}
	btt['mail_password']={{{232, 496, 0xc8c8c8},{238, 508, 0xc0c0c0},{236, 486, 0xc0c0c0},}, 85, 109, 356, 316, 519}
	btt['yzm']={{{180, 611, 0xc0c0c0},{183, 602, 0xc0c0c0},}, 85, 118, 588, 231, 639}
	btt['true']={{{114, 909, 0xa2a3a2},{116, 897, 0xd4d3d5},{102, 910, 0xa4a4a4},{128, 910, 0xa0a0a0},}, 85, 77, 875, 162, 948}
		btt['done']={{{581, 590, 0x047cff},{580, 581, 0x007aff},}, 85, 547, 556, 632, 710}
btt['regok']={{{368, 577, 0xf4ca82},{118, 539, 0xf4ca82},}, 85}

function open()
	local timeLine = os.time()
	local timeused = 60*0.5
	openUrl(myUrl)
	while (os.time()-timeLine < timeused ) do
		if done(btt['urlok'],'urlok')then
			log("打开成功")
			return true
		end
		delay(2)
	end
end

function reg()
	local timeLine = os.time()
	local timeused = 60*2
	local yzm_send = true
	if getMail()then
	
		while (os.time()-timeLine < timeused ) do
			if done(btt['urlok'],'urlok')then
				if cpic(btt['mail'],'mail',true)then
					delay(2)
					input(mail)
					cpic(btt['done'],'done',true)
				elseif cpic(btt['mail_password'],'mail_password',true)then
					delay(2)
					input(mail_password)
					cpic(btt['done'],'done',true)
				elseif yzm_send and yzmjg() then
					click(136, 616)
					input(yzm)
					cpic(btt['done'],'done',true)
					yzm_send = false
				elseif cpic(btt['true'],'true',true)then
				else
					done(btt['urlok'],'urlok',true,1)
				end
			elseif done(btt['regok'],'regok')then
				local callarr ={}
				callarr.id = id
				callarr.todo = 'ok'
				callback(callarr)
			end
			delay(1)
		end
		
	end
	log('注册超时',true)
end

btt['帐号设置']={{{62, 972, 0x181818},{62, 966, 0xafafaf},{55, 971, 0xafafaf},{67, 972, 0x666666},{53, 988, 0xaeaeae},}, 85}


function bindphone()
	local timeLine = os.time()
	local timeused = 60*3
	local yzm_send = true
	
	while (os.time()-timeLine < timeused ) do
		if cpic(btt['帐号设置'],'帐号设置',true) then

		else
			moveTo(293, 1007,293, 607)
			
		end
		delay(1)
	end
end


input('u1yoabuifubv@inbox.ru')



























































