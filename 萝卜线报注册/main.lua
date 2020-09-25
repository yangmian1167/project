
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
--[[
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
var.appbid = "com.ios.blbl"


function inputword(v)
	key.send_text(v,200)
end







tips = {}
tips_同意继续使用 = {{{250, 722, 0xffffff},{169, 699, 0xfd3381},{478, 743, 0xfd3381},{375, 806, 0xbebebe},}, 85, 128, 679, 503, 832}
tips_立即体验 = {{{565, 1057, 0xf74a93},{469, 1041, 0xff2c80},{454, 1063, 0xff2c80},{454, 1075, 0xececf9},{593, 1022, 0xe2f6fe},}, 85, 435, 1008, 613, 1082}
首页点我 = {{{559, 1084, 0x4f4f4f},{397, 1087, 0x474747},{ 89, 1074, 0xff2c80},{ 82, 1079, 0xffffff},}, 85, 53, 1060, 599, 1108}


登录界面 = {{{178, 268, 0xff2c80},{187, 268, 0xffffff},{205, 268, 0xffffff},{219, 268, 0xff2c80},{222, 268, 0xffffff},}, 85, 159, 195, 253, 293}
登录界面_获取验证码 = {{{452, 550, 0xff2c80},{467, 555, 0xffffff},{474, 555, 0xff4891},{475, 555, 0xffffff},{478, 555, 0xff2c80},}, 85, 435, 495, 590, 600}
登录界面_登录 = {{{345, 733, 0xfffeff},{302, 734, 0xffffff},{239, 710, 0xff2c80},{372, 756, 0xff2c80},{372, 712, 0xff2c80},}, 85, 47, 684, 390, 771}
登录界面_注册成功 = {{{321,  696, 0xf23c3c},{467,  813, 0xe33a3b},{445,  744, 0xff9e00},{ 92, 1066, 0x803653},{566, 1072, 0x232323},}, 85, 27, 671, 593, 1121}
登录界面_注册成功1 = {{{129,  143, 0xf0f0f0},{458,  113, 0x3a4447},{541,  302, 0x15120d},{569, 1075, 0xff2c80},}, 85, 0, 0, 0, 0}
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
			if d(tips_同意继续使用,'tips_同意继续使用',true) then
			elseif d(tips_立即体验,'tips_立即体验',true) then
			elseif d(首页点我,'首页点我',true) then
			elseif d(登录界面,'登录界面') then
				if 手机号 then
					var.phone = dxcode.getPhone()
--					if CheckPhone() then
						if var.phone then
							if #var.phone == 11 then
								click(59, 560)
								inputword(var.phone)
								手机号 = false
								短信 = true
							end
						end
--					end	
				elseif d(登录界面_获取验证码,'登录界面_获取验证码',true) then
				elseif 短信 then
						var.sms = dxcode.getMessage()
						if #var.sms == 4 then
							click(49, 607)
							inputword(var.sms)
							短信 = false
							提交 = true
						end	
				elseif 提交 then
					if d(登录界面_登录,'登录界面_登录',true) then
					else
						click(537, 276)
					end
				end
			elseif d(登录界面_注册成功,'登录界面_注册成功') or d(登录界面_注册成功1,'登录界面_注册成功1') then
				up_wenfree('萝卜线报注册',other,'提交注册')
				delay(3)
				return true
			else
				moveTo(520, 980,132, 973)
					
			end
		end	
		delay(1)
	end
end




--[[]]

function main()
	vpnx()
	delay(3)
	if vpn() then
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


				


























