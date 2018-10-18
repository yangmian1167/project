nLog = require('nLog')()
require('faker')
require('xxtsp')

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

atexit(function() 
		sys.toast('脚本结束了！')
--		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--		app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)


local function sh_escape(path) -- XXTouch 原创函数，未经 XXTouch 许可，可以用于商业用途
    path = string.gsub(path, "([ \\()<>'\"`#&*;?~$])", "\\%1")
    return path
end

function fcopy(from, to) -- 拷贝一个文件或目录 (递归拷贝子项) 
    assert(type(from)=="string" and from~="", 'fcopy 参数 1 异常')
    assert(type(to)=="string" and to~="", 'fcopy 参数 2 异常')
    os.execute('cp -rf '..sh_escape(from).." "..sh_escape(to))
end


bid={}
bid.云裳羽衣 = "com.tencent.ysyy"
bid.qq = "com.tencent.mqq"




screen.init(0)
var = {}
var.lun = 0
--全局变量

updatafile1 = "/private/var/mobile/wenfree/logdog-launcher.txt"
updatafile2 = "/private/var/mobile/wenfree/792686865_743_1.0.101.1145_20180701105831_812283224_cures.ifs.cures"
updatafileN = app.data_path(bid.云裳羽衣).."/Documents/"




function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
--	idfalist.ip = '192.168.1.1'
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


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.游客登录={{{239,1052,0x8f7796},{409,968,0xfb3003},{92,957,0xc9f26e},},85}
apparr.游客登录确定={{{414,705,0x717796},{171,706,0xa38b64},{99,388,0xebeced},},85}
apparr.温馨提示确定={{{278,689,0x717796},{511,425,0xfff5b1},{122,428,0xe9ecee},},85}
apparr.点击开始注销={{{525,28,0x717796},{367,31,0xedeff1},},85}
apparr.同意={{{545,1052,0x7d84a5},{457,1036,0xc4aa8b},{454,1030,0xedeff1},},85}
--click(593, 1096)
apparr.初入江湖={{{352,42,0xff5850},{356,41,0xff4e47},{292,37,0x7d6e59},},85}
apparr.初入江湖2={{{356,43,0x882b26},{354,43,0x888579},{352,43,0x882d29},},85}

function newidfa(bids,times)
	for i= 1,times do
--		if XXTfakerNewPhone(bids)then
--			idfa = XXTfakerGetinfo(bids)['IDFA']
		local TIMEline = os.time()
		local OUTtime = rd(60*5,65*5)
		while os.time()- TIMEline < OUTtime do
			if active(bids,4)then
				if d(apparr.游客登录,"游客登录",false,1)then
					return true
				elseif d(apparr.游客登录确定,"游客登录确定",true,1)then
				elseif d(apparr.温馨提示确定,"温馨提示确定",true,1)then
				elseif d(apparr.点击开始注销,"点击开始注销",false,1)then
					click(593, 1096)
				elseif d(apparr.初入江湖,"初入江湖",true,1) or d(apparr.初入江湖2,"初入江湖2",true,1)then
					up(appname(bids),'创建角色')
					delay(5)
					return true
				else
					if d(apparr.right,"apparr.right",true)then

					else
						click(590, 1100)
						moveTo(600,300,100,100,30,50)
						delay(1)
						click(321, 978)
						delay(1)
						click(462, 666)
						delay(1)
					end
				end
			end
		end
		up(appname(bids),'初次上传')
--		end
	end
end





--newidfa(bid.imarry,200/20)		--A组
ass={}
ass.Login={{{541,198,0x636b6f},{483,199,0x636b6f},{359,654,0x636b6f},{132,352,0xffffff},}, 85, 0, 0, 0, 0}
ass.LoginUI={{{133,914,0xeff7ff},{132,941,0x007bff},{129,889,0x007bff},{87,911,0x007bff},}, 85, 0, 0, 0, 0}
ass.LoginOK={{{545,197,0x636b6f},{499,198,0x636b6f},{432,634,0x636b6f},{118,390,0xffffff},}, 85, 0, 0, 0, 0}
ass.LoginIDFA = {{{529,740,0x6c757d},{438,740,0x6c757d},{218,740,0x6c757d},
		{102,736,0x6c757d},{328,713,0xffffff},{328,713,0xffffff},}, 85, 0, 0, 0, 0}

