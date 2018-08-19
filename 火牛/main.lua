nLog = require('nLog')()
require('faker')
require('xxtsp')
require("alz")
require("name")
--require("LuaDemo")


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
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.火牛视频 = 'com.waqu.firebull'
screen.init(0)
kfy.id = '13129'
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
	idfalist.ip = ip or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkip()
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

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
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



邀请号码 = '3044582'
hn = {}

hn.请输入手机号 = {{{248, 313, 0xffae8f},{247, 313, 0xff672e},{190, 318, 0xffffff},}, 85, 104, 284, 526, 365}
hn.获取验证码 = {{{469, 453, 0xffffff},{469, 455, 0xff6819},{469, 459, 0xffffff},}, 85, 86, 426, 612, 523}
hn.请输入验证码 = {{{130, 446, 0xffb794},{129, 446, 0xff7738},{435, 448, 0xffffff},}, 85, 95, 422, 591, 516}
hn.输入邀请码 = {{{128, 606, 0xffc8a5},{128, 605, 0xff7c29},{435, 616, 0xffffff},}, 85, 107, 576, 587, 677}
hn.登录 = {{{294, 767, 0xff401a},{135, 769, 0xffffff},{535, 779, 0xffffff},}, 85, 84, 708, 582, 842}
hn.流量播放 = {{{431, 664, 0x333333},{162, 665, 0x333333},{109, 671, 0xffffff},}, 85}
hn.弹窗1 = {{{ 71, 187, 0xff6647},{469, 366, 0xff7600},}, 85}
hn.弹窗2 = {{{565, 637, 0xec0000},{ 58, 581, 0xff9f00},}, 85}
hn.安全验证界面 = {{{120, 365, 0xb2b2b2},{533, 769, 0xb9b9b9},}, 85}
hn.安全验证通过 = {{{308, 515, 0x2cd000},{176, 597, 0x1cc401},}, 85}
hn.蓝色滑动键 = {{{164, 695, 0x007aff},{214, 694, 0x007aff},}, 85}
hn.主界面 = {{{ 38,  59, 0xfa8d78},{527,  95, 0xf98c7c},{618, 114, 0xff4413},}, 85}
function reg()
	local TimeLine = os.time()
	local OutTime = 60*3
	local 取号 = true
	local 验证码 = false
	local 安全验证 = false
	local 邀请码 = false			
	local 短信 = false
	local 提交 = false
	local 滑动视频 = false
	local 滑动视频次数 = 0
	local 后退 = false
	local 取短信次数 = 0
	password = myRand(4,rd(8,10))
	
	while os.time()-TimeLine < OutTime do
		if active(bid.火牛视频) then
			if 取号 then
				if d(hn.请输入手机号,"hn.请输入手机号",true,1) then
					if GET_Phone() then
						phoneKey(phone) 
						d(hn.获取验证码,"hn.获取验证码",true,1) 
						取号 = false
						安全验证 = true
					end	
				end
			elseif 安全验证 then
				if d(hn.安全验证界面,"hn.安全验证界面") then
					if d(hn.蓝色滑动键,"hn.蓝色滑动键") then
						touch.on(212, 701):move(477, 685):off()
					elseif 	d(hn.安全验证通过,"hn.安全验证通过") or d(hn.主界面,"hn.主界面") then
						安全验证 = false
						验证码 =true
					end
				end	
			elseif 验证码 then
				if d(hn.输入邀请码,"hn.输入邀请码",true,1) then
					phoneKey(邀请号码)
					验证码 = false
					短信 = true
				end	
			elseif 短信 then
				if GET_message(phone) then
					d(hn.请输入验证码,"hn.请输入验证码",true,1)
					phoneKey(sms) 
					click(330, 173)
					短信 = false
					提交 = true
				else
					delay(3)
					取短信次数 = 取短信次数 + 1
					if 取短信次数 > 20 then
						return false
					end	
				end
			elseif 提交 then
				if d (hn.登录,"hn.登录",true,1)	then
					up(appname(bid.火牛视频),'火牛视频')
					提交 = false
					滑动视频 = true
					delay(10)	
				end
			elseif 滑动视频 then
				if d(hn.弹窗1,"hn.弹窗1",true,1) then
				elseif d(hn.弹窗2,"hn.弹窗2",true,1) then
				elseif d(hn.流量播放,"hn.流量播放",true,1) then
				elseif 滑动视频次数 <= 3 then
					滑动视频次数 = 滑动视频次数 + 1
					moveTo(448, 944,457, 300)
					delay(3)
				else
				return true
				end
			end
		end
		delay(1)
	end
