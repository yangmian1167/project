-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
log('load-xxtsp')


aso={
	--设置全局变量
	appleID = 'si73eeh1e71@inbox.ru',
	appleID_pwd = 'Cc667766',
	key_word = '游戏',
	app_id = '1079837155',
	app_bid = 'com.hotmanapp.JsfcCN',
	commnet_name = '评论用户名',
	commnet_title = '评论标题',
	commnet_content = '评论内容',
	star_mun = 5,
	
	AppStore = 'com.apple.AppStore',
	Setting	 = 'com.apple.Preferences',
	}


ui={}




ui.tips={}
	ui.tips.alert={{{322,1,0x939394},{377,1,0x939394},{420,1,0x939394},},85}
		ui.tips.logout={{{361,704,0x007aff},{375,704,0xf7f7f7},{394,704,0x1082ff},}, 85, 325, 682, 422, 726}
		ui.tips.needID={{{431,357,0xf6f8f9},{431,356,0x000000},{431,333,0x0a0b0b},
				{437,334,0xe6e9ea},{438,334,0x000000},}, 85, 420, 289, 467, 383}
		ui.tips.loginbotton={{{515,571,0x007aff},{509,571,0xf9f9f9},{492,587,0x007aff},}, 85, 453, 516, 562, 649}
		
		---need pwd
		ui.tips.needpwd={{{504,336,0x000000},{504,334,0xf8f8f8},{504,328,0x000000},
				{504,344,0x000000},{504,326,0xf8f8f8},{509,341,0x090909},{509,340,0xf8f8f8},}, 85, 500, 308, 515, 378}
		ui.tips.needok={{{592,549,0x323232},{509,554,0x000000},{516,788,0x007aff},},85}
		ui.tips.tipAgree={{{530,776,0x007aff},{310,781,0x007aff},{602,552,0x121212},{602,553,0xf9f9f9},},85}
		
		ui.tips.left={{{245,799,0x007aff},{245,794,0x007aff},}, 85, 123, 499, 364, 846}
	ui.tips.pageAgree={{{608,85,0x007aff},{554,93,0x000000},{543,93,0x000000},{531,93,0x000000},},85}	
		
function tips()
	if d(ui.tips.alert,"alert")then
		if d(ui.tips.needpwd,"needpwd")then
			input(aso.appleID_pwd)
			click(517, 589)
			delay(2)
		elseif d(ui.tips.needok,"needok",true,3)then
		elseif d(ui.tips.tipAgree,"tipAgree",true,1)then
			delay(5)
		elseif d(ui.tips.left,"left",true)then
		else
			return true
		end
	elseif d(ui.tips.pageAgree,"pageAgree",true,1)then
	end
end


ui.login={}
ui.login.iTunesStore={{{522,82,0x131313},{523,82,0xf5f5f7},{526,78,0x303031},},85}
	ui.login.loginok={{{428,244,0x007aff},{423,244,0xffffff},{419,244,0x037cff},}, 85, 293, 208, 543, 280}
	ui.login.loginbotton={{{55,243,0x007aff},{34,255,0x007aff},{34,253,0xffffff},}, 85, 20, 213, 132, 274}

function login(appleID,appleID_pwd)
	注销 = true
	登录 = false
	计时 = os.time()
	超时 = 60 * 3 --3分钟超时
	打开 = true
	
	while os.time()-计时 < 超时 do
		if d(ui.login.iTunesStore,'iTunesStore')then
			
			if 注销 and d(ui.login.loginok,"loginok",true)then
				delay(2)
			elseif 登录 and d(ui.login.loginok,"loginok",false)then
				closeX(aso.AppStore)
				delay(2)
				return true
			elseif d(ui.login.loginbotton,"loginbotton",true)then
			else
				log('返回顶部')
				click(width/2,20)
				delay(1)
			end
		elseif d(ui.tips.alert,"alert")and d(ui.tips.logout,"logout",true)then
			注销 = false
		elseif d(ui.tips.alert,"alert")and d(ui.tips.needID,"needID")then
			input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
			input(appleID)
			click(655,1286) --点击换行
			input(appleID_pwd)
			if d(ui.tips.loginbotton,"loginbotton",true)then
				delay(5)
				登录 = true
				注销 = false
			end
		else
			if 打开 then
				openURL("prefs:root=STORE")
				打开 = false
				mSleep(1000*3)
			else
				active(aso.Setting,3)
			end
		end
		delay(1)
	end