ass.next = {{{134,586,0x017bff},{122,573,0x007aff},}, 85, 83, 509, 177, 699}
ass.dnow = {{{375,683,0xa38b64},{221,683,0x6f769b},},85}

function upidfa()

	idfa = XXTfakerGetinfo(bid.云裳羽衣)['IDFA'] 
	local url = "http://ass-emulator.dashet.com/"
	openUrl(url)
	delay(2)

	TIMEline = os.time()
	OUTtime = 60*5
	while os.time()-TIMEline < OUTtime do
		if d(ass.Login,"ss.Login",true)then
		elseif d(ass.LoginIDFA,"LoginIDFA",true)then
			input(idfa)
			d(ass.next,"ass.next",true)
			input("25408577284250624")
			d(ass.next,"ass.next",true)
			input("25802136285319936")
			d(ass.next,"ass.next",true)
			input("25738894263684864")
			d(ass.next,"ass.next",true)
			input(get_ip())
			if d(ass.LoginUI,"ass.LoginUI",true,1)then
				return true
			end

			--产品ID：25408577284250624
			--广告ID：25802136285319936
			--创意ID：25738894263684864

		elseif d(ass.LoginOK,"ass.LoginOK",true,1)then
		elseif d(ass.LoginUI,"ass.LoginUI",false,1)then
			click(498, 539)
			input("zhanghao@dashet.com")
			delay(1)
			d(ass.next,"ass.next",true)
			input("kBSkInnrix")
			delay(1)
			click(589, 662)

			d(ass.LoginUI,"ass.LoginUI",true,1)
			delay(1)

		end
		delay(1)
	end

end

function updatagame()
	local copys = false
	
	if XXTfakerNewPhone(bid.云裳羽衣)then
		TIMEline = os.time()
		OUTtime = 60*10
		while os.time()-TIMEline < OUTtime do
			if active(bid.云裳羽衣,4)then
				if d(apparr.游客登录,"游客登录",false,1)then
					return true
				elseif copys and d(ass.dnow,"ass.dnow",true,1)then
					
				elseif d(ass.dnow,"ass.dnow",false,1)then
					closeX(bid.云裳羽衣)
					delay(1)
					fcopy(updatafile1, updatafileN)
					fcopy(updatafile2, updatafileN)
					delay(1)
					copys = true
				else
					if d(apparr.right,"apparr.right",true)then

					else
						click(590, 1100)
						delay(1)
					end
				end
			end
			delay(1)
		end
	end
end


if app.front_bid() ~= "com.tencent.mqq" then

--[[	]]
for i=1,30 do
	if updatagame() then
		if false or vpn()then

			upidfa()
			delay(5)
			newidfa(bid.云裳羽衣,1)
			
			os.exit()
			
		end
	end
	vpnx()	
end
--]]

end

--log(app.data_path(bid.云裳羽衣))

--[[]]
--newidfa(bid.云裳羽衣,1)
--XXTFaker.clear_config(bid.云裳羽衣)




function havevpn()
	vpnlist = vpnconf.list()
	for k,v in ipairs(vpnlist) do
		if v.dispName == "gsvpn" then
			return true
		end
	end
end

if not(havevpn()) then
local success = vpnconf.create{
    dispName = "gsvpn",       -- VPN 的显示名
    VPNType = "L2TP",              -- VPN 的类型，支持 PPTP、L2TP、IPSec、IKEv2
    server = 'qghh5.9966.org',    -- 服务器地址
    authorization = 'qqtest',      -- 账号
    password = 'Aa112211',           -- 密码
    secret = '888',            -- 密钥，PPTP 可不填
    encrypLevel = 1,               -- 加密级别，选填，默认 1
    group = '',                    -- 群组名称，选填，默认 ""
    VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
}
end


