
nLog = require('nLog')()
require('faker')
require('xxtsp')
--require('lzdm')
require('jmpt')
require("ZZBase64")
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

function CheckPhone()
	local url = 'http://wenfree.cn/api/Public/idfa/'
	local phone_list = {}
	phone_list.service = 'CheckPhone.Check'
	phone_list.name = '橙牛汽车管家'
	phone_list.phone = var.phone or '15884700624'
	postphone = post(url,phone_list)
	log(postphone)
	postphone = json.decode(postphone)
	log(postphone.data)
	if postphone.data == '可以注册' then
		return true
	end	
end
var = {}
var.appbid = "com.kata.cwz51"


function inputword(v)
	key.send_text(v,200)
end







tips = {}
tips_暂不开启 = {{{167, 660, 0x1384ff},{157, 660, 0xffffff},{447, 666, 0x0b80ff},{454, 664, 0xffffff},}, 85, 92, 632, 513, 692}
tips_同意 = {{{432, 891, 0xffffff},{386, 872, 0xff7e3f},{492, 907, 0xff7e3f},{211, 896, 0xffffff},}, 85, 91, 844, 552, 939}
tips_立即体验 = {{{342, 1023, 0xffffff},{270, 1024, 0xffffff},{192, 1001, 0x0074ff},{440, 1046, 0x0074ff},{299, 1083, 0xf3f6ff},}, 85, 113, 966, 506, 1089}
tips_未登录 = {{{ 90, 190, 0x999999},{ 76, 190, 0xf8f5eb},{ 74, 164, 0x333333},{106, 150, 0xf8f8f8},{120, 134, 0xff9d4b},}, 85, 18, 110, 153, 246}
登录界面 = {{{ 66, 211, 0xfc7d2c},{ 61, 200, 0x7e4a30},{ 88, 195, 0x7d492f},{129, 186, 0x5d5d5d},{153, 186, 0x333333},}, 85, 23, 162, 308, 226}
登录界面_获取验证码 = {{{524, 571, 0xfe7e2d},{520, 571, 0xffffff},{429, 562, 0xfe7e2d},{540, 576, 0xffffff},}, 85, 411, 555, 569, 592}
登录界面_登录 = {{{341, 766, 0xfffcfa},{309, 766, 0xfffcfa},{165, 741, 0xfd7e2d},{457, 795, 0xfd7e2d},}, 85, 33, 713, 612, 833}
登录界面_注册成功 = {{{ 92, 192, 0xfc7d2c},{ 70, 189, 0xf8f5eb},{115, 164, 0x7d492f},{112, 141, 0xffffff},{124, 135, 0xff9d4a},}, 85, 16, 107, 151, 253}
打码界面 = {{{479, 720, 0xfe7e2d},{446, 704, 0xffffff},{227, 694, 0xfe924e},{226, 697, 0xffffff},{160, 693, 0xffffff},{283, 402, 0x333333},}, 85, 94, 358, 546, 756}
function reg()
	local TIMEline = os.time()
	local OUTtime = 3*60
	local 手机号 = true
	local 短信 = false
	local 提交 = false
	local 打码 = true
--	var.password  = myRand(4,8,2)
	while os.time()- TIMEline < OUTtime do
		if active(var.appbid,4)then
			if d(tips_暂不开启,'tips_暂不开启',true) then
			elseif d(tips_同意,'tips_同意',true) then
			elseif d(tips_立即体验,'tips_立即体验',true) then
			elseif d(tips_未登录,'tips_未登录',true) then
			
			elseif d(登录界面,'登录界面') then
				if 手机号 then
					var.phone = dxcode.getPhone()
					if CheckPhone() then
						if var.phone then
							if #var.phone == 11 then
								click(98, 460)
								inputword(var.phone)
								手机号 = false
								短信 = true
							end
						end
					end	
				elseif d(登录界面_获取验证码,'登录界面_获取验证码',true) then
				elseif 短信 then
						var.sms = dxcode.getMessage()
						if #var.sms == 4 then
							click(111, 561)
							inputword(var.sms)
							短信 = false
							提交 = true
						end	
				elseif 提交 then
					if d(登录界面_登录,'登录界面_登录',true) then
					else
						click(535, 300)
					end
				end
			elseif d(打码界面,'打码界面') then
					snapshot("yzm.jpg", 293, 491, 529, 568);
					imagepath = userPath() .. "/res/yzm.jpg"
					postData['image'] = base64s()
					local imgRes = post(url,postData)
					imgRes = json.decode(imgRes)
					if imgRes.message == 'success' then
						log('验证码结果为：'..imgRes.data.result )
						click(161, 536)
						inputword(imgRes.data.result)
						delay(1)	
						click(429, 458)
					end
			elseif d(登录界面_注册成功,'登录界面_注册成功') then
				up_wenfree('橙牛汽车管家',other,'提交注册')
				delay(3)
				return true
			else
				click(580, 1095)
					
			end
		end	
		delay(1)
	end
end


--PID = '2530'

--[[]]

function main()
	vpnx()
	delay(3)
	if vpn() then
		dxcode.login()
		if XXTfakerNewPhone(var.appbid) then
--			idfa = XXTfakerGetinfo(var.appbid)['IDFA']
			if reg() then
--				 填资料()
			end
		end
	end
end


for i = 1 , 500 do
	local ret,errMessage = pcall(main)
	if ret then
	else
		log(errMessage)
--		sys.alert(errMessage, 3)
		delay(5)
	end
end

--]]


				







