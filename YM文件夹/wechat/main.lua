-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('name')
screen.init(0)



bid = {}
bid.wx = "com.tencent.xin"




function 随机主动聊天()
	local dianji = {
		{73, 252},
		{68, 384},
		{97, 513},
		{124, 642},
		}
	local sjkey = math.random(1,4)
	log(sjkey)
	click(dianji[sjkey][1],dianji[sjkey][2])
end

wx = {}

wx.主界面微信界面 = {{{ 80, 1081, 0x1aad19},{ 68, 1116, 0x09aa07},{618,   73, 0x343439},}, 85}
wx.微信 = {{{ 63, 1085, 0x1aad19},{605,   84, 0xffffff},}, 85}
wx.通讯录 = {{{235, 1060, 0x1aad19},{614,   84, 0xfbfbfb},}, 85}
wx.发现 = {{{410, 1085, 0x1aad19},{353,   94, 0xffffff},}, 85}
wx.我 = {{{563, 1058, 0x1aad19},{335,   92, 0xffffff},}, 85}

wx.微信_消息红点 = {{{ 90, 783, 0xf43530},{106, 767, 0xf43530},{122, 784, 0xf43530},{105, 800, 0xf43530},}, 85, 89, 127, 125, 1036}
wx.event_聊天界面 = {{{491, 1087, 0x83868c},{519, 1059, 0x83868c},{517, 1114, 0x888c91},
					{546, 1084, 0x8f9297},{565, 1085, 0x888c91},{592, 1059, 0x83868c},
					{620, 1085, 0x888c91},{590, 1114, 0x8f9297},}, 85, 485, 543, 631, 1135}
wx.event_准备点对话框 = {{{19, 1085, 0x888c91},{46, 1059, 0x83868c},{74, 1085, 0x888c91},
						{46, 1114, 0x83868c},{33, 1087, 0xf5f5f7},{34, 1087, 0xa0a3a8},
						{39, 1087, 0x82868c},{40, 1087, 0xf5f5f7},}, 85, 15, 1057, 78, 1117}
wx.event_准备输入内容 = {{{19, 1085, 0x888c91},{46, 1059, 0x83868c},{74, 1085, 0x888c91},
						{46, 1114, 0x83868c},{33, 1087, 0xf5f5f7},{34, 1087, 0xa0a3a8},
						{39, 1087, 0x82868c},{40, 1087, 0xf5f5f7},}, 85, 15, 547, 78, 609}
wx.event_聊天发送= {{{493, 1061, 0x007aff},{622, 1118, 0x007aff},{534, 1078, 0xfafdff},{556, 1105, 0x5dabff},}, 85, 488, 1054, 633, 1128}


wx.返回 = {{{38,  67, 0x9a9a9c},{39,  67, 0xffffff},{40,  67, 0x9a9a9c},{22,  83, 0x9c9b9d},  --目前全局通用的返回
			{22,  84, 0xffffff},{22,  85, 0x9c9b9d},{38, 101, 0x9c9c9e},
			{39, 101, 0xffffff},{40, 101, 0x9c9c9e},}, 85, 19, 60, 47, 110}


function wexin()
	local 聊天一次 = true
	
	while true do
		if active(bid.wx,5) then
			if d(wx.微信,"wx.微信")then
				delay(math.random(sys.msleep(1025,2008)))
				if d(wx.微信_消息红点,"wx.微信_消息红点",true,1) then	
				elseif 聊天一次 then
					delay(math.random(sys.msleep(1025,2008)))
					随机主动聊天()
					聊天一次 = false
				end
			elseif d(wx.通讯录,"wx.通讯录")then	
				click(63, 1085)
			elseif d(wx.发现,"wx.发现")then	
				click(63, 1085)
			elseif d(wx.我,"wx.我")then	
				click(63, 1085)

			elseif d(wx.event_聊天界面,"wx.event_聊天界面") then
				if d(wx.event_准备点对话框,"wx.event_准备点对话框") then
					click(110, 1098)
					delay(math.random(sys.msleep(1025,2008)))
				elseif d(wx.event_准备输入内容,"wx.event_准备输入内容") then
					input(random_name())
					delay(math.random(sys.msleep(5124,8745)))
					if d(wx.event_聊天发送,"wx.event_聊天发送",true,1) then
						d(wx.返回,"wx.返回",true,1)	
					end	
				end
			else
				delay(math.random(sys.msleep(1025,2008)))
				d(wx.返回,"wx.返回",true,1)	
				
			end
		end
	end
end 


wexin()









