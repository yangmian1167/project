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

--atexit(function() 
--		sys.toast('脚本结束了！')
--		vpnx()
--		local appbids = app.front_bid()
--		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
--			--closeX(appbids)
--		end
--		sys.msleep(500)
--	end)


---------抓图账号密码



--local txt = screen.ocr_text(121, 466, 344, 529) -- 默认配置是使用英文数字模式识别文字
--log("识别结果："..txt:atrim())



appbid = "com.aomygod.aomaijia"
--safari = "com.apple.mobilesafari"

--url = 'https://young.chinaso.com/m/wap/index.html?utm_campaign=%E6%B4%BB%E5%8A%A8%E6%8E%A8%E5%B9%BF&utm_medium=hdtg00001&utm_source=%E5%85%AD%E4%B8%80'
--url = 'https://young.chinaso.com/m/wap/index.html?utm_campaign=活动推广&utm_medium=hdtg00001&utm_source=六一'
--url = 'https://young.chinaso.com/m/wap/index.html?utm_campaign=%25E6%25B4%25BB%25E5%258A%25A8%25E6%258E%25A8%25E5%25B9%25BF&utm_medium=hdtg00001&utm_source=%25E5%2585%25AD%25E4%25B8%2580'
--url = 'https://at.umtrack.com/4XHP5f'
--url = 'https://young.chinaso.com/m/wap/index.html?utm_campaign=%E6%B4%BB%E5%8A%A8%E6%8E%A8%E5%B9%BF&utm_medium=hdtg00001&utm_source=%E5%85%AD%E4%B8%80'
--url = 'https://www.meipian6.cn/27x2ecx7?first_share_uid=42423361&share_depth=11&share_source=timeline&share_user_mpuuid=05f5f60e244898b3df545570b1e83008&sharer_id=ojq1tt3oclQRmmay77Ic0eE6anSA&user_id=ohbsluNMqwyLce_4NlgT5Vk79pgc&v=5.0.0'



