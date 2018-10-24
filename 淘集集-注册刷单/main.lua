nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
require('name')
--xui.show("xui-sub")


left = 40.0102612206
righ = 116.2188720703


left2 = 39.8066898614
right2 = 116.6226196289

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
bid.淘集集刷单 = {
				['appbid']='com.huanshou.taojiji',
		}
			
bid.淘集集刷单.url = {}
bid.淘集集刷单.url.AAAAAAAA='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['xxt-5s']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone11']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone18']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone20']='http://uri6.com/tkio/3eUVjqa'


bid.淘集集刷单.url['iPhone12']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone13']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone14']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone15']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone17']='http://uri6.com/tkio/vuaYB3a'
--bid.淘集集刷单.url['张德shuai']='http://uri6.com/tkio/vuaYB3a'
--bid.淘集集刷单.url['iPhone16']='http://uri6.com/tkio/vuaYB3a'
--bid.淘集集刷单.url['iPhone11']='http://uri6.com/tkio/vuaYB3a'
--bid.淘集集刷单.url['iPhone12']='http://uri6.com/tkio/vuaYB3a'



screen.init(0)
var = {}
var.lun = 0
var.phonename = device.name()
var.phoneimei = sys.mgcopyanswer("SerialNumber")
var.tag = 'A10-20'
var.phone = phone
var.pwd = pwd
var.bank = nil
var.bankphone = nil
var.address = nil
var.money = nil
var.pay = nil



--全局变量
function up_wenfree()
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = var.phonename or device.name()
	idfalist.phoneimei = var.phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = ip or get_ip() or  '192.168.1.1'
	idfalist.account = var.account
	idfalist.pwd = var.pwd
	idfalist.phone = var.phone
	idfalist.money = var.money
	idfalist.pay = var.pay
	return post(url,idfalist)
end

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
	idfalist.account = account or bid['淘集集刷单']['url'][device.name()]
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

