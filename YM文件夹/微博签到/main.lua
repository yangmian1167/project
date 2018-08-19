nLog = require('nLog')()
require('faker')
require('xxtsp')
require('name')






app.bid = {}
app.bid_weibo = "com.sina.weibo"

wb = {}
wb.主界面 = {{{305, 1074, 0xff8200},{352, 1107, 0xff8200},{320, 1092, 0xffffff},}, 85}
wb.主界面_微博界面 = {{{47, 1111, 0x4c4c4c},{80, 1127, 0x989898},}, 85}
wb.主界面_微博界面_活动= {{{506,  70, 0xff3d2e},{500,  90, 0xf9ca6a},{528, 105, 0xd41900},}, 85, 482, 63, 546, 111}

wb.活动界面 = {{{ 28, 83, 0x606060},{241, 70, 0x333333},{402, 91, 0x363636},}, 85}
wb.活动界面_填写邀请码= {{{521, 678, 0xffffff},{598, 661, 0xff9321},{222, 650, 0xff6a95},{ 38, 653, 0x333333},}, 85, 33, 224, 605, 1112}
wb.活动界面_签到成功= {{{ 92, 339, 0xb24707},{336, 635, 0xfe7e11},{586, 804, 0xfe961d},}, 85, 59, 316, 592, 812}
wb.活动界面_关注= {{{602, 245, 0xff8200},{ 38, 236, 0x6a6a6a},{120, 236, 0xff7800},{187, 233, 0xffa03f},}, 85, 38, 200, 607, 1060}
wb.活动界面_关注1= {{{602, 620, 0xff8200},{187, 605, 0xff880e},{120, 606, 0xff7c07},{ 39, 605, 0x333333},}, 85, 38, 226, 606, 968}
wb.活动界面_点赞= {{{602, 182, 0xff8200},{187, 166, 0xffb262},{120, 170, 0xff7800},{ 38, 183, 0x333333},}, 85, 36, 139, 606, 964}
wb.活动界面_点赞1= {{{602, 768, 0xff8200},{187, 751, 0xff8200},{120, 753, 0xff7800},{ 38, 766, 0x333333},}, 85, 36, 236, 608, 965}
wb.活动界面_活跃度宝箱1= {{{196, 738, 0xffec0a},{192, 746, 0xffea00},{287, 758, 0xbb6c36},{280, 822, 0xb76634},}, 85, 68, 169, 579, 900}
wb.活动界面_活跃度宝箱2= {{{349, 533, 0xffea00},{442, 550, 0xf7952c},{436, 615, 0xfac263},{358, 613, 0xee5a00},}, 85, 130, 489, 460, 934}
wb.活动界面_活跃度宝箱3= {{{356, 753, 0xef5c01},{440, 756, 0xf27010},{358, 822, 0xf0660a},{435, 822, 0xf06005},{398, 794, 0xb97329},{398, 781, 0xcf9540},}, 85, 160, 233, 470, 1132}
wb.活动界面_宝箱弹窗 = {{{ 82, 340, 0xb8561b},{345, 879, 0xff890f},}, 85}
wb.活动界面_返回 = {{{ 28, 83, 0x606060},{ 62, 72, 0x333333},{238, 70, 0xc8c7c6},}, 85}
wb.活动界面_转发微博 = {{{602, 250, 0xff8200},{252, 236, 0xffb262},{185, 239, 0xffa04b},{ 37, 231, 0x6c6c6c},{ 37, 248, 0x838383},}, 85, 31, 128, 607, 946}
wb.活动界面_评论 = {{{602, 549, 0xff8505},{187, 532, 0xffa547},{120, 535, 0xff7800},{ 37, 531, 0x797979},}, 85, 36, 168, 608, 966}
wb.活动界面_评论1 = {{{602, 292, 0xff8200},{200, 280, 0xffa13f},{120, 283, 0xff7800},{ 37, 278, 0x797979},{ 41, 293, 0xababab},}, 85, 31, 142, 608, 951}
wb.活动界面_发微博 = {{{602, 843, 0xff8200},{219, 830, 0xff8200},{152, 833, 0xff7800},{ 37, 845, 0x9a9a9a},}, 85, 35, 167, 606, 966}
wb.活动界面_发微博1 = {{{602, 590, 0xff8200},{232, 577, 0xff8200},{152, 579, 0xffa04b},{ 39, 575, 0xe5e5e5},{ 37, 593, 0xe0e0e0},}, 85, 31, 142, 608, 951}
wb.活动界面_熊猫守护者 = {{{602, 359, 0xff8200},{350, 342, 0xffb262},{283, 346, 0xff7800},{ 38, 344, 0x989898},{ 38, 359, 0xbdbdbd},}, 85, 35, 130, 607, 970}