--[[
--	vpn()
--	delay(3)
--	openUrl(url)

立即下载 = {{{372, 772, 0xffd46c},{221, 734, 0xffd46c},{439, 790, 0xffd46c},{264, 795, 0xffd46c},}, 85, 200, 714, 475, 825}
打开 = {{{524, 632, 0x007aff},{403, 636, 0x007aff},{364, 627, 0xffffff},{486, 635, 0xffffff},}, 85, 323, 596, 556, 668}
取消 = {{{364, 636, 0x097fff},{494, 635, 0x007aff},{350, 625, 0xffffff},{522, 628, 0xffffff},}, 85, 323, 596, 556, 668}

apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.right_agree={{
	{475, 964, 0x49b849},
	{478, 968, 0xffffff},
}, 85, 323, 602, 624, 1132}

function newidfa()
	local timeline1 = os.time()
	local outtime1 = math.random(60,80)
	while os.time() - timeline1 < outtime1 do
		if active(appbid,4)then
			if d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
			else
				moveTo(600,300,100,100,30,50)
				delay(1)
				click(321, 978)
				delay(1)
				click(462, 666)
				delay(1)
			end
		else
			log("启动一次")
		end
	end
	return
end



function main()	
	local outtime = 60
	local timeline = os.time()
	local 弹窗打开key = false
	while os.time() - timeline < outtime do
		if d(立即下载,"立即下载",true) then
			弹窗打开key = true
		elseif 弹窗打开key and d(打开,"打开",true) then
			delay(15)
			return true
		elseif d(取消,'取消',true) then
		end
	end
	log('超时')
--	return true
end

function main1()	
	local outtime = 60
	local timeline = os.time()
	local 弹窗打开key = true
	while os.time() - timeline < outtime do
--		if d(立即下载,"立即下载",true) then
--			弹窗打开key = true
		if 弹窗打开key and d(打开,"打开",true) then
			delay(15)
			return true
--		elseif d(取消,'取消',true) then
		end
	end
	log('超时')
--	return true
end

------打开链接
function 打开链接()
--	for i = 1, 20 do
		vpnx()
		delay(3)
		if vpn() then
			delay(3)
			XXTfakerNewPhone(appbid)
			XXTfakerNewPhone(safari)
			openUrl(url)
			delay(15)
		end
--	end
end
--页面点击
function 页面点击()
--	for i = 1,15 do
		vpnx()
		delay(3)
		if vpn() then
			delay(3)
			XXTfakerNewPhone(appbid)
			XXTfakerNewPhone(safari)
			openUrl(url)
			delay(15)
			if main() then

			end	
		end
--	end
end

-----激活
function 激活()
--	for i = 1, 10 do
		vpnx()
		delay(3)
		if vpn() then
			delay(3)
			XXTfakerNewPhone(appbid)
			XXTfakerNewPhone(safari)
			openUrl(url)
			delay(15)
			if main() then
				newidfa()
			end	
		end
--	end	
end


index = 1
for i = 1,20 do
	index = index + 1
	if index%2 == 0 then
		log('激活')
		激活()
		if index%4 == 0 then
			log('打开链接')
			打开链接()
			log('页面点击')
			页面点击()
		end
	end
end






--lun = 0

--while true do
--	vpn()
--	lun = lun + 1
--	--打开
	
--	if lun%4 ~= 0 then
--		--点击
		
--		if lun%2 == then
			
--			--激活
--		end
--	end
	
	
	
--end



--function 激活1()
----	for i = 1, 10 do
--		vpnx()
--		delay(3)
--		if vpn() then
--			delay(3)
--			XXTfakerNewPhone(appbid)
----			XXTfakerNewPhone(safari)
----			openUrl(url)
----			delay(15)
----			if main1() then
--				newidfa()
----			end	
--		end
----	end	
--end



--while true do 
--	vpnx()
--	if vpn() then
--		XXTfakerNewPhone(safari)
--		openUrl(url)
--		delay(12)
		
--	end	
--end


--while true do
--				if 滑动key == 1 then
--					moveTo(120, 619,482, 622)
--					滑动key = 滑动key + 1
--				elseif 滑动key == 2 then
--					moveTo(120, 619,502, 622)
--					滑动key = 滑动key + 1
--				elseif 	滑动key == 3 then
--					moveTo(120, 619,525, 622)	
--					滑动key = 滑动key + 1
--					if 滑动key >= 3 then
--						滑动key = 1
--					end	
--				end

--delay(2)
--end



]]--



--vpnx()
--delay(2)
--vpn()
--delay(3)
--XXTfakerNewPhone('com.aomygod.aomaijia')
--delay(3)
----url = 'https://d1.wenjuan.link/c?z=wenjuan&la=0&si=127&ci=155&cg=52&c=248&or=238&l=1696&bg=1696&b=1810&u=https://m.aomygod.com/act-richang-waituiwenjuanwang9.html?tk=c1c0WXxusWN'
--url = 'https://d1.wenjuan.link/c?z=wenjuan&la=0&si=127&ci=155&cg=52&c=248&or=238&l=1697&bg=1697&b=1811&u=https://m.aomygod.com/act-richang-waituiwenjuanwang14.html?tk=cf30W7tSqLC'
--openUrl(url)



--delay(3)



--XXTfakerNewPhone('com.aomygod.aomaijia')


--app.run('com.apple.mobileslideshow')
--delay(5)

--clear.all_photos()



--[[

function getphotos(u)

	local c, h, r = http.get(u, 10)
	if (c == 200) then
		local img = image.load_data(r)
		img:save_to_album()
		nLog("图片已存到相册")
	else
		nLog("下载失败")
	end

end


for i = 1,20 do
	imgkey = math.random(1,2000)
	imgUrl = 'https://img.wenfree.cn/baihe/img-'..imgkey..'.jpg'
	getphotos(imgUrl)
--	delay(1)
end

--]]




