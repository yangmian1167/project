-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
screen.init(0)



app_bid = {}
	app_bid_wechat = 'com.tencent.xin'
we = {}
we_主界面 = {{{ 61, 1117, 0x4bc04a},{ 87, 1077, 0x1aad19},{560, 1119, 0x9e9e9e},}, 85, 1, 1039, 632, 1130}
	we_主界面_红点 = {{{114, 254, 0xf43530},{119, 262, 0xf43530},{113, 275, 0xf43530},}, 85, 110, 246, 130, 941}

we_选择主界面 = {{{57, 1070, 0x7a7e83},{79, 1083, 0xf9f9f9},{62, 1114, 0x939393},}, 85}
we_返回主界面 = {{{22,  84, 0xffffff},{39,  67, 0xffffff},{39, 101, 0xffffff},{28,  84, 0x363539},}, 85, 14, 60, 115, 110}

we_聊天界面 = {{{ 22,   84, 0xffffff},{610,   84, 0xffffff},{ 37, 1088, 0x7f8389},{531, 1078, 0x7f8389},}, 85, 0, 0, 0, 0}
	we_聊天界面_输入界面 = {{{508, 568, 0x7f8389},{530, 569, 0x7f8389},{536, 583, 0x8a8e93},{501, 583, 0x8a8e93},}, 85, 487, 550, 549, 610}
	we_聊天界面_发送 = {{{517, 1090, 0x007aff},{530, 1083, 0x007aff},{566, 1086, 0x007aff},{581, 1083, 0xffffff},}, 85, 487, 1053, 635, 1129}
function wechat()
	time_l = os.time()
	tonumber = os.time()
	local lttime = 0
	time_hr = os.date("%H")
	tonumber = time_hr
	time_min = os.date("%M")
	tonumber = time_min
	time_t =(math.random(10,15)*60)

	while true do 
		log(time_hr)
		log(time_min)
		if (math.random(6,8) == time_hr) and (math.random(1,59) == time_min) then
			if active(app_bid_wechat,3) then
				if d(we_主界面,"we_主界面") then
					if d(we_主界面_红点,"we_主界面_红点",true,1) then
						delay(2)
					else
						click(571, 290) 
					end
				elseif d(we_聊天界面,"we_聊天界面") then
					if click(127, 1089) then
					end	
				elseif	d(we_聊天界面_输入界面,"we_聊天界面_输入界面") then
					if (os.time() - time_l) < (math.random(10,15)*60)  then	
						if  app.input_text('下午好呀') then
							d(we_聊天界面_发送,"we_聊天界面_发送",true,1) 
						end	
					else
						return true
					end	
				elseif 	d(we_返回主界面,"we_返回主界面",true,1) then
				else	
					d(we_选择主界面,"we_选择主界面",true,1)
				end
			end
		elseif  app.front_bid() == app_bid_wechat then
			app.close(app_bid_wechat)
		end	
	delay(2)
	end
end
wechat()

	