function lastlocal()
	地址 = getlocal()
	last = string.split(地址.regeocode.formatted_address,"区")
	log(last[#last]..math.random(1,5).."号街"..math.random(1,10).."号楼")
	return last[#last]..math.random(1,5).."号街"..math.random(1,10).."号楼"
end

--openUrl("https://m.weibo.cn/status/4258678762614093?wm=3333_2001&from=1087093010&sourcetype=weixin&featurecode=newtitle")
--os.exit()


web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}
web['ios10链接打开成功']={{{ 63, 176, 0xff6632},{187, 185, 0xff6632},{ 49, 233, 0xfff8ff},{207, 339, 0xff6632},}, 85, 17, 88, 403, 599}
function open(urls)
	if XXTfakerNewPhone('com.apple.mobilesafari') then
		delay(1)
		openUrl(urls)
	end	
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

--open(bid['淘集集刷单']['url'][device.name()])
--XXTfakerNewPhone(bid.淘集集刷单.appbid)
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
	
	if XXTfakerNewPhone(bid.淘集集刷单.appbid) then
		idfa = XXTfakerGetinfo(bid.淘集集刷单.appbid)['IDFA']
		while os.time() - timeline < outtime do
			if active(bid.淘集集刷单.appbid) then
				if d(apptjj.要后退,"apptjj.要后退",true)then
				elseif success and d(apptjj.app主界面,"apptjj.app主界面") then
					up("淘集集刷单",'注册完成')	
--					dialog("注册完成")
--					os.exit()
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
						up(appname(bid.淘集集刷单.appbid),'淘集集刷单号')
						success = true
						delay(1)
					end	
--				elseif success then
--					delay(3)
--					if d(apptjj.我的界面,"apptjj.我的界面",true) then
--					elseif d(apptjj.我的界面_资产十元,"apptjj.我的界面_资产十元",true) then
--						up(appname(bid.淘集集刷单.appbid),bid['淘集集刷单']['url'][device.name()])
--						delay(rd(25,35))
--						return true
						
--					end
				end
			end
			delay(1)
		end
	end
end


buy = {}
buy.首页 = {{{ 25, 1055, 0xfdfdfd},{101, 1066, 0xff622f},{321, 1063, 0xd8d8d8},{536, 1088, 0xd8d8d8},{597, 1116, 0xfefefe},}, 85, 14, 1046, 614, 1135}
buy.首页_去购买 = {{{473, 379, 0xff7e31},{474, 419, 0xff8031},{618, 378, 0xf73b18},{616, 416, 0xf53b18},}, 85, 465, 388, 627, 1034}
buy.购物界面 = {{{140, 1064, 0xff5a32},{140, 1130, 0xff5a32},{628, 1069, 0xff5a32},{625, 1123, 0xff5a32},{ 53,   81, 0xffffff},{ 44,   99, 0xffffff},}, 85, 0, 0, 0, 0}
buy.选择规格界面 = {{{615,  328, 0xa2a2a0},{597,  329, 0xa2a2a1},{ 49, 1042, 0xff6331},{ 47, 1107, 0xfe6430},{595, 1045, 0xed1401},{594, 1105, 0xee1701},}, 85, 14, 315, 624, 1129}
	buy.选择规格界面_色 = {{{67, 588, 0xf6f6f6},{28, 589, 0xf6f6f6},{39, 567, 0xf6f6f6},{51, 610, 0xf6f6f6},}, 85, 17, 484, 209, 698}
	buy.选择规格界面_数量 = {{{64, 795, 0xf6f6f6},{32, 797, 0xf6f6f6},{61, 770, 0xf6f6f6},{61, 813, 0xf6f6f6},}, 85, 17, 712, 253, 842}
	buy.选择规格界面_确定 = {{{319, 1071, 0xf83d19},{333, 1062, 0xfeddd7},{305, 1037, 0xf73e18},}, 85, 257, 997, 370, 1126}
buy.选择规格界面_挑选种类 = {{{ 29, 572, 0xf6f6f6},{ 30, 608, 0xf6f6f6},{113, 573, 0xf6f6f6},{112, 605, 0xf6f6f6},}, 85, 7, 311, 636, 1014}
--buy.选择规格界面_挑选种类 = {{{ 31, 572, 0xff6632},{ 35, 599, 0xff6632},{104, 578, 0xff6632},{111, 606, 0xff6632},}, 85, 19, 526, 486, 767}
buy.购物车界面 = {{{268, 69, 0x515151},{268, 99, 0x4d4d4d},{357, 99, 0x767676},{370, 91, 0x4c4c4c},{370, 72, 0x929292},{370, 71, 0xffffff},}, 85, 255, 55, 385, 111}
buy.购物车界面_收货地址空 = {{{138, 204, 0xef0f0f},{157, 202, 0xee0101},{313, 207, 0xf34444},{509, 208, 0xee0000},}, 85, 106, 146, 559, 267}

buy.收货信息界面 = {{{229, 71, 0x464646},{236, 98, 0x969696},{264, 98, 0x404040},{361, 96, 0x2b2b2b},{361, 97, 0xeaeaea},{347, 68, 0xb9b9b9},}, 85, 220, 64, 369, 104}
buy.收货信息界面_新增地址 = {{{ 65, 1032, 0xff7d30},{ 73, 1095, 0xfd7c30},{583, 1041, 0xf43d18},{577, 1089, 0xf73c17},{291,  398, 0xffd6a6},{304,  469, 0xffb56b},}, 85, 41, 344, 619, 1110}

buy.新增地址界面 = {{{233, 68, 0x5e5e5e},{228, 97, 0x2a2a2a},{254, 99, 0x8c8c8c},{362, 97, 0x939393},{352, 68, 0xa9a9a9},}, 85, 219, 55, 368, 106}
buy.新增地址界面_输入姓名 = {{{509, 156, 0xbfbfbe},{509, 172, 0x9b9b99},{612, 157, 0x9b9b99},{613, 172, 0x9b9b99},}, 85, 503, 146, 620, 180}
buy.新增地址界面_输入电话 = {{{465, 235, 0xb2b2b0},{489, 247, 0xbbbbba},{615, 245, 0xa4a4a3},{612, 233, 0x9b9b99},}, 85, 458, 225, 624, 258}
buy.新增地址界面_选择地区 = {{{429, 311, 0xaeaeac},{443, 328, 0xadadab},{579, 310, 0x9b9b99},{581, 327, 0xa7a7a5},}, 85, 422, 292, 622, 340}
buy.新增地址界面_选择地区_确定和取消 = {{{562, 659, 0x000000},{610, 660, 0x000000},{ 25, 658, 0x0d0d0d},{ 41, 686, 0x585858},}, 85, 18, 648, 622, 700}
buy.新增地址界面_输入详细地址 = {{{ 27, 384, 0xa9a9a9},{ 61, 391, 0xd3d3d3},{155, 399, 0xa9a9a9},{318, 397, 0xababab},}, 85, 16, 372, 335, 408}
buy.新增地址界面_保存 = {{{556, 74, 0x3b3b3b},{554, 81, 0x363636},{589, 88, 0x212121},{593, 76, 0x1a1a1a},}, 85, 541, 64, 603, 101}
buy.返回箭头 = {{{60, 70, 0x333333},{48, 83, 0x373737},{60, 98, 0x333333},{56, 99, 0xffffff},}, 85, 31, 55, 79, 105}

buy.提现界面 = {{{291, 68, 0x787878},{287, 98, 0x8a8a8a},{316, 96, 0x858585},{322, 70, 0x999999},{349, 70, 0x505050},{350, 92, 0xaeaeae},{350, 91, 0xffffff},}, 85, 284, 64, 355, 101}

function buys()

	滑动次数 = rd(2,10)
	第一次滑动 = true
	
	while true do
		if active(bid.淘集集刷单.appbid) then
			if d(buy.首页,"buy.首页",false) then
				if 第一次滑动  then
					for i=1,滑动次数 do
						moveTo(268,618,268,300,20)
					end
					第一次滑动 = false
				elseif d(buy.首页_去购买,"buy.首页_去购买",true) then
					for i=1,rd(3,4) do
						moveTo(268,618,300,374)
					end
				end
			elseif d(buy.购物界面,"buy.购物界面",true) then
			elseif d(buy.选择规格界面,"buy.选择规格界面",false) then
			
				d(buy.选择规格界面_确定,"选择规格界面_确定",true)
				click(rd(43,226),rd(578,637))
				click(57, 790)
				d(buy.选择规格界面_确定,"选择规格界面_确定",true)
				delay(5)
			
			elseif d(buy.购物车界面,"buy.购物车界面",false) then
				if d(buy.购物车界面_收货地址空,"buy.购物车界面_收货地址空",true) then
					
				end
			elseif d(buy.收货信息界面,"buy.收货信息界面",false) then
				if d(buy.收货信息界面_新增地址,"buy.收货信息界面_新增地址",true) then
				else
					d(buy.返回箭头,"buy.返回箭头",true) 
				end
			elseif d(buy.新增地址界面,"buy.新增地址界面",false) then
				if d(buy.新增地址界面_选择地区,"buy.新增地址界面_选择地区",true) then
					if d(buy.新增地址界面_选择地区_确定和取消,"buy.新增地址界面_选择地区_确定和取消",false) then
						v = rd(1,9)
						v1 = rd(1,4)
						for i =1,v do
							click(112,958)
						end	
						for i= 1,v1 do
							click(322,970)
						end	
						d(buy.新增地址界面_选择地区_确定和取消,"buy.新增地址界面_选择地区_确定和取消",true)
					end	
					delay(1)
				elseif d(buy.新增地址界面_输入姓名,"buy.新增地址界面_输入姓名",true) then
					input(random_name())
				elseif d(buy.新增地址界面_输入电话,"buy.新增地址界面_输入电话",true) then
					input(myRand(2))
				elseif d(buy.新增地址界面_输入详细地址,"buy.新增地址界面_输入详细地址",true) then
					input(lastlocal())
				else
					d(buy.新增地址界面_保存,"buy.新增地址界面_保存",true)
				end
			else
				d(buy.返回箭头,"buy.返回箭头",true) 
			end	
		end
		delay(2)
	end	
end

buys()
os.exit()

vpnx()
delay(3)


kfy.id = '14294'
--[[]]

while true do
	if vpn() then
		if open(bid['淘集集刷单']['url'][device.name()])then
			if newidfa() then
				buys()
			end	
		end
--		closeX(bid.淘集集刷单.appbid)
	end
--	vpnx()
	delay(5)
end
----]]

























