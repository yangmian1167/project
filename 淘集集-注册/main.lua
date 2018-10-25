nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
--xui.show("xui-sub")


left = 37.6838
righ = 99.7558


left2 = 25.3638
right2 = 119.0039

function newlocation()
	newleft = math.random(math.ceil(righ*10000),math.ceil(right2*10000))
	log("newleft" .. newleft)
	newleft = newleft /10000
	newright = math.random(math.ceil(left2*10000),math.ceil(left*10000))
	log("newright" .. newright)
	newright = newright /10000
	return newleft..","..newright
end


function getlocal()
	local gdurl = 'https://restapi.amap.com/v3/geocode/regeo?parameters'
	local gd={}
	gd.key='aebbbe9fbc1ab12bdfb4bca79621f494'
	gd.location= newlocation() or "115.481488,39.990464"
	gd.poitype = '小区'
	gd.radius = 1000
	gd.extensions = "base"
	gd.batch = "false"
	gd.roadlevel=0
	
	local gdlocal = post(gdurl,gd)
	if gdlocal ~= nil then
		return json.decode(gdlocal)
	end
end


if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

bid={}
bid.淘集集注册 = {
				['appbid']='com.huanshou.taojiji',
		}
			
bid.淘集集注册.url = {}
--bid.淘集集注册.url.AAAAAAAA='http://uri6.com/tkio/3eUVjqa'
bid.淘集集注册.url['iPhone21']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集注册.url['iPhone22']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集注册.url['iPhone23']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集注册.url['iPhone24']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集注册.url['iPhone25']='http://uri6.com/tkio/3eUVjqa'


bid.淘集集注册.url['iPhone26']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集注册.url['iPhone27']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集注册.url['iPhone28']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集注册.url['iPhone29']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集注册.url['iPhone30']='http://uri6.com/tkio/vuaYB3a'







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
	idfalist.account = account or bid['淘集集注册']['url'][device.name()]
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

--open(bid['淘集集注册']['url'][device.name()])
--XXTfakerNewPhone(bid.淘集集注册.appbid)
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

apptjj.app主界面={{{103,1075,0xfd5e2d},{318,1064,0xd8d8d8},{532,1084,0xd8d8d8},},85}
apptjj.要后退={{{47,83,0x333333},{25,124,0xff6632},{131,72,0x333333},}, 85, 4, 37, 241, 189}

function newidfa()
	取号 = true
	验证码 = false
	取短信 = false
	提交 = false
	success = false
	timeline = os.time()
	outtime = rd(150,200)
	取短信次数 = 0
	
	if XXTfakerNewPhone(bid.淘集集注册.appbid) then
		idfa = XXTfakerGetinfo(bid.淘集集注册.appbid)['IDFA']
		while os.time() - timeline < outtime do
			if active(bid.淘集集注册.appbid) then
				if d(apptjj.要后退,"apptjj.要后退",true)then
				elseif success and d(apptjj.app主界面,"apptjj.app主界面")then
					up("淘集集注册",'注册完成')	
					delay(3)
					return true
					
				elseif 取号 then
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
					if d(apptjj.点击获取验证码,"apptjj.点击获取验证码",true) then
						验证码 = false
						取短信 = true
					end
				elseif 取短信 then
					if GET_message(phone) then
						delay(1)
						click(140,354)
						input(sms)
						取短信 = false
						提交 = true
					elseif d(apptjj.点击获取验证码,"apptjj.点击获取验证码",true) then
					else
						取短信次数 = 取短信次数 + 1
						if 取短信次数 > 25 then
							return false
						end
						delay(2)
					end
				elseif 提交 then
					if d(apptjj.点击登陆,"apptjj.点击登陆",true) then
						up(appname(bid.淘集集注册.appbid),'淘集集注册')
						success = true
						delay(1)
					end	
--				elseif success then
--					delay(3)
--					if d(apptjj.我的界面,"apptjj.我的界面",true) then
--					elseif d(apptjj.我的界面_资产十元,"apptjj.我的界面_资产十元",true) then
----						up(appname(bid.淘集集注册.appbid),bid['淘集集注册']['url'][device.name()])
--						delay(rd(25,35))
--						return true
						
					--end
				end
			end
			delay(1)
		end
	end
end






kfy.id = '14294'
--[[]]

while true do
	if vpn() then
		if open(bid['淘集集注册']['url'][device.name()])then
			newidfa()
		end
		closeX(bid.淘集集注册.appbid)
	end
	vpnx()
	delay(rd(4,6))
end
--]]

























