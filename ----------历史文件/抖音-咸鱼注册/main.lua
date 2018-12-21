
--[[]]
local cloud_cc = require("cloud_cc")(
        "2BA695C9633E1E712764746FFD90649C",
        {
				"/lua/scripts/faker.lua",
				"/lua/scripts/xxtsp.lua",
				"/lua/scripts/yumi.lua",
				"/lua/scripts/name.lua",
				"/lua/scripts/LuaDemo.lua",
				"/lua/scripts/nLog.xxt",
        }
)
--]]


nLog = require('nLog')()
require('faker')
require('xxtsp')
require("yumi")
require("name")
require("LuaDemo")
YUMI()


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
--			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)


function d(name,clicks,mun)
	local leng = #page[name]
	if  leng > 3 then
		return cpic(page[name],name,clicks,mun)
	elseif leng > 0 then
		return done(page[name],name,clicks,mun)
	else
		sys.alert(name.."~不存在")
	end
end

bid={}
bid.app = "com.ss.iphone.ugc.Aweme"

screen.init(0)
var = {}
var.lun = 0


yumi.id = '19732'
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


phonekeyArr = {
	{111,762,0x000000},
	{323,762,0x000000},
	{528,761,0x050505},
	{118,863,0x000000},
	{318,859,0xffffff},
	{530,864,0xffffff},
	{109,974,0xfefefe},
	{319,973,0xffffff},
	{538,970,0xffffff},
	[0]={317,1077,0xffffff},
}

function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(phonekeyArr[phone_mun][1],phonekeyArr[phone_mun][2],0.3)
	end
end


ONEcolor={}
function looking()
	screenTime = screenTime or os.time()
	
	local oldcolorWZ = {
		{126,  290, 0x1aa5f7},
		{449,  286, 0x1e1e1f},
		{471,  731, 0xbba7a3},
		{170,  724, 0xb9b7b9},
		{405, 1036, 0xffffff},
	}
	
	frist = frist or 0
	if frist == 0 then
		screen.keep()
		for i,v in ipairs(oldcolorWZ)do
			ONEcolor[i]=screen.get_color(v[1],v[2])
		end
		screen.unkeep()
		frist = 1
	end
	
	--log(ONEcolor)
	
	sameColor = 0
	screen.keep()
	for i,v in ipairs(oldcolorWZ)do
		local colordian = screen.get_color(v[1],v[2])
		if colordian == ONEcolor[i] then
			log("颜色相同")
			sameColor = sameColor + 1
		else
			log("颜色不同")
			ONEcolor[i] = colordian
		end
	end
	screen.unkeep()
	
	if sameColor >= 5 then
		log("卡屏了")
		if os.time() - screenTime > 30 then
			closeX(app.front_bid())
			screenTime = os.time()
		end
	else
		log("屏幕有变化")
		screenTime = os.time()
	end
	
	sys.msleep(1000)
end



page={}
page.send_button={{{325,1092,0xffffff},{359,1091,0xfe2c55},{280,1086,0x17eee8},},85}
page.regUI={{{565,72,0xf3f1fd},{286,59,0x8a7aff},{143,71,0xffffff},},85}
	page.getSMS={{{504,434,0xffffff},{479,428,0xffffff},{524,424,0x9d63ec},}, 85, 418, 401, 595, 466}
	page.regUI_login={{{321,729,0x9f2ce8},{314,707,0xffffff},{338,738,0xffffff},}, 85, 289, 694, 358, 753}

page.ather_up ={{{298,911,0xffffff},{316,967,0xffffff},{299,971,0xffffff},{313,972,0xffffff},},85}
page.tip_allow = {{{478,666,0x007aff},{209,664,0x007aff},}, 85, 102, 626, 527, 703}
page.tip_goon = {{{474,721,0x2a2c38},{197,697,0xe7e8f5},{420,604,0xfe2c55},}, 85, 73, 367, 561, 765}
page.tip_goon2 = {{{499,812,0x2a2c37},{286,799,0xe7e8f5},{383,341,0xff1c98},}, 85, 63, 167, 579, 850}
page.tip_yzm = {{{454,490,0x3c8bed},{480,403,0xd34c4c},{406,254,0x333333},}, 85, 62, 237, 584, 521}
---------------------
page.启用限制 = {{{352,744,0x0ffcf5},{355,740,0x111110},{356,737,0x0ffcf5},}, 85, 121, 544, 494, 797}
page.视频界面={{{314,956,0xfe2c55},{287,924,0xfe2c55},{344,924,0xfe2c55},{290,990,0xfe2c55},},85}
	page.摄像头翻转={{{570,90,0xf4f4f3},{571,71,0xf3f2f1},{555,103,0xf3f3f2},},85}
	page.视频界面_下一步={{{547,1056,0xe92d55},{295,1040,0xffffff},{471,69,0xffffff},{39,88,0xf8f7f6},}, 85, 0, 0, 0, 0}
	page.视频界面_发布={{{494,1005,0xffffff},{378,1011,0xffffff},{321,1011,0xfe2c55},{536,1015,0xfe2c55},}, 85, 276, 976, 606, 1055}
	page.视频界面_正在发布={{{157,331,0xface15},{167,331,0xface15},}, 85, 2, 317, 634, 342}
	page.视频界面_正在发布2={{{86,84,0xface15},{87,84,0xface15},}, 85, 45, 73, 125, 159}