--[[




apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.right_agree={{
		{475, 964, 0x49b849},
		{478, 968, 0xffffff},
		}, 85, 323, 602, 624, 1132}

function newidfa(name)
	local TIMEline = os.time()
	local OUTtime = rd(20,25 )
	while os.time()- TIMEline < OUTtime do
		if active(bid[name]['appbid'],4)then
			if d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
			else
				moveTo(600,300,100,100,30,50)
				delay(1)
				click(321, 978)
				delay(1)
				click(462, 666)
				delay(1)
			end
		else
			log("启动一次")
		end
	end
	return true
end
apparr.游客登录={{{597, 777, 0xffffff},{574, 782, 0xffffff},{573, 776, 0xf7663a},{513, 790, 0xf9825e},}, 85, 504, 754, 618, 797}
apparr.账号进入游戏={{{303, 770, 0xfefefa},{215, 751, 0xf9683b},{218, 787, 0xf96e39},{478, 752, 0xfd7c34},}, 85, 63, 715, 589, 834 }
apparr.协议确认={{{342, 878, 0xfcefd1},{265, 863, 0x745522},{378, 897, 0x664611},}, 85, 233, 849, 413, 919}
apparr.进入游戏={{{300, 912, 0xfaf4c8},{228, 895, 0x997e2d},{412, 943, 0x694619},}, 85, 177, 860, 489, 1077}
apparr.领取奖励={{{528, 869, 0xffffff},{465, 857, 0x897631},{565, 872, 0x6e5602},}, 85, 462, 849, 576, 885}
apparr.前往打怪={{{442, 640, 0xfcfcfa},{393, 632, 0x8f7c36},{485, 655, 0x6e5601},}, 85, 382, 626, 501, 667}
apparr.关闭窗口={{{619, 87, 0x7c5b29},{611, 74, 0xc0ab4f},{607, 62, 0x313336},}, 85, 590, 52, 636, 103}
function newplayer()
	local TIMEline = os.time()
	local OUTtime = math.random(240,280 )
	while os.time()- TIMEline < OUTtime do
		if active('com.sgt.gymc',4)then
			if d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
			elseif d(apparr.游客登录,"apparr.游客登录",true)then
			elseif d(apparr.账号进入游戏,"apparr.账号进入游戏",true)then
			elseif d(apparr.协议确认,"apparr.协议确认",true)then
			elseif d(apparr.进入游戏,"apparr.进入游戏",true)then
			elseif d(apparr.领取奖励,"apparr.领取奖励",true)then
			elseif d(apparr.前往打怪,"apparr.前往打怪",true)then
			elseif d(apparr.关闭窗口,"apparr.关闭窗口",true)then
			else
				click(323, 855)
				delay(1)
--				click(517, 863)
--				delay(1)
			end
		else
			log("启动一次")
		end
	end
	return true
end
gy = {}
gy.游客登录={{{ 97, 761, 0xf9825e},{100, 795, 0xffffff},{ 98, 821, 0xf86e44},{109, 851, 0xf8764e},}, 85, 89, 747, 129, 868}
gy.允许={{{216, 710, 0x007aff},{211, 705, 0xf9f9f9},{204, 436, 0x007aff},}, 85, 189, 364, 254, 761}
gy.进入游戏={{{111, 524, 0xfbfdfc},{ 83, 392, 0xfa6c38},{127, 402, 0xf9683b},{102, 772, 0xff8b32},}, 85, 76, 325, 157, 848}
gy.实名弹窗={{{551, 841, 0x515151},{550, 822, 0xffffff},{541, 562, 0xf8663d},{544, 553, 0xffffff},}, 85, 523, 492, 584, 864}
gy.下一步={{{53,  952, 0x304265},{72, 1055, 0x304369},{53,  991, 0x364e71},}, 85, 30, 923, 88, 1072}
gy.开启冒险={{{ 92,  868, 0x384a6b},{112,  961, 0x3a537a},{ 92, 1016, 0x344769},}, 85, 61, 838, 120, 1051}
gy.游戏公告={{{131, 570, 0x2992c4},{122, 513, 0x2164a3},{141, 615, 0x2575b0},}, 85, 107, 488, 161, 654}
gy.开始游戏={{{121, 629, 0x2571ae},{ 97, 502, 0x2162a1},{113, 499, 0x236ba8},}, 85, 74, 488, 145, 658}
gy.更新={{{188, 703, 0xdf9824},{193, 658, 0xd4881a},{189, 434, 0x2a91c4},}, 85, 171, 357, 209, 769}
function newplayer1()
	local TIMEline = os.time()
	local OUTtime = math.random(240,280 )
	local 切换网络key = true
	while os.time()- TIMEline < OUTtime do
		if active('com.sgt.gymc',4)then
			if 切换网络key then
				delay(15)
				vpnx()
				closeX(app.front_bid())
				切换网络key =false
			elseif d(apparr.right,"apparr.right",true)then
			elseif d(apparr.right_agree,"right_agree",true)then
			elseif d(gy.实名弹窗,"gy.实名弹窗",true)then
			elseif d(gy.游客登录,"apparr.游客登录",true)then
			elseif d(gy.允许,"gy.允许",true)then
			elseif d(gy.进入游戏,"gy.进入游戏",true)then
			elseif d(gy.下一步,"gy.下一步",true)then
			elseif d(gy.开启冒险,"gy.开启冒险",true)then
			elseif d(gy.游戏公告,"gy.游戏公告",true)then
			elseif d(gy.开始游戏,"gy.开始游戏",true)then
			elseif d(gy.更新,"gy.更新",true)then
			else
				click(323, 855)
				delay(1)
--				click(517, 863)
--				delay(1)
			end
		else
			log("启动一次")
		end
	end
	return true
end



--]]--