wb.event = {}
wb.event_邀请码界面 = {{{ 29, 82, 0x606060},{271, 68, 0x585858},{366, 97, 0xc0c0c0},}, 85}
wb.event_邀请码界面_确定 = {{{287, 451, 0xffffff},{133, 458, 0xf6a349},{497, 470, 0xf89b48},}, 85, 111, 387, 532, 822}
wb.event_关注界面 = {{{ 29, 82, 0x606060},{616, 83, 0x616161},}, 85}
wb.event_点关注 = {{{521, 295, 0xff8200},{618, 295, 0xff8200},{545, 296, 0xff8a00},}, 85, 511, 253, 627, 1082}
wb.event_点赞评论界面 = {{{ 29, 81, 0x606060},{253, 72, 0x333333},{387, 89, 0x9a9a9a},}, 85}
wb.event_转发评论点赞 = {{{ 80, 981, 0x646464},{292, 981, 0x646464},{488, 990, 0x636363},}, 85, 28, 891, 626, 1128}
wb.event_转发微博界面 = {{{ 24, 73, 0x333333},{246, 58, 0x333333},{369, 74, 0x333333},}, 85}
wb.event_熊猫守护者界面 = {{{ 32, 78, 0x606060},{236, 72, 0x9d9d9d},{239, 97, 0x9c9c9c},}, 85}
wb.event_评论界面 = {{{27, 81, 0x636363},{61, 69, 0xc6c6c6},{55, 97, 0x434343},}, 85}
wb.event_发微博界面 = {{{ 22, 72, 0x474747},{264, 54, 0xd2d2d2},{285, 79, 0x898989},}, 85}
wb.event_发送微博 = {{{607, 73, 0xff8200},{570, 60, 0xff8200},{543, 85, 0xff8200},}, 85, 529, 54, 619, 116}
wb.event_加入熊猫守护者 = {{{377,  947, 0xfefffe},{339, 1048, 0x2ec15f},{ 78, 1048, 0x2ec15f},}, 85, 74, 904, 598, 1084}
wb.event_转发按钮 = {{{ 81, 985, 0x636363},
		{ 97, 976, 0xffffff},{ 98, 976, 0x656565},{105, 984, 0xffffff},{105, 982, 0x636363},}, 85, 40, 100, 120, 1350}
wb.event_评论按钮 = {{{274, 716, 0x686868},
		{279, 716, 0xffffff},{280, 716, 0xb8b8b8},{285, 716, 0xb8b8b8},
		{286, 716, 0xffffff},{287, 716, 0xb2b2b2},{291, 716, 0x676767},}, 85, 261, 130, 310, 1200}

wb.event_点赞按钮 = {{{488, 857, 0x8a8a8a},
		{491, 857, 0xffffff},{492, 857, 0x636363},{503, 837, 0x7a7a7a},
		{516, 850, 0x8c8c8c},{503, 865, 0x636363},}, 85, 464, 130, 525, 1200}
wb.event_点赞按钮1 = {{{479, 1084, 0x636363},
		{483, 1084, 0xd8d8d8},{484, 1084, 0x636363},{502, 1085, 0xd7d7d7},
		{504, 1085, 0x8c8c8c},{505, 1085, 0xffffff},{508, 1085, 0x636363},}, 85, 464, 130, 525, 1200}