page.视频界面_同步到头条={{{320,901,0xa2a2a3},{489,713,0xfe2c55},{438,326,0xff0000},}, 85, 0, 0, 0, 0}	
page.视频界面_跳过={{{589,78,0xffffff},{322,361,0x36245e},{222,763,0xccc0d8},{421,772,0xb6a5c5},}, 85, 0, 0, 0, 0}
page.视频界面_拒好友={{{184,877,0xe7e8f5},{433,755,0xfc3f65},{467,876,0x292b37},{431,328,0x3aa6ff},}, 85, 37, 192, 614, 964}	
page.视频界面_通讯录返回={{{44,79,0xa2a3a7},{49,79,0x151721},{279,67,0xe8e8e9},{279,65,0x73747b},{275,67,0x161823},}, 85, 18, 29, 303, 135}
page.视频界面_封号={{{596,89,0xfa0b44},{343,80,0xffffff},{38,94,0x999999},{92,508,0x252731},}, 85, 0, 0, 0, 0}

weboc = {
	{"15526102892","o318qxn9xu",},
	{"15526102344","g3wcy0o0f4",},
	{"15526101794","7z3it2dqxk",},
	{"15526090581","s6l6lfykw3",},
	}


page.微博登录按钮={{{448,721,0x050101},{436,707,0xe42223},{464,726,0xe42223},{466,703,0xf39c25},}, 85, 39, 561, 579, 860}
page.微博登录界面={{{314,378,0x000000},{301,342,0xf11e44},{347,378,0xf41a33},{361,335,0xffbd00},}, 85, 156, 220, 467, 471}
	page.微博登录界面_完成={{{605,586,0x007aff},{604,577,0x007aff},}, 85, 545, 377, 638, 723}
	page.微博登录界面_登录按钮={{{321,739,0xff8200},{337,748,0xffffff},}, 85, 25, 672, 627, 869}
page.微博登录_滑动界面={{{423,834,0x888888},{220,831,0x888888},{218,633,0x888888},{418,634,0x888888},{385,378,0x333333},}, 85, 72, 299, 572, 944}
page.微博登录_登录确认界面={{{374,612,0xff8200},{342,605,0xffffff},{430,226,0xfefefb},{200,240,0xf4151d},}, 85, 74, 179, 548, 673}



function weibologin(account_wb,pwd_wb)
	screen.init(0)
	local TimeLine = os.time()
	local OutTime = 60*3
	
	while os.time()-TimeLine < OutTime do
		looking()
		if active(bid.app,5)then
			if 注册 and d("send_button")then
				return true
			elseif d("send_button",true)then
			elseif d("regUI")then
				click(532,564)
				if d("微博登录按钮",true)then
					delay(5)
				end
			elseif d("微博登录界面")then
				click(356,622)
				log(pwd_wb)
				input(pwd_wb,1,2)
				delay(1)
				d("微博登录界面_完成",true)
				click(420,535)
				input(account_wb,1,2)
				d("微博登录界面_完成",true)
				delay(2)
				if d("微博登录界面_登录按钮",true)then
					delay(5)
				end
			elseif d("微博登录_登录确认界面",true)then
				注册 = true
			elseif d("微博登录_滑动界面")then
					screen.image(141,560,516,911):save_to_png_file(imgfile)
					delay(0.5)
					yzmtype = "1322"
					if orcYZM()then
						log(yzm_jg)
						local yzmlist = string.split(yzm_jg,"|")
						for k,v in ipairs(yzmlist) do
							yzmlist[k]= string.split(v,",")
						end
						log(yzmlist)
						
						touch.on(yzmlist[1][1]+141, yzmlist[1][2]+560) -- 在起始坐标按下
							:delay(500)
							:step_len(1)   -- 步长设长以便加速滑动
							:move(yzmlist[2][1]+141, yzmlist[2][2]+560) -- 快速移动到接近目标位置
							:step_len(1)    -- 步长设短缓冲防止惯性
							:move(yzmlist[3][1]+141, yzmlist[3][2]+560) -- 慢速移动目标位置
							:step_len(1)    -- 步长设短缓冲防止惯性							
							:move(yzmlist[4][1]+141, yzmlist[4][2]+560) -- 慢速移动目标位置
							:step_len(1)    -- 步长设短缓冲防止惯性
							:delay(200)     -- 抬起前等待一段时间
						:off()              -- 抬起手指
						
						注册 = true
						delay(3)
					else
						delay(3)
					end
					d("tip_yzm",true)
					delay(3)
				
			else
				log("非主线")
				if d("ather_up")then
					moveTo(310, 973,310, 408)
					delay(1)
				elseif d("tip_allow",true)then
				elseif d("tip_goon",true)then
				elseif d("tip_goon2",true)then
				elseif d("视频界面_跳过",true)then
				elseif d("视频界面_封号",true)then
					up(appname(bid.app),"抖音封号")
				end
			end
		end
		delay(1)
	end	
	
	
