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

phonekeyArr = {
	{104,  760, 0xffffff},
	{317,  768, 0xffffff},
	{526,  755, 0xffffff},
	{112,  866, 0xffffff},
	{330,  869, 0x696969},
	{522,  874, 0xffffff},
	{115,  977, 0xffffff},
	{322,  978, 0x000000},
	{544,  962, 0x000000},
	[0]={316, 1081, 0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(phonekeyArr[phone_mun][1],phonekeyArr[phone_mun][2],0.3)
	end
end

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

bid={}
bid.支付宝 = "com.alipay.iphoneclient"
bid.淘集集刷单 = {
				['appbid']='com.huanshou.taojiji',
		}
			
bid.淘集集刷单.url = {}
bid.淘集集刷单.url['xxt-5s']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone11']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone15']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone18']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone19']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone20']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone01']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone02']='http://uri6.com/tkio/3eUVjqa'
bid.淘集集刷单.url['iPhone06']='http://uri6.com/tkio/3eUVjqa'



bid.淘集集刷单.url['iPhone12']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone13']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone14']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone10']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone17']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['张德shuai']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone03']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone04']='http://uri6.com/tkio/vuaYB3a'
bid.淘集集刷单.url['iPhone05']='http://uri6.com/tkio/vuaYB3a'



screen.init(0)
var = {}
var.lun = 0
var.phonename = device.name()
var.phoneimei = sys.mgcopyanswer("SerialNumber")
var.tag = 'A10-20'
var.phone = phone
var.pwd = "520000"
var.bank = nil
var.bankphone = nil
var.address = nil
var.money = nil
var.pay = nil
var.sheng = 0
var.diqu = 0



--全局变量


function checkip()
	ip = get_ip() or "192.168.1.1"
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.checkip&ip='..ip
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("ip可以用:OK.",true)
			return true
		else
			log("ip, 排重失败",true)
		end
	end
end

function up_wenfree()
	local url = 'http://wenfree.cn/api/Public/user/?service=Tjj.paystate'
	local idfalist ={}
	idfalist.phonename = var.phonename or device.name()
	idfalist.imei = var.phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.name = var.id or var.name
	idfalist.idfa = idfa or phone
	idfalist.ip = ip or get_ip() or  '192.168.1.1'
	idfalist.account = var.account or phone
	idfalist.pwd = var.pwd
--	idfalist.tag = tagtb[var.phonename]
	idfalist.phone = phone
	idfalist.bank = var.sheng.."-"..var.diqu
	idfalist.bankphone = var.phone
	idfalist.address = var.area
	idfalist.money = var.money
	idfalist.pay = var.pay
	idfalist.whos = "ym"
	log(idfalist)
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
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or bid['淘集集刷单']['url'][device.name()]
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function get_wenfree_address()
	local url = "http://wenfree.cn/api/Public/tjj/?service=Address.getOne"
	local address = {}
	return post(url,address)
end


function get_address()
	 address = get_wenfree_address()

	if address ~= nil then
		address = json.decode(address)
		log(address)
		var.id = address.data.id 
		var.name =	address.data.address_name
		var.phone =	address.data.address_phone
		var.sheng =	address.data.address_sheng
		var.shi =	address.data.address_shi
		var.qu =	address.data.address_qu
		var.area =	address.data.address_area
		var.note =	address.data.note
	end
end


function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