--vpn()
--XXTfakerNewPhone('com.pingan.creditcard')
--newplayer1()


--]]--








--[[]]

function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = douyinlist[key][1] or sys.mgcopyanswer("SerialNumber")
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = douyinlist[key][2] or account or device.name()
	idfalist.password = password or sys.version()
	idfalist.phone = phone
	idfalist.other = other
	idfalist.device =json.encode(fakerdevice) 
	return post(url,idfalist)
end


--udid = device.udid()
--nLog(udid)




--up('设备UDID',other)



--]]


--url = 'https://file091c85d85699.aiwall.com/v3/idea/fW1PkgZB?'
--url = 'http://ting.rfq.mobi/wh.php'

--openUrl(url)
--徐岩={{{150, 577, 0x221a1a},{162, 592, 0xffbea9},{133, 662, 0xb8b9d0},{122, 662, 0x0e0d12},{184, 661, 0x191c27},{176, 666, 0xfbf8fe},}, 85, 105, 146, 212, 1029}

--x, y = screen.find_color({{150, 577, 0x221a1a},{162, 592, 0xffbea9},{133, 662, 0xb8b9d0},{122, 662, 0x0e0d12},{184, 661, 0x191c27},{176, 666, 0xfbf8fe},}, 85, 105, 146, 212, 1029)

--while true do
--	if d(徐岩,'徐岩')then
--		if x ~= nil and y ~=nil then
--			for i= 1,10000 do
--			nLog('点击')
--			click(x+365,y)
--			end
----			up('投票点击',other)
--		end	
--	end
--end




appbid = 'com.ss.iphone.ugc.Aweme'


