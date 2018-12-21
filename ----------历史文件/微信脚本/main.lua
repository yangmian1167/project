-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('sjyuyan')
screen.init(0)
require('ml')




app_bid_wechat = 'com.tencent.xin'
we = {}
we_主界面 = {{{ 61, 1117, 0x4bc04a},{ 87, 1077, 0x1aad19},{560, 1119, 0x9e9e9e},}, 85, 1, 1039, 632, 1130}
we_主界面_红点 = {{{114, 254, 0xf43530},{119, 262, 0xf43530},{113, 275, 0xf43530},}, 85, 110, 246, 130, 941}
we_主界面_收到消息红点 = {{{108, 249, 0xf43530},{119, 260, 0xf43530},{113, 272, 0xf43530},}, 85, 103, 245, 126, 282}
we_主界面_找到麦克风ios11 = {{{591, 168, 0xc6c6c6},{591, 199, 0xc5c5c5},{354, 167, 0x8e8e93},{272, 169, 0x919196},}, 85, 252, 157, 614, 209}
we_主界面_找到麦克风ios10 = {{{280, 159, 0x919196},{354, 158, 0x9b9ba0},{591, 156, 0xc6c6c6},{591, 187, 0xc5c5c5},}, 85, 268, 152, 616, 194}
we_选择主界面 = {{{57, 1070, 0x7a7e83},{79, 1083, 0xf9f9f9},{62, 1114, 0x939393},}, 85}
we_返回主界面 = {{{22,  84, 0xffffff},{39,  67, 0xffffff},{39, 101, 0xffffff},{28,  84, 0x363539},}, 85, 14, 60, 115, 110}

we_聊天界面 = {{{ 22,   84, 0xffffff},{610,   84, 0xffffff},{ 37, 1088, 0x7f8389},{531, 1078, 0x7f8389},}, 85, 0, 0, 0, 0}
we_聊天界面_输入界面 = {{{508, 568, 0x7f8389},{530, 569, 0x7f8389},{536, 583, 0x8a8e93},{501, 583, 0x8a8e93},}, 85, 487, 550, 549, 610}
we_聊天界面_发送 = {{{517, 1090, 0x007aff},{530, 1083, 0x007aff},{566, 1086, 0x007aff},{581, 1083, 0xffffff},}, 85, 487, 1053, 635, 1129}
we_tips_通知 = {{{120, 659, 0x007aff},{247, 659, 0x007aff},{422, 660, 0x459dfe},{485, 661, 0x1786ff},}, 85, 51, 632, 573, 704}

function wechats()
	screen.init(0)
	local TimeLine = os.time()
	local UserTime = 60 * (n or 5)
	local 聊天启动_key = 0
	local 主动聊天_key = 0
	
	local 被动聊天_key = 0
	while os.time()-TimeLine <= UserTime do
		if active(app_bid_wechat,3) then
			if d(we_主界面,"we_主界面") then
				if d(we_主界面_红点,"we_主界面_红点",true,1) then
					delay(2)
				elseif d(we_主界面_找到麦克风ios11,"we_主界面_找到麦克风ios11") or  d(we_主界面_找到麦克风ios10,"we_主界面_找到麦克风ios10")then
					log("发现麦克风")
					delay(20)
					if 被动聊天_key < 3 and d(we_主界面_收到消息红点,"we_主界面_收到消息红点",true,1)then
						被动聊天_key = 被动聊天_key  + 1
						聊天启动_key = 0
					else	
						if 主动聊天_key < 1 then 
							click(571, 290)
							主动聊天_key = 主动聊天_key + 1
							聊天启动_key = 0
						end
					end
				else
					moveTo(508, 325,508, 410)
				delay(2)
				end
			elseif d(we_聊天界面,"we_聊天界面") then
				if click(127, 1089) then
				end	
				delay(15)
			elseif 聊天启动_key < 1 and	d(we_聊天界面_输入界面,"we_聊天界面_输入界面") then
					聊天启动_key = 聊天启动_key + 1
					if  app.input_text(random_yuyan()) then
						delay(2)
						d(we_聊天界面_发送,"we_聊天界面_发送",true,1) 
						delay(1)
					end	
			elseif 	d(we_返回主界面,"we_返回主界面",true,1) then
			elseif 	d(we_tips_通知,"we_tips_通知",true,1) then
			
			else	
				d(we_选择主界面,"we_选择主界面",true,1)
			end
		end
		delay(2)
	end
end

-----------
function killerall(times)
	timeline = os.time()
	while os.time()-timeline < times*60 do
		log("rest——time:"..os.time()-timeline)
		if app.front_bid()~= "com.apple.springboard" then
			closeX(app.front_bid())
		end
		delay(10)
	end
end

--var_times = {}
--var_times.start = 6
--var_times.rest = math.random(5,10)

--while true do
--	time_hour = tonumber(os.date("%H"))
--	time_min = tonumber(os.date("%M"))
--	local offset = math.random(1,10)
--	if time_hour >= 6 and time_min >= offset  and time_hour <=23then
--		wechats()
--		killerall(math.random(5,10))
--		mlbb()
--		killerall(math.random(5,10))
--	end
--	delay(5)
--end




--function 换区()
--	local statr={377,263}
--	local x_ml,y_ml = 303,83

--	for i=1,3 do
--		statr[1] = 377
--		for ii= 1,2 do
--			click(statr[1],statr[2],0.2)
--			触摸事件 = touch.down(statr[1],statr[2])					--左上角
--			触摸事件 = 触摸事件:move(statr[1]+303, statr[2])
--			触摸事件 = 触摸事件:move(statr[1]+303, statr[2]+83)			--右下角
--			触摸事件 = 触摸事件:move(statr[1], statr[2]+83)
--			触摸事件 = 触摸事件:move(statr[1], statr[2]):off()
			
--			click((statr[1]+x_ml/2),(statr[2]+y_ml/2))
--			statr[1] = statr[1] + 313
	
--end
--	end
--			statr[2] = statr[2] + 95
--	end
		














