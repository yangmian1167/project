-- 此处为nLog功能实现操作
nLog = require('nLog')()
require("xxtsp")






xin={}
xin.back={{{25, 84, 0xffffff},{35, 84, 0x39383c},{39, 69, 0xffffff},{39, 99, 0xffffff},}, 85, 11, 56, 154, 111}
----------home
	xin.home_gay={{{71, 1093, 0x7a7e83},{71, 1096, 0xf9f9f9},}, 85, 35, 1079, 100, 1133}
	xin.home_active={{{75, 1076, 0x1aad19},{59, 1069, 0x1aad19},{74, 1088, 0x1aad19},}, 85, 39, 1050, 110, 1111}
	xin.home_active_red={{{ 75, 1082, 0x1aad19},{102, 1065, 0xff3b30},}, 85, 41, 1049, 115, 1105}
----------chat
xin.chat_UI={{{592, 1088, 0x7f8389},{592, 1100, 0x7f8389},{581, 1090, 0xf5f5f7},{581, 1086, 0x7f8389},}, 85, 626, 1122, 562, 413}
	xin.chat_send={{{556, 1097, 0x007aff},{546, 1085, 0xffffff},}, 85, 494, 1059, 628, 1125}
xin.chat_new_replay={{{109, 277, 0xf43530},{111, 283, 0xf4f4f8},{122, 264, 0xf43530},{125, 264, 0xf4f4f8},}, 85, 85, 229, 133, 1036}


function homeUI()
	if d(xin.back,"xin.back",true)then
	elseif d(xin.home_gay,"xin.home_gay",true)then
	elseif d(xin.home_active_red,"xin.home_active_red",true)then
		return true
	elseif d(xin.home_active,"xin.home_active",true)then
		return true
	end
end

function wecaht()
	TimeLine = os.time()
	OutTimes = 60*3
	replay_key = true

	while os.time()-TimeLine < OutTimes do
		if replay_key and d(xin.chat_UI,"xin.chat_UI")then
			click(x-400,y)
			input("ni hao")
			if d(xin.chat_send,"xin.chat_send",true)then
				delay(5)
				replay_key = false
			end
		elseif homeUI() then
			if d(xin.chat_new_replay,"xin.chat_new_replay",true)then
				delay(3)
				replay_key = true
			end
		end
		delay(2)
	end	
end

--[[]]
wecaht()

--]]


