--包路径 = app.bundle_path(bid.云裳羽衣)
--log(包路径)
--XXTfakerNewPhone(bid.云裳羽衣)
--XXTfakerNewPhone(bid.qq)
--fcopy(cachesA, cachesB)
--fcopy(updatafile1, updatafileN)
--fcopy(updatafile2, updatafileN)
--openUrl("https://www.rongshu.cn/promotion/m/c/index.html?c=dk3655")

log("end")
--]]


--[[]]
qq={
{1735007023,"espkcac528834"},
{2824274316,"snqgm857"},
{1937454475,"cvxfpvcf"},
{2073468062,"h31mb7ef3"},
{2101133723,"kk666666"},
{3152423165,"neh94713"},
{2068087672,"ss222222"},
{3175584497,"qjsqrh76"},
{2601860439,"ra475845"},
{3178879929,"n9992921"},
{1600346201,"xca44845"},
{3337254711,"g6923664"},
{2138690475,"fn638112"},
{3200984753,"c7832832"},
{1835892482,"cpqa8527"},
{2542887255,"yy222333"},
{1402150013,"ttn23999"},
{2072843072,"puqrkbca"},
{2148709342,"xingyingb25b"},
{1773453783,"sp752298"},
{599851568,"y2273912"},
{3239884964,"bwk72889"},
{2309153212,"kk666666"},
{1697478612,"wazzdede"},
{2735670558,"md985465"},
{2406501889,"1m6iv5a7k"},
{3365212837,"liningd"},
{2258131694,"yarafc49"},
{1809818614,"dyd29521"},
{2129156726,"pjkeb784"},
{2767836610,"1pqvb8phj"},
{1826578646,"lfad7b132"},
{2656931851,"sc965787"},
{2175329716,"junkqjr"},
{2181281457,"xqg13492"},
{1391388270,"r2wig7n0cif6bo"},
{2084358306,"qeqygx74"},
{2905543507,"ggrs4271"},
{3356352307,"sm332342"},
{2136454547,"krp91927"},
{2373508646,"kk666666"},
{1778506052,"sgkabdd3"},
{3033623552,"xu3848864"},
{3159510070,"4vvovuyc8"},
{2895056263,"ntaq9864"},
{3096446605,"dpntmet1"},
{2678727671,"cnhxgcc4"},
{3442600962,"dFFqak1D649"},
{2032367441,"40u775jf"},
{2952967682,"xj261964"},
{3244653100,"cgyhtmq9"},
{3330258862,"prrav9gb8w2"},
{3098036054,"max51815"},
{3050826189,"fsftsxa6"},
{2929579582,"y9792883"},
{2417073781,"kk666666"},
{2823561613,"fhkaffg6"},
{2427930746,"xx558899"},
{1152894838,"ss222222"},
{3559860275,"x1177745"},
{2518109501,"vv159753"},
{2328685724,"nexj4388"},
{2771073404,"m4449215"},
{2358512421,"yy222333"},
{2538097795,"xx170408"},
{2579882897,"dcw4v8y835o"},
{2016372179,"rnnky553"},
{3297760189,"ntxf3yhp6"},
{2911845124,"kutosy268"},
{3478013971,"sas72382"},
{2698496203,"g6365936"},
{3449570981,"x2778556"},
{2578611154,"ctrlqihh"},
{3436136075,"u0skr8pu"},
{3115799261,"ajtm1414"},
{1594662542,"c3524891"},
{1934481964,"emfdyr96"},
{3025113117,"kfqrry39"},
{3366389003,"kkcyeeaoim"},
{3138303950,"c3573141"},
{1132108680,"7obzrljw"},
{1778143699,"tqdf1232"},
{2047341039,"bmkh8546"},
}

key = 10

input(qq[key][1])
click(572, 1098)
input(qq[key][2])
--]]









