douyinlist = {
--{"周濡濡","1","https://v.douyin.com/XnbKXx/"},
--{"安慨慨","2","https://v.douyin.com/XnVh97/"},
--{"安砺砺","3","https://v.douyin.com/Xn4Mqo/"},
--{"张蓣蓣","4","https://v.douyin.com/Xn4d2W/"},
--{"张晓晓","5","https://v.douyin.com/XnKpSt/"},
--{"张庞庞","6","https://v.douyin.com/Xn31uQ/"},
--{"张亥亥","7","https://v.douyin.com/XWfFDV/"},
--{"张扩扩","8","https://v.douyin.com/XWjpUC/"},
--{"安绫绫","9","https://v.douyin.com/XWddnH/"},
--{"安泶泶","10","https://v.douyin.com/X7Ny9W/"},
--{"李育育","11","https://v.douyin.com/XWkMJE/"},
--{"周鸣鸣","12","https://v.douyin.com/Xnc5Cj/"},
--{"周习习","13","https://v.douyin.com/XWP7Rg/"},
--{"李奇奇","14","https://v.douyin.com/Xn4xgy/"},
--{"张铧铧","15","https://v.douyin.com/XnEqEo/"},
--{"安簿簿","16","https://v.douyin.com/Xnqy4f/"},
--{"李航航","17","https://v.douyin.com/XWk24a/"},
--{"安嵘嵘","18","https://v.douyin.com/XWSJ2R/"},
--{"张菱菱","19","https://v.douyin.com/XWaGsG/"},
--{"张驰驰","20","https://v.douyin.com/XW6fL1/"},
--{"周眧眧","21","https://v.douyin.com/Xn3TRo/"},
--{"安乐乐","22","https://v.douyin.com/X7UBnQ/"},
--{"周申申","23","https://v.douyin.com/X7JYyu/"},
--{"李园园","24","https://v.douyin.com/X769p7/"},
--{"周崴崴","25","https://v.douyin.com/X7RubL/"},
--{"张灿灿","26","https://v.douyin.com/X7dSCa/"},
--{"安逍逍","27","https://v.douyin.com/X7Y5rr/"},
--{"安姐姐","28","https://v.douyin.com/X7Rf6x/"},
--{"李倩倩","29","https://v.douyin.com/X78LWR/"},
--{"周翰翰","30","https://v.douyin.com/X7Fjwe/"},
--{"张堤堤","31","https://v.douyin.com/X7Ba31/"},
--{"周卜卜","32","https://v.douyin.com/X7jHor/"},
--{"周支支","33","https://v.douyin.com/X7yMr4/"},
--{"周伶伶","34","https://v.douyin.com/X78Msg/"},
--{"李惜惜","35","https://v.douyin.com/X7Fq2Y/"},
--{"周迎迎","36","https://v.douyin.com/X7Yen4/"},
--{"李戎戎","37","https://v.douyin.com/X72SFp/"},
--{"安悟悟","38","https://v.douyin.com/X7UQPt/"},
--{"安注注","39","https://v.douyin.com/XWoE2D/"},
--{"安溏溏","40","https://v.douyin.com/XWoMMf/"},
--{"周读读","41","https://v.douyin.com/X72N6U/"},
--{"周嵇嵇","42","https://v.douyin.com/X7RJm9/"},
--{"张琴琴","43","https://v.douyin.com/X7AMNH/"},
--{"安汾汾","44","https://v.douyin.com/X7d4TG/"},
--{"张鸾鸾","45","https://v.douyin.com/X76oo7/"},
--{"周钱钱","46","https://v.douyin.com/XWEQTF/"},
--{"周芦芦","47","https://v.douyin.com/X7DxC1/"},
--{"李萝萝","48","https://v.douyin.com/X7FLw8/"},
--{"李雍雍","49","https://v.douyin.com/X7Jyfa/"},
--{"安援援","50","https://v.douyin.com/XWoqyp/"},
--{"李粼粼","51","https://v.douyin.com/X7Nhjt/"},
--{"周徉徉","52","https://v.douyin.com/XWoDaU/"},
--{"张玢玢","53","https://v.douyin.com/X71LKL/"},
--{"李各各","54","https://v.douyin.com/X7MWoL/"},
--{"李岳岳","55","https://v.douyin.com/X7h2Jc/"},
--{"李汇汇","56","https://v.douyin.com/X7FR4f/"},
--{"周淋淋","57","https://v.douyin.com/X7rswS/"},
--{"安正正","58","https://v.douyin.com/X7FaGQ/"},
--{"李闻闻","59","https://v.douyin.com/X7SRuD/"},
--{"周绘绘","60","https://v.douyin.com/X7AtWW/"},
--{"周守守","61","https://v.douyin.com/X7NgV6/"},
--{"安佼佼","62","https://v.douyin.com/X7UBqA/"},
--{"李愫愫","63","https://v.douyin.com/X7Fgem/"},
--{"李令令","64","https://v.douyin.com/X7Ff3V/"},
--{"周教教","65","https://v.douyin.com/X7DeQ2/"},
--{"安萌萌","66","https://v.douyin.com/X7YS1q/"},
--{"安遇遇","67","https://v.douyin.com/X78wcX/"},
--{"安燕燕","68","https://v.douyin.com/XWEJ3r/"},
--{"安淼淼","69","https://v.douyin.com/X7Rkxd/"},
--{"李金金","70","https://v.douyin.com/X7e8eN/"},

--{"李社社","101","https://v.douyin.com/XntDv5/"},
--{"李梆梆","102","https://v.douyin.com/Xn3Usp/"},
--{"李芸芸","103","https://v.douyin.com/XnGxYv/"},
--{"张芍芍","104","https://v.douyin.com/XnQNdf/"},
--{"李颖颖","105","https://v.douyin.com/XnCV1p/"},
{"安镭镭","106","https://v.douyin.com/XnK9sa/"},
{"安阐阐","107","https://v.douyin.com/XnVHGV/"},
{"李珉珉","108","https://v.douyin.com/Xnw6cT/"},
{"张蔡蔡","109","https://v.douyin.com/XnTrpv/"},
{"安纡纡","110","https://v.douyin.com/X8DBbY/"},




}