end



--while true do
--	if XXTfakerNewPhone(bid.火牛视频) then
--		reg()
--	end	
--end




function rightx()
	local rightRE={}
	rightRE.statr = { 119,432 }
	function top_y()
		screen.keep(true)
		for i = rightRE.statr[2],672 do
			local r, g, b = screen.get_color_rgb(rightRE.statr[1], i)
			--log(r..","..g..","..b)
			local r1, g1, b1 = screen.get_color_rgb(rightRE.statr[1], i+1)
			local r2, g2, b2 = screen.get_color_rgb(rightRE.statr[1], i+5)
			--log(r1..","..g1..","..b1)
			local 色差计数 = 0
			if r1 - r >= 80 then
				色差计数 = 色差计数 + 1
			end	
			if g1 - g >= 80 then
				色差计数 = 色差计数 + 1
			end
			if b1 - b >= 80 then
				色差计数 = 色差计数 + 1
			end
			if r2 - r >= 80 then
				色差计数 = 色差计数 + 1
			end	
			if g2 - g >= 80 then
				色差计数 = 色差计数 + 1
			end
			if b2 - b >= 80 then
				色差计数 = 色差计数 + 1
			end
			if 色差计数 >= 5 then
				screen.keep(false) 
				return i
			end
		end
		screen.keep(false) 
	end
	y = top_y() + 5
	log("top-y->"..y)
	if y > 437 then
		screen.keep(true)
		for i = 181,500 do
			local r, g, b = screen.get_color_rgb(i, y)
			log(i..","..y.."->"..r..","..g..","..b)
			local r1, g1, b1 = screen.get_color_rgb(i+3, y)
			local r2, g2, b2 = screen.get_color_rgb(i+5, y)
--			log(r1..","..g1..","..b1)
--			log(r2..","..g2..","..b2)
			
			local 色差计数 = 0
			
			if r - r1 >= 60 then
				色差计数 = 色差计数 + 1
			end	
			if g - g1 >= 60 then
				色差计数 = 色差计数 + 1
			end
			if b - b1 >= 60 then
				色差计数 = 色差计数 + 1
			end
			
			if r - r2 >= 60 then
				色差计数 = 色差计数 + 1
			end	
			if g - g2 >= 60 then
				色差计数 = 色差计数 + 1
			end
			if b - b2 >= 60 then
				色差计数 = 色差计数 + 1
			end
			
			if 色差计数 >= 5 then
				screen.keep(false) 
				return i
			end
		end
		screen.keep(false)
		return 0
	end
end

--滑动函数(x1,y1,x2,y2,步长，每步延迟，弹起时间)
--function moveTo(x1,y1,x2,y2,setp,times,wait)
--	local setp = setp or 5
--	local times = times or 2
--	local wait = wait or 0.5
--	touch.on(x1,y1)
--		:step_len(math.random(2,5))
--		:step_delay(math.random(50,200))
--		:move(x2,y2)
--		:msleep(1000 * 1)
--	:off()
--end
sys.msleep(500)
right = rightx()
log(right)
if right > 0 then
	touch.on(143, 701):move(right+26, 685):off()
--	x, y = screen.find_color({{159, 491, 0xf4e4e0},{159, 512, 0xf3e3df},}, 60, 159, 439, 159, 673)
--	moveTo(x, 701,rightx(),685)
	touch.tap(441, 633)
end