end



function send()
	screen.init(0)
	local TimeLine = os.time()
	local OutTime = 60*10

	local 发送成功 = false

	while os.time()-TimeLine < OutTime do
		if active(bid.app,5)then

			if d("视频界面_正在发布") or d("视频界面_正在发布2")then
				发送成功 = true
				delay(3)
			elseif 发送成功 and d("send_button")then
				delay(3)
				return true
			elseif d("send_button",true)then
			elseif d("视频界面_发布",true)then
			elseif d("视频界面_下一步",true)then
			elseif d("视频界面")then
				if  d("摄像头翻转",true,1)then
					delay(5)
				else
					click(320,955)
					delay(rd(8,15))
				end

			else
				if d("ather_up")then
					moveTo(310, 973,310, 408)
					delay(1)
				elseif d("tip_allow",true)then
				elseif d("启用限制",true)then
				elseif d("视频界面_同步到头条",true)then
				elseif d("视频界面_拒好友",true)then
				elseif d("视频界面_通讯录返回",true)then
				elseif d("tip_goon",true)then
				elseif d("tip_goon2",true)then
				end

			end
		end
		delay(0.5)
	end
end






function reg()
	screen.init(0)
	local TimeLine = os.time()
	local OutTime = 60*3

	local 注册 = false
	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	local 密码 = false

	while os.time()-TimeLine < OutTime do
		looking()
		if active(bid.app,5)then
			if 注册 and d("send_button")then
				return true
			elseif d("send_button",true)then
			elseif d("regUI")then
				if 取号 then
					if GET_Phone()then
						click(405,324)
						phoneKey(phone)
						取号 = false
						验证码 = true
					end
				elseif 验证码 then
					if d("getSMS",true)then
						验证码 = false
						短信 = true
					end
				elseif 短信 then
					if GET_message(phone)then
--						click(213,426)
						input(SMS,1,2)
						click(574,559)
						短信 = false
						提交 = true
					end				
				elseif 提交 then
					if d("regUI_login",true)then
						up(appname(bid.app),"初始提交")
						注册 = true
						delay(5)
					end
				end
			else
				log("非主线")
				if d("ather_up")then
					moveTo(310, 973,310, 408)
					delay(1)
				elseif d("tip_allow",true)then
				elseif d("tip_goon",true)then
				elseif d("tip_goon2",true)then
				elseif d("tip_yzm")then
					screen.image(110,291,527,354):save_to_png_file(imgfile)
					delay(0.5)
					if orcYZM()then
						log(yzm_jg)
						input(yzm_jg,1,2)
					end
					d("tip_yzm",true)
					delay(3)
				elseif d("视频界面_跳过",true)then
				elseif d("视频界面_封号",true)then
					up(appname(bid.app),"抖音封号")
				end
			end
		end
		delay(1)
	end
end



--[[]]

--]]

--XXTfakerNewPhone(bid.app)





--[[]]

while true do

for k,v in ipairs(weboc)do

	if XXTfakerNewPhone(bid.app)then
		idfa = v[1]
		if weibologin(v[1],v[2])then
			if send()then
				up(appname(bid.app),"发送视频")
			end
		end
	end
	
end

end

--]]







