dy = {}

dy.打开看看={{{475, 813, 0x161823},{443, 810, 0xffffff},{421, 810, 0x161823},{406, 810, 0x161823},{190, 817, 0x8e8f94},}, 85, 105, 777, 539, 846}
dy.作品界面={{{ 46,  82, 0xebecee},{529,  99, 0x324e68},{398, 149, 0x2a405a},{ 46, 375, 0x161823},{559, 464, 0x161823},}, 85, 14, 35, 603, 510}
dy.作品界面1={{{576, 303, 0x393a44},{551, 263, 0x393a44},{558, 408, 0x161823},{ 33, 381, 0x161823},{106, 512, 0x161823},}, 85, 12, 227, 596, 579}
dy.视频界面={{{592, 92, 0xffffff},{584, 65, 0xffffff},{570, 91, 0xffffff},{ 40, 86, 0xf1eded},}, 85, 30, 58, 605, 105}
dy.视频界面_操作界面={{{335, 1087, 0xeaeaea},{300, 1093, 0xeaeaea},{284, 1085, 0x242323},{377, 1084, 0x232223},}, 85, 238, 1051, 415, 1116}
dy.视频界面_操作界面_复制链接={{{293, 923, 0xebebeb},{256, 887, 0xebebeb},{277, 896, 0x363132},{273, 913, 0x353131},{275, 909, 0xebebeb},}, 85, 218, 854, 336, 1014}
dy.视频界面_暂无内容={{{270, 883, 0xe8e9ea},{299, 883, 0xe8e9ea},{336, 883, 0xe8e9ea},{369, 873, 0xe8e9ea},}, 85, 230, 856, 417, 918}
dy.视频界面_私密账号={{{304, 966, 0xe8e9ea},{274, 966, 0xe8e9ea},{223, 942, 0x161823},{428, 981, 0x161823},{398, 958, 0xe8e9ea},}, 85, 198, 919, 457, 996}
	key = 0
function getu()
	closeX(appbid)
	key = key + 1
	pasteboard.write(douyinlist[key][3])
	while true do
		if active(appbid,5) then
			if d(dy.打开看看,'dy.打开看看',true) then
			elseif d(dy.视频界面,'dy.视频界面') then
				if d(dy.视频界面_操作界面,'dy.视频界面_操作界面') then
					if d(dy.视频界面_操作界面_复制链接,'dy.视频界面_操作界面_复制链接',true) then
						up('抖音取链接',pasteboard.read())
						delay(2)
						return true
					else
						moveTo(484, 967,99, 961)
					end
				else
					click(575, 781)
				end
			elseif d(dy.作品界面,'dy.作品界面') or d(dy.作品界面1,'dy.作品界面1') then
--				if d(dy.视频界面_暂无内容,'dy.视频界面_暂无内容') then
--					up('抖音取链接','暂无内容')
--					return true
				if d(dy.视频界面_私密账号,'dy.视频界面_私密账号') then
					up('抖音取链接','私密账号')
					return true
				else
					click(114, 929)
				end
			end
		end
	delay(1)
	end	

end
while true do
getu()
end