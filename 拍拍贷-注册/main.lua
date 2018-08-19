nLog = require('nLog')()
require('xxtsp')
log('xxtsp load')
require('faker')
log('faker load')
require('alz')
log('alz load')
require("name")
require("XXTouchDemo")

log(app.front_bid())
--自动打印出来当前app bid
idname = '姓名'
idmun = '18'


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

atexit(
	function() 
		sys.toast('脚本结束了！')
		vpnx()
		sys.msleep(500)
	end
)

--vpnTable 示例
vpnlist ={
		dispName = 'adad01',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'adad01',
		password = 'Aa112211',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}
	--vpnTable 示例
vpnlist ={
		dispName = 'nj',
		VPNType = "IPsec",
		server = 'ad.chengqiyi.com',
		authorization = 'nj1',
		password = 'nj1',           -- 密码
		secret = 'apple',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}
--[[
creat_vpn(vpnlist)
os.exit()
--vpn()
--]]

function rd(x,y)
	return math.random(x,y)
end

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = '192.168.1.1'
--	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end


key_input = {
	{110,  761, 0x010101},
	{320,  765, 0xfefefe},
	{541,  758, 0x000000},
	{117,  870, 0x2b2b2b},
	{319,  854, 0xfefefe},
	{537,  859, 0xffffff},
	{108,  968, 0x000000},
	{321,  967, 0xffffff},
	{535,  961, 0xffffff},
[0]={321, 1081, 0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(key_input[phone_mun][1],key_input[phone_mun][2],0.3)
	end
end

appbid = {
	['safari'] = 'com.apple.mobilesafari',
	['疯牛直播'] = 'com.51qiniu.pay',
	['榕树贷款'] = 'com.shuqu.banyan',
}


function lzyzmjg()
	log("准备识别")
	--上传图片识别
	screen.image( 481, 537, 705, 615 ):save_to_png_file("/var/mobile/Media/1ferver/lua/scripts/yzm.jpg")
	sys.msleep(300)
	local lzRe, yzmid, jiegou = lzRecoginze(username, password, imgfile, yzmtype);
	log(lzRe)
	if (lzRe == true) then
		yzmjg = jiegou
		log(yzmjg)
		jiegou = "识别结果:" .. jiegou;
		--sys.alert(jiegou);
		return true
	else
		sys.alert('识别超时',3);
	end
end



ppd = {}
ppd.tip={}
ppd.tip.地理位置={{{517,750,0x007aff},{280,756,0x007aff},{455,2,0x949494},},85}
ppd.tip.完成={{{708,862,0x007aff},{714,850,0x007aff},}, 85, 665, 753, 736, 882}

ppd.填入手机号={{{426,784,0xffffff},{589,572,0xf76558},{364,559,0xf7c528},{132,562,0x368ef0},}, 85, 25, 496, 725, 849}
ppd.获取验证码={{{595,708,0x3a91cf},{607,705,0x4e9cd4},{607,696,0x4195d1},}, 85, 482, 628, 716, 760}
ppd.我要注册={{{379,859,0x3a91cf},{366,836,0xffffff},{374,826,0x3a91cf},}, 85, 257, 720, 507, 927}


function tip()
	if d(ppd.tip.地理位置,"地理位置",true,1)then
	end
end



function open()
	local timeline = os.time()
	local usedTime = 60*3
	
	local TrueUrl='https://ac.ppdai.com/activitypage?redirect=https://m.ppdai.com/loan/users/userinfo&style=&activityid=201&source=15791&regsourceid=mktsjbhp06'
	openUrl(TrueUrl)
	delay(3)
	accountPWD = myRand(4,rd(6,8))
	
	local 取号 = true
	local 发验证 = false
	local yzms = false
	local 密码 = false
	local 短信 = false
	local 注册 = false
	local 成功 = false
	local get_Times = 0 
	
	while os.time()-timeline < usedTime do
		if active(appbid.safari,3)then
			if 取号 and d(ppd.填入手机号,"填入手机号",true)then
				if GET_Phone()then
					input(phone)
					d(ppd.tip.完成,"完成",true)
					取号 = false
					yzms = true
				end
			elseif yzms then
				if lzyzmjg()then
					click(305,578)
					input(yzmjg)
					d(ppd.tip.完成,"完成",true)
					yzms = false
					发验证 = true
				end
			elseif 发验证 then
				if d(ppd.获取验证码, "获取验证码" ,true)then
					发验证 = false
					短信 = true
				end
			elseif 短信 then
				if GET_message(phone)then
					click(304, 649)
					input(sms)
					d(ppd.tip.完成,"完成",true)
					短信 = false
					注册 = true
				else
					get_Times = get_Times + 1
					if get_Times > 30 then	return false	end
					delay(3)
				end
			elseif 注册 then
				if d(ppd.我要注册,"我要注册",true,1)then
					up("拍拍贷",sms)
				end
			else
				tip()
			end
		end
		delay(1)
	end
	log("URL-超时")
end


--[[]]

while true do
	XXTfakerNewPhone(appbid['safari'])
	if true or vpn() then
		if open()then
			
		end
		vpnx()
	end
end

--]]







