end

--login(aso.appleID,aso.appleID_pwd)
ui.store={}
ui.store.home={{{531,1281,0x929292},{74,1273,0x007aff},{655,1280,0x929292},},85}
ui.store.searchUI={{{531,1281,0x007aff},{361,1286,0x929292},{203,1279,0x929292},},85}
	ui.store.searchIcon={{{345,90,0x8e8e93},{381,84,0xe4e5e7},{384,83,0x8f8f94},}, 85, 312, 60, 437, 108}
	ui.store.app={{{669,242,0x0080fc},{669,239,0xffffff},}, 85, 631, 145, 731, 331}
	ui.store.appPage={{{681,90,0x007aff},{698,86,0xf9f9f9},{698,85,0x007aff},},85}
ui.store.seachbutton={{{673,1292,0xfeffff},{658,1286,0x007aff},}, 85, 592, 1256, 730, 1317}
---buy
ui.store.buy={{{686,333,0x0080fc},{684,333,0xffffff},{675,358,0x0080fc},
			{718,329,0x0080fc},{668,309,0x0080fc},{688,333,0xffffff},}, 85, 589, 251, 727, 500}
ui.store.install={{{656,331,0x19ab20},{666,307,0x19ab20},{641,357,0x19ab20},}, 85, 517, 184, 737, 537}
ui.store.download={{{686,324,0x0080fc},{686,323,0xffffff},{701,324,0x0080fc},{702,324,0xffffff},
			{694,307,0x0080fc},{694,357,0x0080fc},{718,331,0x0381fc},}, 85, 637, 247, 738, 504}
ui.store.open={{{679,331,0x0080fc},{691,324,0xfdfefe},{691,321,0x0080fc},{719,321,0x0080fc},
			{686,307,0x0080fc},{682,357,0x0080fc},{685,339,0xffffff},}, 85, 605, 244, 741, 492}
ui.store.cloud={{{694,326,0x0080fc},{694,325,0xffffff},{694,351,0x0080fc},
			{698,340,0xfdfdfd},{699,340,0x7f7f7f},}, 85, 625, 267, 743, 507}

function buy(key_word,app_id,app_bid)
	计时 = os.time()
	超时 = 60 * 5 --3分钟超时
	local topPath = '/var/mobile/topitemid.txt'
	writeFile(topPath,{app_id})
	
	while os.time()-计时 < 超时 do
		if active(aso.AppStore,3)then
			if d(ui.store.home,"home",true,1)then
			elseif d(ui.store.searchUI,"searchUI")then
				if d(ui.store.appPage,"appPage")then
					log('downpage')
					if d(ui.store.open,"open")then
						app.uninstall(app_bid)
						delay(1)
					elseif d(ui.store.download,"download",true)then
						delay(1)
					elseif d(ui.store.install,"install",true)then
						delay(1)
					elseif d(ui.store.buy,"buy",true)then
						delay(1)
					elseif d(ui.store.cloud,"cloud")then
						return true
					end
				elseif d(ui.store.searchIcon,"searchIcon",true)then
					input('\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b')
					input(key_word)
					click(421, 1284,0.5)
					d(ui.store.seachbutton,"seachbutton",true)
				elseif d(ui.store.app,"app")then
					click(119, 244)
				end
			elseif d(ui.store.seachbutton,"seachbutton",true) then
			else
				tips()
			end
		end
		delay(0.5)
	end
end

login(aso.appleID,aso.appleID_pwd)
buy(aso.key_word,aso.app_id,aso.app_bid)






























































