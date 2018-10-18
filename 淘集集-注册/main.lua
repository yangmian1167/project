nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
--xui.show("xui-sub")

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

bid={}
bid.淘集集 = {
				['appbid']='com.huanshou.taojiji',
--				['url']='http://uri6.com/tkio/3eUVjqa',
--				['url']='http://uri6.com/tkio/vuaYB3a',
		}
			
bid.淘集集.url = {}
bid.淘集集.url.AAAAAAAA='http://uri6.com/tkio/3eUVjqa'
bid.淘集集.url.iPhone01='http://uri6.com/tkio/3eUVjqa'
bid.淘集集.url.iPhone07='http://uri6.com/tkio/3eUVjqa'
bid.淘集集.url.iPhone08='http://uri6.com/tkio/3eUVjqa'
bid.淘集集.url.iPhone02='http://uri6.com/tkio/vuaYB3a'
bid.淘集集.url.iPhone09='http://uri6.com/tkio/vuaYB3a'
bid.淘集集.url.iPhone10='http://uri6.com/tkio/vuaYB3a'
--bid.淘集集.url.iPhone19='http://uri6.com/tkio/3eUVjqa'
--bid.淘集集.url.iPhone20='http://uri6.com/tkio/3eUVjqa'
--bid.淘集集.url.wx4='http://uri6.com/tkio/3eUVjqa'

			
bid.集享联盟 = {
				['appbid']='com.maxxipoint.ios',
				['url']='https://event.maxxipoint.com/event/h5DownloadApp.do?activityId=32'
			}

screen.init(0)
var = {}
var.lun = 0
--全局变量


function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

--openUrl("https://m.weibo.cn/status/4258678762614093?wm=3333_2001&from=1087093010&sourcetype=weixin&featurecode=newtitle")
--os.exit()


web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}
web['ios10链接打开成功']={{{ 63, 176, 0xff6632},{187, 185, 0xff6632},{ 49, 233, 0xfff8ff},{207, 339, 0xff6632},}, 85, 17, 88, 403, 599}
function open(urls)
	openUrl(urls)
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1) or d(web['ios10链接打开成功'],"web['ios10链接打开成功']",false) then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
end

--open(bid['淘集集']['url'][device.name()])
--XXTfakerNewPhone(bid.淘集集.appbid)
--os.exit()
apptjj = {}
apptjj.存入账户 = {{{284, 902, 0xf8411c},{ 68, 872, 0xfe6230},{ 69, 931, 0xff6232},{582, 934, 0xed1500},{588, 944, 0xffffff},}, 85, 45, 851, 602, 958}
apptjj.选择其他登录方式 = {{{283, 434, 0x59b7f3},{419, 435, 0x179aee},{152, 280, 0x4ad70e},{494, 327, 0x3dc003},}, 85, 122, 250, 544, 492}
apptjj.选择手机号登录 = {{{ 76,  934, 0x404040},{102, 1027, 0xe0e0e0},{601,  838, 0x818181},{601,  837, 0xdedede},{224,  838, 0xe3e3e3},}, 85, 9, 813, 639, 1082}
apptjj.手机号登录界面 = {{{213,  71, 0x333333},{503, 328, 0xffb9a0},{605, 369, 0xffb9a0},{ 36, 560, 0xff6834},{602, 630, 0xf24c3e},}, 85, 25, 43, 628, 654}
apptjj.点击获取验证码 = {{{504, 327, 0xff845a},{532, 339, 0xff9773},{576, 358, 0xffa88a},{605, 366, 0xff6733},}, 85, 494, 306, 622, 398}
apptjj.点击登陆 = {{{291, 581, 0xf7401b},{ 36, 558, 0xffb49c},{592, 627, 0xee1601},{605, 632, 0xffffff},}, 85, 28, 549, 618, 642}
apptjj.正在获取验证码 = {{{504, 327, 0xadadad},{605, 328, 0xd0d0d0},{603, 371, 0xadadad},}, 85, 497, 318, 618, 381}
apptjj['ios10选择手机号登录'] = {{{ 28, 935, 0x515151},{ 30, 954, 0x757575},{613, 942, 0xbebebe},}, 85, 23, 912, 629, 985}


apptjj.我的界面 = {{{538, 1084, 0xd8d8d8},{531, 1057, 0xd8d8d8},{323, 1062, 0xd8d8d8},{100, 1073, 0xff6431},}, 85, 70, 1042, 591, 1133}
apptjj.我的界面_资产十元 = {{{ 39, 238, 0xff8f46},{601, 348, 0xf73716},{ 76, 261, 0xffc9a8},{124, 317, 0xffebe0},}, 85, 26, 229, 619, 363}
function newidfa()
	取号 = true
	验证码 = false
	取短信 = false
	提交 = false
	success = false
	timeline = os.time()
	outtime = rd(150,200)
	if XXTfakerNewPhone(bid.淘集集.appbid) then
		idfa = XXTfakerGetinfo(bid.淘集集.appbid)['IDFA']
		while os.time() - timeline < outtime do
			if active(bid.淘集集.appbid) then
				if 取号 then
					if d(apptjj.存入账户,"apptjj.存入账户",true) then	
					elseif d(apptjj.选择其他登录方式,"apptjj.选择其他登录方式",true) then	
					elseif d(apptjj.选择手机号登录,"apptjj.选择手机号登录",true) or d(apptjj['ios10选择手机号登录'],"apptjj['ios10选择手机号登录']",true) then	
						if d(apptjj.手机号登录界面,"apptjj.手机号登录界面") then	
							delay(3)
							if GET_Phone() then
								click(132,240)
								input(phone)
								取号 = false
								验证码 = true
							end	
						end
					end
				elseif 验证码 then
					delay(3)
					if d(apptjj.点击获取验证码,"apptjj.点击获取验证码",true) then
					elseif d(apptjj.正在获取验证码,"apptjj.正在获取验证码",true) then
						验证码 = false
						取短信 = true
					end
				elseif 取短信 then
					if GET_message(phone) then
						delay(3)
						click(140,354)
						input(sms)
						取短信 = false
						提交 = true
					end
				elseif 提交 then
					if d(apptjj.点击登陆,"apptjj.点击登陆",true) then
						up(appname(bid.淘集集.appbid),'注册提交')
						提交 = false
						success = true
					end	
				elseif success then	
					delay(3)
					if d(apptjj.我的界面,"apptjj.我的界面",true) then
					elseif d(apptjj.我的界面_资产十元,"apptjj.我的界面_资产十元",true) then
						up(appname(bid.淘集集.appbid),bid['淘集集']['url'][device.name()])
						delay(rd(25,35))
						return true
						
					end
				end
			end
			delay(2)
		end
	end
end






kfy.id = '14294'
--[[]]
while true do
	if vpn() then
		if open(bid['淘集集']['url'][device.name()])then
			newidfa()
		end
		closeX(bid.淘集集.appbid)
	end
	vpnx()
	delay(rd(1,3))
end
--]]