wb.event_点赞 = {{{488, 920, 0x646464},{503, 894, 0x646464},{516, 906, 0x636363},{513, 921, 0x696969},}, 85, 465, 538, 555, 1124}
wb.event_点转发微博 = {{{71, 963, 0x9e9e9e},{71, 941, 0xc6c6c6},{96, 941, 0xc5c5c5},{96, 963, 0x9d9d9d},}, 85, 29, 865, 181, 1131}
wb.event_发送 = {{{540, 71, 0xff8200},{555, 76, 0xff8405},{590, 79, 0xffc68a},}, 85, 529, 56, 619, 113}
wb.event_点评论 = {{{286, 1104, 0x767676},{271, 1096, 0x6f6f6f},{271, 1080, 0x6d6d6d},{298, 1080, 0x727272},}, 85, 256, 1067, 310, 1116}
wb.event_发送评论 = {{{558, 509, 0xff8d17},{597, 509, 0xfdb365},{614, 528, 0xfdab55},}, 85, 547, 488, 625, 537}

wb.tips = {}
wb.tips_转发 = {{{47, 846, 0x727272},
		{68, 818, 0xa9a9a9},{72, 818, 0xe3e3e3},{73, 818, 0x777777},
		{82, 828, 0xbcbcbc},{82, 831, 0xffffff},{82, 832, 0x959595},}, 85, 43, 130, 92,1100}
wb.tips_点关注确定 = {{{430, 852, 0xfc9f19},{130, 851, 0x636363},}, 85}
wb.tips_我知道了 = {{{ 88, 344, 0xb24707},{141, 771, 0xff7500},{251, 868, 0xff8200},}, 85}
wb.tips_访问位置= {{{439, 682, 0x1786ff},{184, 683, 0x007aff},{135, 689, 0xf7f7f7},}, 85}
wb.tips_微博故事关闭= {{{ 48,  67, 0x929292},{ 75,  95, 0xffffff},{602,  40, 0x141414},{587, 918, 0x141414},{ 73, 918, 0x141414},}, 85}
wb.tips_领取红包关闭= {{{320, 891, 0xcdcccc},{ 43, 263, 0xd22116},{303, 404, 0xffcd9a},}, 85}

function tips()
	if d(wb.tips_转发,"wb.tips_转发",true,1) then
	elseif d(wb.tips_点关注确定,"wb.tips_点关注确定",true,1) then
	elseif d(wb.tips_我知道了,"twb.tips_我知道了",true,1) then
	elseif d(wb.tips_访问位置,"twb.tips_访问位置",true,1) then
	elseif d(wb.tips_微博故事关闭,"twb.tips_微博故事关闭",true,1) then
	elseif d(wb.tips_领取红包关闭,"twb.tips_领取红包关闭",true,1) then
	else
		return "no_tips"
	end	
end


function event()
	if d(wb.event_邀请码界面,"wb.event_邀请码界面") then
		delay(3)
		if d(wb.event_邀请码界面_确定,"wb.event_邀请码界面_确定",true,1) then
		else	
			click(249, 587)
			input('2171174342')
		end
	elseif d(wb.event_熊猫守护者界面,"wb.event_熊猫守护者界面") then
		if d(wb.event_加入熊猫守护者,"wb.event_加入熊猫守护者",true,1) then
			活动返回 = true
		else
			click(32, 81)
		end
	elseif d(wb.event_关注界面,"wb.event_关注界面") then
		if d(wb.event_点关注,"wb.event_点关注",true,1) then	
			活动返回 = true
		else		
			click(32, 81)
		end		
	elseif d(wb.event_点赞评论界面,"wb.event_点赞评论界面") then
		if 点赞key and d(wb.event_点赞按钮,"wb.event_点赞按钮",true) or d(wb.event_点赞按钮1,"wb.event_点赞按钮1",true) then
			活动返回 = true
			点赞key = false
		elseif 评论key and d(wb.event_评论按钮,"wb.event_评论按钮",true) then
			活动返回 = true
			评论key = false
		elseif 转发key and d(wb.event_转发按钮,"wb.event_转发按钮",true) then
			活动返回 = true
			转发key = false
		else
			click(32, 81)
		end
	elseif d(wb.event_转发微博界面,"wb.event_转发微博界面") then 
		if d(wb.event_发送,"wb.event_发送",true,1) then
			活动返回 = true
		end	
	elseif d(wb.event_评论界面,"wb.event_评论界面") then 
		if 点评论key and d(wb.event_点评论,"wb.event_点评论",true,1) then 
			input(random_name())
			d(wb.event_发送评论,"wb.event_发送评论",true,1)
			点评论key = false
		else
			click(32, 81)
		end
	elseif d(wb.event_发微博界面,"wb.event_发微博界面") then 
		if d(wb.event_发送微博,"wb.event_发送微博",true,1) then 
			活动返回 = true
		else	
			input(random_name())
		end
	else
		return "no_event"
	end