function lastlocal()
	local 地址 = getlocal()
	if 地址 ~= nil then
		last = string.split(地址.regeocode.formatted_address,"区")
		log(last[#last]..math.random(1,5).."号街"..math.random(1,10).."号楼")
		return last[#last]..math.random(1,5).."号街"..math.random(1,10).."号楼"
	else
		return math.random(1,5).."号街"..math.random(1,10).."号楼"
	end
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
apptjj.提现红包 = {{{489, 799, 0xfecd99},{363, 797, 0xa05900},{436, 878, 0xec3433},{548, 882, 0xf6acad},{546, 428, 0xfff9ed},}, 85, 55, 783, 594, 986}
apptjj.选择其他登录方式 = {{{283, 434, 0x59b7f3},{419, 435, 0x179aee},{152, 280, 0x4ad70e},{494, 327, 0x3dc003},}, 85, 122, 250, 544, 492}
apptjj.选择手机号登录 = {{{ 76,  934, 0x404040},{102, 1027, 0xe0e0e0},{601,  838, 0x818181},{601,  837, 0xdedede},{224,  838, 0xe3e3e3},}, 85, 9, 813, 639, 1082}
apptjj.手机号登录界面 ={{
	{ 44, 84, 0x333333},
	{365, 83, 0xfbfbfb},
	{365, 81, 0x191919},
	{369, 74, 0xfcfcfc},
	{369, 76, 0x191919},
}, 85}
apptjj.点击获取验证码 = {{{504, 327, 0xff845a},{532, 339, 0xff9773},{576, 358, 0xffa88a},{605, 366, 0xff6733},}, 85, 494, 306, 622, 398}
apptjj.点击登陆 = {{{291, 581, 0xf7401b},{ 36, 558, 0xffb49c},{592, 627, 0xee1601},{605, 632, 0xffffff},}, 85, 28, 549, 618, 642}
apptjj.正在获取验证码 = {{{504, 327, 0xadadad},{605, 328, 0xd0d0d0},{603, 371, 0xadadad},}, 85, 497, 318, 618, 381}
apptjj['ios10选择手机号登录'] = {{{ 28, 935, 0x515151},{ 30, 954, 0x757575},{613, 942, 0xbebebe},}, 85, 23, 912, 629, 985}
apptjj.请输入手机号 = {{{101, 239, 0xa6a6a6},{ 37, 231, 0xededed},{ 39, 254, 0xd1d1d1},{191, 255, 0xdbdbdb},{194, 231, 0xe9e9e9},}, 85, 30, 220, 212, 266}
apptjj.请输入验证码 = {{{138, 354, 0x999999},{ 37, 341, 0xededed},{ 39, 364, 0xd1d1d1},{251, 342, 0x999999},{250, 365, 0xe4e4e4},}, 85, 27, 322, 277, 368}

apptjj.我的界面 = {{{538, 1084, 0xd8d8d8},{531, 1057, 0xd8d8d8},{323, 1062, 0xd8d8d8},{100, 1073, 0xff6431},}, 85, 70, 1042, 591, 1133}
apptjj.我的界面_资产十元 = {{{ 39, 238, 0xff8f46},{601, 348, 0xf73716},{ 76, 261, 0xffc9a8},{124, 317, 0xffebe0},}, 85, 26, 229, 619, 363}

apptjj.app主界面={{{ 54, 1079, 0xff6832},{ 49, 1122, 0xff6632},{189, 1072, 0xffffff},{202, 1121, 0x999999},}, 85, 33, 1056, 224, 1130}
apptjj.要后退={{{ 47, 83, 0x333333},{121, 84, 0xffffff},{125, 84, 0x373737},{153, 85, 0x373737},}, 85, 19, 46, 182, 119}

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
				if success and d(apptjj.app主界面,"apptjj.app主界面") then
					up("淘集集刷单",'注册完成')	
					return true
--				elseif d(apptjj.app主界面,"apptjj.app主界面") then	
--					click(185,1086)
				elseif d(apptjj.存入账户,"apptjj.存入账户",true) then	
				elseif d(apptjj.提现红包,"apptjj.提现红包",true) then	
				elseif d(apptjj.选择其他登录方式,"apptjj.选择其他登录方式",true) then	
				elseif d(apptjj.选择手机号登录,"apptjj.选择手机号登录",true) or d(apptjj['ios10选择手机号登录'],"apptjj['ios10选择手机号登录']",true) then	
				elseif d(apptjj.手机号登录界面,"apptjj.手机号登录界面") then
					if 取号 then
						if GET_Phone() then
							click(122,248)
							delay(2)
							input(phone)
							取号 = false
							验证码 = true
								
						end
					elseif 验证码 then
						if d(apptjj.点击获取验证码,"apptjj.点击获取验证码",true) then
							验证码 = false
							取短信 = true
						end
					elseif 取短信 then
						if GET_message(phone) then
							delay(1)
							click(157,359)
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
					end
				elseif success and d(apptjj.要后退,"apptjj.要后退",true) then
					
				end
				
			end
			delay(1)
		end
	end
end


buy = {}
buy.首页 = {{{ 54, 1079, 0xff6832},{ 49, 1122, 0xff6632},{189, 1072, 0xffffff},{202, 1121, 0x999999},}, 85, 33, 1056, 224, 1130}
buy.首页_去购买 = {{{473, 379, 0xff7e31},{474, 419, 0xff8031},{618, 378, 0xf73b18},{616, 416, 0xf53b18},}, 85, 465, 450, 627, 1034}
buy.购物界面 = {{
	{460, 1101, 0xff5a32},
	{191, 1095, 0xffa14d},
	{398, 1060, 0xffa14d},
	{412, 1060, 0xff5a32},
}, 85}
buy.选择规格界面 = {{{615,  328, 0xa2a2a0},{597,  329, 0xa2a2a1},{ 49, 1042, 0xff6331},{ 47, 1107, 0xfe6430},{595, 1045, 0xed1401},{594, 1105, 0xee1701},}, 85, 14, 315, 624, 1129}
	buy.选择规格界面_色 = {
		{{71, 586, 0xf6f6f6},{20, 565, 0xffffff},{20, 615, 0xffffff},{23, 615, 0xf6f6f6},{25, 586, 0xf6f6f6},{116, 590, 0xf6f6f6},},
		100, 10, 497, 141, 825
		}
	buy.选择规格界面_数量 = {{{64, 795, 0xf6f6f6},{32, 797, 0xf6f6f6},{61, 770, 0xf6f6f6},{61, 813, 0xf6f6f6},}, 85, 17, 712, 253, 842}
	buy.选择规格界面_确定 = {{{319, 1071, 0xf83d19},{333, 1062, 0xfeddd7},{305, 1037, 0xf73e18},}, 85, 257, 997, 370, 1126}
	
buy.选择规格界面_挑选种类 = {{{ 29, 572, 0xf6f6f6},{ 30, 608, 0xf6f6f6},{113, 573, 0xf6f6f6},{112, 605, 0xf6f6f6},}, 85, 7, 311, 636, 1014}
--buy.选择规格界面_挑选种类 = {{{ 31, 572, 0xff6632},{ 35, 599, 0xff6632},{104, 578, 0xff6632},{111, 606, 0xff6632},}, 85, 19, 526, 486, 767}
buy.购物车界面 = {{{268, 69, 0x515151},{268, 99, 0x4d4d4d},{357, 99, 0x767676},{370, 91, 0x4c4c4c},{370, 72, 0x929292},{370, 71, 0xffffff},}, 85, 255, 55, 385, 111}
	buy.购物车界面_收货地址空 = {{{138, 204, 0xef0f0f},{157, 202, 0xee0101},{313, 207, 0xf34444},{509, 208, 0xee0000},}, 85, 106, 146, 559, 267}
	buy.购物车界面_微信支付 = {{{448, 752, 0xffffff},{456, 738, 0x47d547},{440, 755, 0x47d547},{463, 760, 0x47d547},{576, 746, 0x333333},}, 85, 386, 589, 638, 1019}
	buy.购物车界面_支付宝_提交订单 = {{{565, 1070, 0xf0260b},{465,  771, 0x02a9f1},{577,  683, 0x333333},{608,  676, 0xa8a8a8},}, 85, 413, 612, 619, 1133}

buy.收货信息界面 = {{{229, 71, 0x464646},{236, 98, 0x969696},{264, 98, 0x404040},{361, 96, 0x2b2b2b},{361, 97, 0xeaeaea},{347, 68, 0xb9b9b9},}, 85, 220, 64, 369, 104}
buy.收货信息界面_新增地址 = {{{ 65, 1032, 0xff7d30},{ 73, 1095, 0xfd7c30},{583, 1041, 0xf43d18},{577, 1089, 0xf73c17},{291,  398, 0xffd6a6},{304,  469, 0xffb56b},}, 85, 41, 344, 619, 1110}

buy.新增地址界面 = {{{233, 68, 0x5e5e5e},{228, 97, 0x2a2a2a},{254, 99, 0x8c8c8c},{362, 97, 0x939393},{352, 68, 0xa9a9a9},}, 85, 219, 55, 368, 106}
buy.新增地址界面_输入姓名 = {{{509, 156, 0xbfbfbe},{509, 172, 0x9b9b99},{612, 157, 0x9b9b99},{613, 172, 0x9b9b99},}, 85, 503, 146, 620, 180}
buy.新增地址界面_输入电话 = {{{465, 235, 0xb2b2b0},{489, 247, 0xbbbbba},{615, 245, 0xa4a4a3},{612, 233, 0x9b9b99},}, 85, 458, 225, 624, 258}
buy.新增地址界面_选择地区 = {{{429, 311, 0xaeaeac},{443, 328, 0xadadab},{579, 310, 0x9b9b99},{581, 327, 0xa7a7a5},}, 85, 422, 292, 622, 340}
buy.新增地址界面_选择地区_确定和取消 = {{{562, 659, 0x000000},{610, 660, 0x000000},{ 25, 658, 0x0d0d0d},{ 41, 686, 0x585858},}, 85, 18, 648, 622, 700}
buy.新增地址界面_输入详细地址 = {{{ 27, 384, 0xa9a9a9},{ 61, 391, 0xd3d3d3},{155, 399, 0xa9a9a9},{318, 397, 0xababab},}, 85, 16, 372, 335, 408}
buy.新增地址界面_保存 = {{{556, 74, 0x3b3b3b},{554, 81, 0x363636},{589, 88, 0x212121},{593, 76, 0x1a1a1a},}, 85, 541, 64, 603, 101}

buy.返回箭头 = {{{45,  83, 0x333333},{57,  67, 0xd1d1d1},{57, 100, 0xb8b8b8},}, 85, 38, 60, 77, 107}
buy.新人特价返回箭头 = {{{ 48,  84, 0x3a3a3a},{120,  80, 0x979797},{158,  80, 0xb3b3b3},{124, 101, 0xb8b8b8},{154, 101, 0xcdcdcd},{552,  86, 0xd6d6d6},}, 85, 35, 62, 582, 105}
buy.搜索界面 = {{{ 42, 70, 0x9f9f9d},{ 42, 93, 0xc4c4c3},{559, 74, 0xafafaf},{559, 92, 0x9c9c9c},{567, 95, 0xbebebe},{580, 93, 0x838383},}, 85, 32, 65, 583, 101}
	buy.搜索界面_有结果 = {{{21, 612, 0xee0000},{32, 613, 0xffffff},{21, 615, 0xee0000},}, 85, 4, 138, 608, 962}
	buy.搜索界面_加载中 = {{{300, 653, 0x313131},{301, 610, 0x313131},{349, 638, 0x313131},}, 85, 280, 590, 370, 683}
	buy.搜索界面_加载中1 = {{{291, 700, 0x010101},{291, 737, 0x010101},{345, 736, 0x010101},}, 85, 253, 660, 370, 777}
buy.提现界面 = {{{291, 68, 0x787878},{287, 98, 0x8a8a8a},{316, 96, 0x858585},{322, 70, 0x999999},{349, 70, 0x505050},{350, 92, 0xaeaeae},{350, 91, 0xffffff},}, 85, 284, 64, 355, 101}

-----tips---------
buy.tips_选择支付方式={{{ 47,  948, 0x02a9f1},{ 53,  854, 0x47d547},{275, 1079, 0xfe6932},}, 85, 17, 772, 634, 1132}
buy.tips_支付成功={{
	{187, 763, 0xfec994},
	{459, 760, 0xfecb96},
	{174, 594, 0xe94447},
	{477, 602, 0xe94245},
	{319, 500, 0xf0b16d},
	{337, 571, 0xfee78f},
}, 85}
buy.tips_支付成功1={{{467, 917, 0xfec994},{543, 812, 0xff6559},{ 89, 817, 0xfe6358},{207, 902, 0xad6914},{305, 900, 0xb06d1a},}, 85, 55, 783, 594, 986}
buy.tips_确定要放弃吗={{{522, 667, 0xff6632},{375, 660, 0xff6733},{242, 677, 0x333333},}, 85}
-------支付宝界面--------------
buy.支付宝_立即支付={{{168, 1061, 0x108ae3},{469, 1069, 0x108ae3},{257,  382, 0x108ae3},{241,  372, 0xf7f7f8},{ 73,   93, 0x222c3e},}, 85, 0, 0, 0, 0}
buy.支付宝_请输入支付密码={{
	{423, 382, 0x010102},
	{426, 382, 0xf7f7f8},
	{428, 382, 0x010102},
	{536, 184, 0x222c3e},
	{ 41, 381, 0x949595},
}, 85}
buy.支付宝_重试={{{447, 626, 0x108ee9},{435, 637, 0x108ee9},{212, 622, 0x000000},{153, 617, 0x010101},{130, 635, 0xffffff},{373, 630, 0xffffff},}, 85, 50, 478, 572, 697}
buy.支付宝_重新连接={{{446, 677, 0x108ee9},{521, 670, 0x51adef},{199, 677, 0x000000},}, 85}

指定物品list = {
	"七星莲花水晶玻璃酥油灯灯座",
--	"加持酥油蜡烛24小时酥油灯斗",
	"6只装4小时彩色无烟香薰蜡烛煮茶蜡",
	"纯天然老山檀香塔香香薰印度香熏70粒",
--	"加持108颗佛珠手链新款民族风饰品手工原创五色佛珠檀香木",
	"高温塑料防风杯酥油灯造型塑料杯防风阻燃200个",
--	"包邮檀香盘香老山檀香线香卧香纯天然香薰香佛像檀香供香",
	"七彩梅花粒",
	"克多多多彩iPhone6保护套2017",
--	"克多多多彩手机壳iPhone6保护套1109",
--	"克多多多彩壳硅胶抖音潮牌网红3017",
	"克多多多彩手机壳1227软壳女P清新创意套抖音潮牌网红",
--	"苹果6splus手机壳iPhone6保护套6-6s-7-8-plus硅胶防摔全包超薄",
	"大促iPhone硅胶防摔清新创意套抖音潮牌网红",
	"苹果6splus手机壳iPhone6保护套6-6s硅胶防摔全包超薄",
	"iPhone硅胶防摔全包超薄软壳女P清新创意套抖音潮牌网红",
	
	
	
	
	
	
	
	}

随机廉价物品list = {
	"3条装安卓快充数据线oppo手机充电器线vivo红米充电2A通用",
	"买二送一一擦即亮无色亮鞋护鞋海绵鞋蜡鞋擦皮鞋保养双面海绵",
	"1-3瓶装搓泥宝去死皮全身去角质搓澡泥搓泥浴宝搓泥宝贝",
--	"黛丽塔油烟净",
	"5条装纯棉毛巾成人洗脸 家用柔软吸水厚好回礼品全棉面巾",
	"快充安卓数据线oppo手机充电器线vivo红米充电线通用",
	}


测试list = {
	"私处护理28抽",
	"桌面抽纸盒家用客厅简约塑料收纳盒",
	"整理盒桌面置物架特大号化妆收纳架",
	"毛巾衣服衣物的袋子卡通鞋子收纳袋",
	"防尘防水加厚防潮大号行李袋整理袋子",
	"创意升降式塑料纸巾盒客厅茶几抽纸盒",
	"家用客厅塑料化妆品梳妆台多功能收纳",
	"三连旋转挂钩强力浴室墙壁置物架免打孔无痕粘钩",
	"创意挂钩强力粘胶毛巾挂架浴室墙壁置物",
	"卫生间厕纸盒免打孔防水厕所置物架抽纸盒卫生纸创意卷纸架纸巾盒",
	"创意旅游情侣漱口杯套装盒",
	

}






function buys()

	滑动次数 = rd(2,8)
	第一次滑动 = true
	buyway = 1
	买第几个 = rd(1,8)
	
	while true do
		newbid = app.front_bid()
		if newbid == bid.淘集集刷单.appbid or newbid == bid.支付宝 then
			if d(buy.首页,"buy.首页",false) then
				if  buyway == 1 then
					--直接搜索
					click(330, 93)	
				else
					if 第一次滑动  then
						for i=1,滑动次数 do
							moveTo(268,618,268,300,20)
						end
						第一次滑动 = false
					elseif d(buy.首页_去购买,"buy.首页_去购买",true) then
						for i=1,rd(3,4) do
							moveTo(268,618,300,374)
						end
					else
						第一次滑动 = true
					end
				end
			elseif newbid == bid.支付宝 then
				if d(buy.支付宝_立即支付,"buy.支付宝_立即支付",false) then
					local txt = screen.ocr_text( 138, 481, 516, 612)
					var.money = txt:atrim()
--					sys.alert(txt)
					delay(1)
					d(buy.支付宝_立即支付,"buy.支付宝_立即支付",true)
				elseif d(buy.支付宝_请输入支付密码,"buy.支付宝_请输入支付密码",false) then
				
					phoneKey(var.pwd)
					var.pay = "输入密码"
					up_wenfree()
					delay(10)
				else
					if d(buy.支付宝_重试,"buy.支付宝_重试",true) then
					elseif d(buy.支付宝_重新连接,"buy.支付宝_重新连接",true)  then
					end	
				end	
			elseif d(buy.搜索界面,"buy.搜索界面",false) then
				if d(buy.搜索界面_有结果,"搜索界面_有结果",true)then
				elseif d(buy.搜索界面_加载中,"搜索界面_加载中")then
				elseif d(buy.搜索界面_加载中1,"搜索界面_加载中1")then
				
				else
					click(510, 81)
			----------------------------------选择商品-------------------------------------------
					input(测试list[rd(1,#测试list)])
--					input(随机廉价物品list[rd(1,#随机廉价物品list)])
					click(559, 1095)
				end
			elseif d(buy.购物界面,"buy.购物界面",true) then
			elseif d(buy.选择规格界面,"buy.选择规格界面",false) then
--				d(buy.选择规格界面_色,"选择规格界面_色",true)
--				d(buy.选择规格界面_色,"选择规格界面_色",true)
				click(70, 592)
				click(71, 731)
				click(324, 1077)
				delay(8)
			elseif d(buy.购物车界面,"buy.购物车界面",false) then
				if d(buy.购物车界面_收货地址空,"buy.购物车界面_收货地址空",true) then
				elseif d(buy.购物车界面_微信支付,"buy.购物车界面_微信支付",true)then
				elseif d(buy.购物车界面_支付宝_提交订单,"buy.购物车界面_支付宝_提交订单",false)then
					
					if d(buy.购物车界面_支付宝_提交订单,"buy.购物车界面_支付宝_提交订单",true)then
						var.pay = "准备付款"
						up_wenfree()
					end
				end
			elseif d(buy.收货信息界面,"buy.收货信息界面",false) then
				if d(buy.收货信息界面_新增地址,"buy.收货信息界面_新增地址",true) then
				else
					d(buy.返回箭头,"buy.返回箭头",true) 
				end
			elseif d(buy.新增地址界面,"buy.新增地址界面",false) then
				if d(buy.新增地址界面_选择地区,"buy.新增地址界面_选择地区",true) then
					if d(buy.新增地址界面_选择地区_确定和取消,"buy.新增地址界面_选择地区_确定和取消",false) then
						
						function area(left,mun)
							local keymun = tonumber(mun)
							if keymun == 0 then
								return
							end
							for i=1,keymun do
								click(left,955)
							end
						end
						
						area(111,var.sheng)
						area(319,var.shi)
						area(536,var.qu)
						
						d(buy.新增地址界面_选择地区_确定和取消,"buy.新增地址界面_选择地区_确定和取消",true)
					end	
					delay(1)
				elseif d(buy.新增地址界面_输入姓名,"buy.新增地址界面_输入姓名",true) then
--					var.name = random_name()
					input(var.name)
				elseif d(buy.新增地址界面_输入电话,"buy.新增地址界面_输入电话",true) then
--					var.phone = myRand(2)
					input(var.phone)
				elseif d(buy.新增地址界面_输入详细地址,"buy.新增地址界面_输入详细地址",true) then
--					var.address = lastlocal()
					input(var.area)
				else
					d(buy.新增地址界面_保存,"buy.新增地址界面_保存",true)
				end
			else
				if d(buy.tips_选择支付方式,"buy.tips_选择支付方式",true)then
					click(285, 1078)
				elseif d(buy.tips_支付成功1,"buy.tips_支付成功1",true) or d(buy.tips_确定要放弃吗,"buy.tips_确定要放弃吗",true) then
					var.pay = "支付成功"
					up_wenfree()
					return true
				elseif d(buy.新人特价返回箭头,"buy.新人特价返回箭头",true) then
				elseif d(buy.返回箭头,"buy.返回箭头",true) then
				end
			end
		else
			active(bid.淘集集刷单.appbid,5)
		end
		delay(2)
	end	
end

--buys()

vpnx()
delay(3)
 

kfy.id = '14294'
--[[]]

phonepwd={}
phonepwd['xxt-5s']="123124"
phonepwd['iPhone11']="123124"
phonepwd['AAAAAAAA']="123124"
phonepwd['iPhone20']="024290"
phonepwd['iPhone18']="051268"
phonepwd['iPhone10']="024290"
phonepwd['iPhone15']="123124"
phonepwd['iPhone14']="051268"
phonepwd['iPhone01']="051268"
phonepwd['iPhone02']="406810"
phonepwd['iPhone03']="406810"
phonepwd['iPhone04']="406810"


if phonepwd[device.name()] then
	var.pwd=phonepwd[device.name()]
end

--[[]]


while true do
	if vpn() then
		if checkip() then
			if open(bid['淘集集刷单']['url'][device.name()])then
				if newidfa() then
					get_address()
					buys()
				end	
			end
		end
--		closeX(bid.淘集集刷单.appbid)
	end
	vpnx()
	delay(5)
end
--]]--
































