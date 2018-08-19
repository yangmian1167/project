nLog = require('nLog')()
require('xxtsp')
log('xxtsp load')
require('faker')
log('faker load')
require('yumi')
log('yumi load')
require("name")

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
		local appbid = app.front_bid()
		if appbid ~= "com.apple.springboard" then
			closeX(appbid)
		end
		sys.msleep(1000)
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

function getName()
	local url = 'http://onlyonelife.online/Public/aso/?service=Aso.get_name'
	local res = get(url,times)
	return json.decode(res)['data']
end

function getID()
	local url = 'http://tb1.host.apijs.cc/Public/tlbb/?service=Tlbb.getid'
	local res = get(url,times)
	if res ~= nil then
		infos = json.decode(res)['data']
		log(infos)
		idname = infos['idname']
		idmun = infos['idmun']
		return true
	end
end

function up(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = text
	flaccount.mail = idfa
	flaccount.password = get_ip()
	flaccount.phone = phone
	flaccount.phonename = device.name()
	flaccount.lastname = state or sys.version()
	--flaccount.map = text
	return post(url,flaccount)
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
	['健身跟我做'] = 'com.wenhong.fitnessfollowme',
	['safari'] = 'com.apple.mobilesafari',
	['疯牛直播'] = 'com.51qiniu.pay',
	['榕树贷款'] = 'com.shuqu.banyan',
	['牛滴'] = "cn.com.workapp.auto.niudi",
}

niud = {}
niud.立即体验={{{318,940,0x49c0fb},{359,1069,0x259fdb},},85}
niud.人={{{54,77,0x282828},{333,1023,0x259fdb},{585,70,0x282828},},85} --2
niud.注册界面={{{322,187,0x259fdb},{305,197,0xfefefe},{296,295,0x282828},},85}
	niud.获取验证码={{{477,564,0x259fdb},{594,565,0x259fdb},}, 85, 453, 539, 618, 587}
	niud.登录按钮={{{308,773,0xffffff},{329,745,0xffffff},{320,752,0x259fdb},}, 85, 282, 730, 360, 791}
niud.注册成功={{{210,772,0xf9b342},{284,761,0xf03516},{317,624,0xfa351f},},85}
niud.同城小包={{{420,279,0x45d7a3},{101,277,0x46a5f9},{55,72,0x282828},},85}


function nd()
	local timeline = os.time()
	local usedTime = 60*3

	local 取号 = true
	local 发验证 = false
	local 密码 = false
	local 短信 = false
	local 注册 = false
	local 成功 = false
	--click(584,661)			--完成
	
	while os.time()-timeline < usedTime do
		if active(appbid['牛滴'],5)then
			if d(niud.注册界面,"注册界面")then

				if 取号 and GET_Phone()then
					click(311, 463,3)
					phoneKey(phone)
					取号 = false
					发验证 = true
					delay(1)
					up("牛滴","填入手机")
					
				elseif 发验证 then
					if d(niud.获取验证码,"获取验证码",true)then
					else
						发验证 = false
						短信 = true
					end
				elseif 短信 then
					if GET_message(phone)then
						click(274, 551)
						phoneKey(SMS)
						delay(2)
						短信 = false
						注册 = true
						up("牛滴","短信成功")
					else
						delay(3)
					end
				elseif 注册 then
					if d(niud.登录按钮,"登录按钮",true)then
						delay(5)
					else
						click(48, 677)
					end
				end
				
			elseif d(niud.人,"niud.人",true,2)then
			elseif d(niud.同城小包,"niud.同城小包",true,1)then
			elseif d(niud.注册成功,"注册成功",true,1)then
				delay(2)
				up("牛滴")
				return true
			else
				if not(d(niud.立即体验,"立即体验",true,1))then
					click(322, 896)
					moveTo(600,300,100,100,30,50)
				end
			end
		end
		delay(1)
	end
	log("提交-超时")
end

--[[
openUrl("https://itunes.apple.com/cn/app/id1275865285?mt=8&at=1l3vntR&ct=qm")
os.exit()
--]]
--[[]]

YUMI()
while true do

	if vpn()then
		if XXTfakerNewPhone(appbid['牛滴'])then
			idfa = XXTfakerGetinfo(appbid['牛滴'])['IDFA']
			nd()
		end
		
	end
	vpnx()
	
	delay(2)
end

--]]







