end


function weibo() 
	local timeline = os.time()
	local 启动time = os.time()
	local 随机启动时间 = math.random(30,250)
	活动返回 = false
	点赞key = false
	评论key = false
	转发key = false
	点评论key = false    -- 第二级评论的开关，评论分两级两个界面
	滑动浏览 = true
	浏览outtime = os.time()
	浏览timeline = math.random(120,250) + 随机启动时间
	随机滑动结束距离 = math.random(390,630)
	随机滑动起始距离 = math.random(800,900)
	while   os.time() - timeline < 60 * 25 do
		if os.time() - 启动time > 随机启动时间 then
			if active(app.bid_weibo,5) then
				if d(wb.主界面,"wb.主界面") then
					if os.time() - 浏览outtime < 浏览timeline then
						moveTo(417, 随机滑动起始距离,530, 随机滑动结束距离)
						delay(sys.msleep(math.random(1300,2100)))
					elseif d(wb.主界面_微博界面_活动,"wb.主界面_微博界面_活动",true,1) then
					elseif d(wb.主界面_微博界面,"wb.主界面_微博界面",true,1) then
					end	
				elseif d(wb.活动界面,"wb.活动界面") then
					if 活动返回  and d(wb.活动界面_返回,"wb.活动界面_返回",true,1) then
						活动返回 = false
					elseif d(wb.活动界面_签到成功,"wb.活动界面_签到成功",true,1) then
					elseif d(wb.活动界面_活跃度宝箱1,"wb.活动界面_活跃度宝箱1",true,1) then
					elseif d(wb.活动界面_活跃度宝箱2,"wb.活动界面_活跃度宝箱2",true,1) then
					elseif d(wb.活动界面_活跃度宝箱3,"wb.活动界面_活跃度宝箱3",true,1) then
					elseif d(wb.活动界面_填写邀请码,"wb.活动界面_填写邀请码",true,1) then
					elseif d(wb.活动界面_熊猫守护者,"wb.活动界面_熊猫守护者",true,1) then
					elseif d(wb.活动界面_关注,"wb.活动界面_关注",true,1) or d(wb.活动界面_关注1,"wb.活动界面_关注1",true,1) then
					elseif d(wb.活动界面_点赞,"wb.活动界面_点赞",true,1) or d(wb.活动界面_点赞1,"wb.活动界面_点赞1",true,1)  then
						点赞key = true
					elseif d(wb.活动界面_转发微博,"wb.活动界面_转发微博",true,1) then
						转发key = true
					elseif d(wb.活动界面_评论,"wb.活动界面_评论",true,1) or d(wb.活动界面_评论1,"wb.活动界面_评论1",true,1) then
						评论key = true
						点评论key = true
					elseif d(wb.活动界面_发微博,"wb.活动界面_发微博",true,1) or d(wb.活动界面_发微博1,"wb.活动界面_发微博1",true,1) then

					elseif d(wb.活动界面_宝箱弹窗,"wb.活动界面_宝箱弹窗",true,1) then
					else
						delay(1.5)
						moveTo(442, 795,436, 523)
					end
				else
					if event() == "no_event" then
						if tips() == "no_tips" then
							click(40,40)
						end
					end
				end
				delay(1)
			end
		end
	end	
	closeX(app.bid_weibo)
end	
weibo() 






























































