-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')
require('smdate')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

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
--[[
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
]]

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	idfalist.device =json.encode(fakerdevice) 
	log( post(url,idfalist) )
end

var = ''
appbid = 'com.ycgame.t11pub'
url = 'https://lnk0.com/Ql8QJ5?td_subid=9420001'
clickurl = {}
clickurl_打开链接 = {{{526, 631, 0x007aff},{494, 639, 0x007aff},{389, 634, 0x007aff},}, 85, 330, 604, 559, 662}
ganme = {}
ganme_tips_不允许 = {{{222, 472, 0x007aff},{225, 682, 0x077eff},{222, 729, 0x007aff},}, 85, 202, 378, 264, 747}
ganme_账号注册 = {{{101, 512, 0x2dba41},{ 90, 282, 0xd41e13},{ 92, 746, 0xffa426},}, 85, 74, 242, 123, 780}
ganme_账号注册界面 = {{{84, 873, 0x4a90e2},{44, 663, 0x4a90e2},{56, 494, 0x9b9b9b},{64, 259, 0x9b9b9b},}, 85, 28, 213, 96, 916}
ganme_注册失败 = {{{546, 940, 0xfe3233},{509, 936, 0xf9fafe},{532, 190, 0xfe3233},{497, 198, 0xf9fafe},}, 85, 469, 177, 593, 981}
ganme_完成 = {{{432, 1076, 0x007aff},{431, 1048, 0x007aff},{441, 1048, 0x007aff},}, 85, 340, 1025, 502, 1117}
ganme_进入游戏 = {{{139, 564, 0xf4b04a},{113, 481, 0xfbdd74},{126, 654, 0xf7c358},}, 85, 100, 435, 172, 741}
ganme_选择角色界面 = {{{37,  76, 0xffd973},{31,  76, 0xe09d49},{38,  57, 0xffdb75},{40, 109, 0xffdf7b},}, 85, 17, 31, 56, 121}
ganme_选择角色界面_进入游戏 = {{{105, 1002, 0xf4ad46},{ 93,  925, 0xf6b74d},{ 94, 1079, 0xf5b64d},{111, 1002, 0xf6b85a},}, 85, 69, 909, 124, 1102}
ganme_跳过= {{{617, 1091, 0xe4d2ad},{615, 1087, 0xd4c198},{619, 1087, 0xf1e4c1},}, 85, 604, 1066, 633, 1107}
ganme_热更新确定= {{{181, 630, 0xdc4837},{170, 566, 0xeb6855},}, 85, 143, 452, 217, 672}
ganme_滑动验证界面= {{{569, 961, 0xafb0b2},{563, 908, 0xffffff},{575, 230, 0xffffff},{557, 193, 0xafb0b2},{ 87, 957, 0xafb0b2},{ 63, 915, 0xffffff},}, 85, 55, 174, 607, 983}
function openU()
	local timeline = os.time()
	local outtime = 30
	openURL(url)
	delay(3)
	while os.time() - timeline < outtime do
		if d(clickurl_打开链接,'clickurl_打开链接',true) then
			delay(20)
			return true
		end
	end	
	return true
end


function reg()
	account = myRand(4,8)
	password = myRand(4,9)
	regdate = xinxi[math.random(1,#xinxi)]
	注册确认key = false
	local timeline = os.time()
	local outtime = math.random(300,360)
	while os.time() - timeline < outtime do
		if active(appbid,5) then
			if d(ganme_注册失败,'ganme_注册失败') then
				return false
			elseif d(ganme_账号注册,'ganme_账号注册',true) then
			elseif 注册确认key and d(ganme_账号注册界面,'ganme_账号注册界面',true) then
			elseif d(ganme_账号注册界面,'ganme_账号注册界面') then
				click(506,444)
				delay(2)
				input(account)
				delay(2)
				d(ganme_完成,'ganme_完成',true)
				click(401,372)
				input(password)
				delay(2)
				d(ganme_完成,'ganme_完成',true)
				click(306,506)
				input(regdate[1])
				delay(2)
				d(ganme_完成,'ganme_完成',true)
				click(206,536)
				input(regdate[2])
				delay(2)
				d(ganme_完成,'ganme_完成',true)
				click(306,506)
				click(596,866)
				input(regdate[1])
				delay(2)
				d(ganme_完成,'ganme_完成',true)
				注册确认key = true
			elseif d(ganme_进入游戏,'ganme_进入游戏',true) then
			elseif d(ganme_跳过,'ganme_跳过',true)  then
				return true
			elseif d(ganme_热更新确定,'ganme_热更新确定',true) then
			elseif d(ganme_选择角色界面_进入游戏,'ganme_选择角色界面_进入游戏',true) then
				click(87,1001)
			elseif d(ganme_滑动验证界面,'ganme_滑动验证界面') then
				moveTo(101,323,104,770)
			elseif d(ganme_选择角色界面,'ganme_选择角色界面') then
				角色 = {{111,93,0x46424c},{197,86,0x4e4753},{295,94,0x4c4551},{394,88,0x48444d},{484,93,0x4c4651},{586,82,0x46424c},}
				key = 角色[math.random(1,6)]
				click(key[1],key[2])
			else
				click(462,107)
			end
		end	
		delay(1)
		log('休息1秒')
	end	
	return false
end



while true do
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(appbid) then
			fakerdevice = XXTfakerGetinfo(appbid)
			IDFA = XXTfakerGetinfo(appbid)['IDFA']
			openU()
			if reg() then	
				up('蜀门手游','云备份')
			end
		end
	end
end


















