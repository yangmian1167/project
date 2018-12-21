-- 此处为nLog功能实现操作
nLog = require('nLog')()
require("xxtsp")

app_bid = {}
app_bid.mlbb = "com.tencent.mlbb"
screen.init(1)

--参数要严格按照 大纲形式 优先级顺序排列 否则报错 --
ml={}
ml.tips={}
ml.event={}
--登录和创建

ml.创建角色={}
	ml.创建角色_创建角色界面1={{{ 907, 338, 0x6bbded},{ 967, 338, 0x6dd970},{1027, 336, 0xf35a3d},}, 85}
	ml.创建角色_下一步={{{1055, 592, 0x773d15},{1029, 581, 0xd2b696},{ 965, 566, 0xccbfb2},{ 965, 566, 0xccbfb2},}, 85, 925, 551, 1081, 602}
	ml.创建角色_创建角色界面2={{{694, 571, 0x5d050b},{678, 571, 0x090501},}, 85}
	ml.创建角色_创建={{{1044, 588, 0x4e2401},{1023, 586, 0x884a17},{ 950, 582, 0x663309},}, 85, 916, 563, 1081, 614}
	ml.创建角色_名字存在确定={{{549, 347, 0x79400e},{549, 354, 0xe4d4c2},{596, 359, 0x884717},}, 85, 511, 331, 627, 382}
	
	ml.tips_宠物卡片确定={{{683,561,0x9d571b},{683,560,0x5a4232},}, 85}
	ml.tips_完成就职={{{929,560,0xf9f2bc},{931,560,0x283308},}, 85}
	ml.tips_就职确定={{{636, 492, 0x262e10},{637, 492, 0x7a7b65},}, 85}
	ml.tips_获得伙伴确定={{{732, 556, 0x713e16},{734, 557, 0xf7ecdf},}, 85}
	ml.tips_战斗失败={{{865, 175, 0xd4410d},{866, 168, 0xb1480e},}, 85}
	ml.tips_万事通考验={{{236, 365, 0x14100e},{404, 100, 0xe99632},}, 85}
	ml.tips_万事通选A={{{240, 366, 0x292421},{240, 363, 0xecdfcf},}, 85}
	ml.tip_使用X={{{822, 410, 0xa95a1a},{826, 410, 0xf6ecde},}, 85, 792, 391, 894, 438}
	ml.tip_跳过剧情={{{1001, 30, 0x393b2a},{1003, 30, 0xc8b69e},{1010, 28, 0xbdad96},}, 85}
	ml.tip_残忍拒绝={{{372, 415, 0x2a8bf6},{702, 432, 0x007aff},{733, 430, 0x007aff},}, 85}
	ml.tip_充值取消={{{450, 62, 0x5d9fe9},{466, 50, 0x057cfe},{466, 86, 0x67a3e6},}, 85}
	ml.tip_维护结束公告={{{961,  82, 0x7d4329},{689, 522, 0x5f701a},{429, 518, 0x8aa12a},}, 85}
	ml.tip_维护结束公告1={{{957,  74, 0x89492a},{653, 529, 0x526a12},{421, 525, 0x4e6112},}, 85}
	ml.tip_维返回游戏={{{ 967, 580, 0x383838},{ 990, 582, 0x6f6f6f},{1043, 593, 0x5e5e5e},{1072, 592, 0x3c3b3b},}, 85}
	ml.tip_前往购买点取消={{{518, 354, 0x615045},{611, 353, 0x994f19},}, 85}
	ml.tip_防沉迷在线时间提示确定={{{529, 380, 0xa5581a},{550, 384, 0xf6ecdf},}, 85}
	ml.tip_主界面广告关闭={{{1004, 55, 0x351310},{1009, 66, 0xdac293},{1021, 67, 0xb29670},}, 85}
	ml.tip_用户协议同意={{{435, 416, 0xa95b1a},{672, 419, 0xb0362f},}, 85}
	ml.tip_副本离开={{{1043, 372, 0x684f42},{ 999, 136, 0x733d26},{1051, 139, 0x3f3431},}, 85}
	ml.tip_副本离开确定={{{593, 402, 0x5f8629},{530, 406, 0xebddcc},{501, 404, 0x594941},}, 85}
	ml.tip_超时返回登录列表={{{546, 353, 0xbd6c1c},{619, 386, 0x6b3712},}, 85}
	ml.tip_网络错误={{{541, 349, 0xa85a1a},{603, 359, 0x874617},}, 85}
	ml.tip_微信登录={{{630, 481, 0x7dc80d},{974, 483, 0x00b5e1},{186, 483, 0xeb8316},}, 85}
	--
	ml.tip_选择服务器界面关闭={{{1085, 38, 0x804428},{ 870, 41, 0x9ac236},{ 784, 40, 0xd7b226},{ 949, 40, 0xa9a19d},}, 85}
	ml.tip_邀请入队取消={{{542, 355, 0x6e5b4d},{621, 362, 0x9f5418},}, 85}
	
	--tips处理
	ml.游戏主界面ok_主界面点到任务栏={{{1021, 108, 0x645141},{1119, 107, 0xbe6733},}, 85}
	
function tips()
	if d(ml.tips_宠物卡片确定,"ml.tips_宠物卡片确定",true,1)then
	--elseif d(ml.tip_使用X,"ml.tip_使用X",true)then
--	elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then	
	elseif d(ml.tips_完成就职,"ml.tips_完成就职",true,1)then
	elseif d(ml.tips_就职确定,"ml.tips_就职确定",true,1)then
	elseif d(ml.tips_获得伙伴确定,"ml.tips_获得伙伴确定",true,1)then
	elseif d(ml.游戏主界面ok_结束引导,"ml.游戏主界面ok_结束引导",true,1)then
	elseif d(ml.tips_战斗失败,"ml.tips_战斗失败",true,1)then
		组队_key = true
	elseif d(ml.tip_副本离开,"ml.tip_副本离开",true,1)then
		支线任务_key = false
		d(ml.tip_副本离开确定,"ml.tip_副本离开确定",true,1)
	elseif d(ml.tips_万事通考验,"ml.tips_万事通考验",true,1)then
	elseif d(ml.tip_跳过剧情,"ml.tip_跳过剧情",true,1)then
	elseif d(ml.游戏主界面ok_对话学院任务,"ml.游戏主界面ok_对话学院任务",true,1)then
	elseif d(ml.tip_残忍拒绝,"ml.tip_残忍拒绝",true,1)then
	elseif d(ml.tip_充值取消,"ml.tip_充值取消",true,1)then
	elseif d(ml.tip_维护结束公告,"ml.tip_维护结束公告",true,1)then
	elseif d(ml.tip_维护结束公告1,"ml.tip_维护结束公告1",true,1)then
	elseif d(ml.tip_维返回游戏,"ml.tip_维返回游戏",true,1)then
	elseif d(ml.tip_前往购买点取消,"ml.tip_前往购买点取消",true,1)then
	elseif d(ml.tip_防沉迷在线时间提示确定,"ml.tip_防沉迷在线时间提示确定",true,1)then
	elseif d(ml.tip_主界面广告关闭,"ml.tip_主界面广告关闭",true,1)then
	elseif d(ml.tip_选择服务器界面关闭,"ml.tip_选择服务器界面关闭",true,1)then
	elseif d(ml.tip_用户协议同意,"ml.tip_用户协议同意",true,1)then
	elseif d(ml.tip_邀请入队取消,"ml.tip_邀请入队取消",true,1)then
	elseif d(ml.tip_超时返回登录列表,"ml.tip_超时返回登录列表",true,1)then
	elseif d(ml.tip_网络错误,"ml.tip_网络错误",true,1)then
	elseif d(ml.tip_微信登录,"ml.tip_微信登录",true,1)then
	elseif d(ml.tip_第三界面判断_公告,"ml.tip_第三界面判断_公告",true)then
		d(ml.event_第三界面判断,"ml.event_第三界面判断关闭",true,1)
	elseif d(ml.游戏主界面ok_主界面点到任务栏,"ml.游戏主界面ok_主界面点到任务栏",true,1)then
	elseif d(ml.tip_第三界面判断_不点更新,"ml.tip_第三界面判断_不点更新",true,1)then
	elseif d(ml.游戏主界面ok_关闭电台,"ml.游戏主界面ok_关闭电台",true,1)then
	else
		return true
	end
end

ml.event_第三界面判断={{{1094, 35, 0xdec99e},{ 866, 31, 0x71eefc},{ 634, 28, 0xd852e7},{ 431, 34, 0xe4ba41},}, 85}
	--这里都是属于奖励的ui
	ml.event_第三界面判断_奖励界面={{{24, 19, 0x2b1914},{24, 21, 0xc2b6a7},{22, 32, 0xc1b09b},}, 85}
		ml.event_第三界面判断_左则有红点提示={{{225, 185, 0x654c42},{250, 165, 0xff180a},}, 85, 81, 71, 263, 624}
		ml.event_第三界面判断_右则有领取={{{906, 191, 0x804110},{914, 189, 0xf2e6d6},{903, 179, 0xbd6e1d},}, 85, 835, 151, 986, 602}
		ml.event_第三界面判断_已经签到={{{319, 149, 0xaad434},{334, 170, 0x84b907},{366, 130, 0xd3f04d},}, 85, 0, 0, 0, 0}
		ml.event_第三界面判断_首充好礼={{{805, 528, 0x5c7715},{808, 164, 0xd64f15},{744, 185, 0xfcf13d},}, 85}
		ml.event_第三界面判断_公告红点={{{1061, 220, 0xb7aca0},{1095, 201, 0xff180b},}, 85}
	--这里都是属于活动的
	ml.event_第三界面判断_活动界面={{{919, 125, 0xe0ce93},{823, 124, 0xfbf1b9},{838, 109, 0xfb6362},}, 85}
	ml.event_第三界面判断_活动万事通={{{467, 222, 0xb7671c},{503, 195, 0xe90e06},{142, 233, 0x1e1a2a},{119, 236, 0x171a23},}, 85, 75, 170, 965, 580}
	ml.event_第三界面判断_活动学院任务={{{466, 230, 0x914a17},{505, 187, 0xff180b},{132, 221, 0x916642},{134, 222, 0xecddbb},}, 85, 70, 171, 966, 603}
	ml.event_第三界面判断_活动真中={{{900, 232, 0x9b5119},{943, 195, 0xec1208},{676, 254, 0xf07926},{624, 251, 0x53ba01},{551, 238, 0x75aacf},}, 85, 75, 177, 960, 584}
	ml.event_第三界面判断_法兰城许愿={{{915, 422, 0xb2631b},{944, 392, 0xff180b},{572, 431, 0x83f0ff},{561, 448, 0xb1e63a},}, 85, 77, 175, 963, 579}
	--下面组队ui
	ml.event_第三界面判断_组队界面={{{27, 19, 0x46332b},{30, 19, 0xf7efdf},{54, 20, 0xf2e9d9},}, 85}
	ml.event_第三界面判断_返回组队={{{895, 561, 0x748d20},{101, 163, 0xc9baa8},{115, 114, 0x77a02e},}, 85}
	ml.event_第三界面判断_创建队伍={{{819, 558, 0x6b871d},{904, 556, 0x70891e},{115, 119, 0x77a02d},}, 85}
	ml.event_第三界面判断_人数未到三人={{{537, 199, 0x56342c},{620, 202, 0x573731},}, 85}
	ml.event_第三界面判断_组队喊话={{{800, 111, 0x30221b},{863, 115, 0xf4ead2},}, 85}
	ml.event_第三界面判断_组队喊话确定={{{538, 409, 0xab5b1a},{730, 179, 0x89775d},}, 85}
	--职业学院
	ml.event_第三界面判断_职业学院界面={{{ 28, 20, 0x9f9286},{125, 19, 0xb6a99d},{157, 18, 0xcdc3b6},}, 85}
	ml.event_职业学院接取任务和前往={{{821, 561, 0x738d20},{931, 565, 0x658118},}, 85}
	--奖励界面
	ml.event_第三界面判断_奖励界面公告={{{1078, 212, 0x503f35},{1092, 215, 0x514239},{1095, 202, 0xff170a},}, 85}
	--突发事件
	ml.event_第三界面判断_充值={{{42, 16, 0x2e1a13},{43, 16, 0x9a8c7f},{47, 14, 0x8b7d72},}, 85}
	--event 第三界面盲区
	ml.tip_第三界面判断_公告 = {{{1089,  32, 0x7e7563},{1033, 225, 0x7a3b33},{ 995, 222, 0xd64e19},}, 85}
	ml.tip_第三界面判断_不点更新={{{495, 354, 0xc3751f},{539, 365, 0x964d18},{625, 351, 0x7faa31},{635, 362, 0xf9f7ee},}, 85}

function check30day()
	local statr={289,106}
	local x_ml,y_ml = 117,98
	local 已经签到的天数 = 0
	for i=1,5 do
		statr[1] = 289
		for ii= 1,6 do
--			click(statr[1],statr[2],0.2)
--			触摸事件 = touch.down(statr[1],statr[2])					--左上角
--			触摸事件 = 触摸事件:move(statr[1]+106, statr[2])
--			触摸事件 = 触摸事件:move(statr[1]+106, statr[2]+98)			--右下角
--			触摸事件 = 触摸事件:move(statr[1], statr[2]+98)
--			触摸事件 = 触摸事件:move(statr[1], statr[2]):off()
			ml.event_第三界面判断_已经签到={{{319, 149, 0xaad434},{334, 170, 0x84b907},{366, 130, 0xd3f04d},}, 85,statr[1],statr[2], statr[1]+106, statr[2]+98}
			if not(d(ml.event_第三界面判断_已经签到,"ml.event_第三界面判断_已经签到"))then
				click(statr[1]+106/2,statr[2]+98/2)
				click(289,106)
				return true
			else
				已经签到的天数 = 已经签到的天数 + 1
			end
			statr[1] = statr[1] + x_ml
		end
		statr[2] = statr[2] + y_ml
	end
end


function event()
	if d(ml.event_第三界面判断,"ml.event_在第三界面")then
		if d(ml.event_第三界面判断_活动界面,"ml.event_第三界面判断_活动界面")then
			if 	活动_key  then
				if d(ml.event_第三界面判断_活动万事通,"event_第三界面判断_活动万事通",true,1)then
				elseif d(ml.event_第三界面判断_法兰城许愿,"event_第三界面判断_法兰城许愿",true,1)then
					delay(10)
				elseif d(ml.event_第三界面判断_活动学院任务,"event_第三界面判断_活动学院任务",true,1)then
					delay(10)
				elseif d(ml.event_第三界面判断_活动真中,"event_第三界面判断_活动真中",true,1)then
					delay(10)
				else
					活动_启动_key = 3
					活动_key = false
					主线任务_key = true
					找光标_key = true
					log("活动任务关闭")
					d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
				end
			else
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			end
		elseif d(ml.event_第三界面判断_职业学院界面,"event_第三界面判断_职业学院界面") then
			if d(ml.event_职业学院接取任务和前往,"活动_职业学院接取任务和前往",true,1)then
			else 
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			end
		elseif 奖励_key and d(ml.event_第三界面判断_奖励界面,"ml.event_第三界面判断_奖励界面")then
			if d(ml.event_第三界面判断_首充好礼,"ml.event_第三界面判断_首充好礼")then
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			elseif d(ml.event_第三界面判断_公告红点,"event_第三界面判断_公告红点",true,1)then	
			elseif d(ml.event_第三界面判断_奖励界面公告,"ml.event_第三界面判断_奖励界面公告",true)then
			elseif d(ml.event_第三界面判断_右则有领取,"ml.event_第三界面判断_右则有领取",true)then
			elseif d(ml.event_第三界面判断_左则有红点提示,"ml.event_第三界面判断_左则有红点提示",true)then
			else
				check30day()
				d(ml.event_第三界面判断,"ml.event_第三界面判断关闭",true,1)
			end
		elseif d(ml.event_第三界面判断_组队界面,"ml.event_第三界面判断_组队界面")then	
			if d(ml.event_第三界面判断_返回组队,"ml.event_第三界面判断_返回组队",true,1)then	
			elseif d(ml.event_第三界面判断_创建队伍,"ml.event_第三界面判断_创建队伍",true,1)then	
			elseif d(ml.event_第三界面判断_人数未到三人,"ml.event_第三界面判断_人数未到三人")then	
				log("人数未满")
				delay(6)
				if d(ml.event_第三界面判断_组队喊话,"ml.event_第三界面判断_组队喊话",true)then
				d(ml.event_第三界面判断_组队喊话确定,"ml.event_第三界面判断_组队喊话确定",true)
				end
			elseif not 	d(ml.event_第三界面判断_人数未到三人,"ml.event_第三界面判断_人数未到三人")then
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
				组队_key = false
			else
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			end
		elseif d(ml.event_第三界面判断_充值,"ml.event_第三界面判断_充值")then
			d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
		else
			d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
		end
	--这里登录的创建角相关的区域
	elseif d(ml.创建角色_创建角色界面1,"创建角色界面1",false,1) then
		d(ml.创建角色_下一步,"下一步",true,1)
	elseif d(ml.创建角色_创建角色界面2,"创建角色界面2",false,1) then
		if d(ml.创建角色_名字存在确定,"名字存在确定",true,1) then
		else
			d(ml.创建角色_创建,"创建",true,1) 
		end
	else
		return true
	end
end

function small_light_box()
	--第一步先查询左上角亮光
	local x, y = screen.find_color({{815, 557, 0xfffadc},{815, 554, 0xffce42},}, 85, 0, 0, 0, 0)
	if x >= 0 and y >= 0 then
		log("找到左边的亮点")
		log(x..","..y)
		x2,y2 = screen.find_color({{866, 608, 0xfff8cf},{866, 610, 0xffd44d},}, 85, 
								x+(854-815), y+(589-557), x+(1003-815), y+(834-557))
		if x2>=0 and y2>=0 then
			click((x+x2)/2,(y+y2)/2)
			return true
		end
	end
end

function small_light_box1()
	--第一步先查询左上角亮光
	local x, y = screen.find_color({{814, 561, 0xfff4c8},{820, 555, 0xffffc9},}, 85, 0, 0, 0, 0)
	if x >= 0 and y >= 0 then
		log("找到左边的亮点1")
		log(x..","..y)
		x3, y3 = screen.find_color({{868, 603, 0xfff5c5},{862, 609, 0xfff9d0},{866, 608, 0xfff19f},}, 85, x+(835-841), y+(576-561), x+(1125-814), y+(636-561))
		if x3>=0 and y3>=0 then
			click((x+x3)/2,(y+y3)/2)
			return true
		end
	end
end
ml.新号光标单独处理={{{932, 155, 0xfffed3},{926, 155, 0xfffbe2},{926, 160, 0xfff6ca},{926, 217, 0xfff1b1},{926, 224, 0xfffce6},{933, 224, 0xffffdb},}, 85, 897, 149, 951, 240}

function lvl()
	local txt = screen.ocr_text(1103, 57, 1129, 73,"eng","f5d900-867100") -- 默认配置是使用英文数字模式识别文字
	log("识别等级："..txt:atrim())
	local levels = tonumber(txt:atrim()) or 1
	return levels
end


ml.登录界面 = {{{63,  37, 0xf8ebd4},{64, 124, 0xfcf8e3},{60, 226, 0xf8ead2},}, 85}
	ml.登录界面_换区 = {{{794, 402, 0xa8e000},{618, 494, 0x6db80d},}, 85}
	ml.登录界面_选区界面 = {{{1093, 40, 0x381c0f},{ 863, 38, 0xa3c63a},{ 782, 42, 0xd3ac23},{ 708, 44, 0xd74a1d},}, 85, 685, 29, 1125, 56}
	ml.登录界面_第一个区 = {{{458, 301, 0x696159},{454, 300, 0x625a53},}, 85, 448, 291, 481, 318}
	ml.登录界面_第二个区 = {{{768, 299, 0x645b55},{768, 301, 0x514944},}, 85, 759, 293, 797, 317}
	ml.登录界面_第三个区 = {{{454, 397, 0x645b55},{454, 398, 0x58504a},}, 85, 444, 391, 482, 414}
	ml.登录界面_第四个区 = {{{774, 397, 0x645b55},{770, 399, 0x5d544e},}, 85, 761, 392, 796, 412}
	ml.登录界面_第五个区 = {{{456, 494, 0x544c46},{453, 497, 0x6b625b},}, 85, 447, 490, 481, 509}
	ml.登录界面_登录游戏={{{511, 494, 0x6ebb0b},{620, 490, 0x76c30a},}, 85}
ml.游戏主界面ok={}
	ml.游戏主界面ok_主界面ok={{{1089, 114, 0xfbf7ea},{1089, 110, 0x806848},{1088, 136, 0x3d352d},}, 85}
	ml.游戏主界面ok_没有对话框={{{963, 127, 0xecd5b2},{948, 133, 0x693925},}, 85}
	ml.游戏主界面ok_便捷组队={{{1092, 431, 0x8c4a1a},{1085, 495, 0x874718},{1086, 561, 0x804317},}, 85}	--战斗,组队,离开
	ml.游戏主界面ok_对话选一={{{1088, 434, 0x854618},}, 85}
	ml.游戏主界面ok_一个对话框={{{1088, 423, 0xa25d24},{1089, 442, 0x783e15},}, 85}
	ml.游戏主界面ok_真中的研究={{{1005, 428, 0xf8f0e6},{1007, 416, 0xb16d2d},{ 911, 420, 0xfd1ff6},}, 85, 897, 411, 1060, 457}
	ml.游戏主界面ok_对话学院任务={{{901, 427, 0x8f4c1d},{907, 427, 0x7d17b7},}, 85}
	ml.游戏主界面ok_使用={{{1024,471,0xf8e8d8},{1023,471,0x27180a},{1017,476,0x6a5440},}, 85, 996, 462, 1081, 488}	
	ml.游戏主界面ok_使用1={{{825,408,0x78583b},{826,408,0xf9f2e9},}, 85}
	ml.游戏主界面ok_关闭聊天框={{{541, 294, 0xecdabe},{531, 298, 0x5b4632},{474,  40, 0x8e4917},}, 85}
	--tips也增加了一个关闭电台
	ml.游戏主界面ok_关闭电台={{{1051, 43, 0xeea43e},{1065, 33, 0xf6bd72},{1068, 32, 0xffffff},}, 85}
	ml.游戏主界面ok_等级不够={{{940, 188, 0xd23106},{938, 202, 0xec3202},{953, 202, 0xec3202},}, 85, 930, 184, 978, 316}
	ml.游戏主界面ok_日常真中任务={{{939, 245, 0xfad153},{949, 241, 0xfbd254},{947, 247, 0xfbd254},{951, 254, 0xe6c04e},}, 85}
	ml.游戏主界面ok_日常任务={{{939, 325, 0xfad153},{964, 335, 0xc8a546},}, 85}
	ml.游戏主界面ok_日常任务1={{{946, 322, 0xebc44f},{946, 335, 0xebc44f},{957, 335, 0xfbd254},{957, 322, 0xfbd254},}, 85, 932, 156, 988, 412}
	ml.游戏主界面ok_进阶任务={{{977, 169, 0xdfb94c},{978, 195, 0xf9f8f8},{982, 217, 0xe0c08f},}, 85, 936, 155, 997, 230}
	ml.游戏主界面ok_支线任务={{{944, 242, 0xd7b349},{957, 242, 0xd6b24a},{957, 255, 0x554126},{944, 254, 0xf2c951},}, 85, 932, 155, 988, 415}
	ml.游戏主界面ok_支线任务1={{{973, 335, 0xfbd254},{973, 323, 0xfbd254},{939, 323, 0xf4cc52},{939, 335, 0xf7ce53},}, 85, 932, 160, 987, 412}
	ml.游戏主界面ok_挑战任务={{{939, 243, 0xfad153},{939, 253, 0xfad153},{946, 248, 0xfbd254},{982, 248, 0xfbd254},}, 85, 933, 157, 987, 398}
	ml.游戏主界面ok_引导任务={{{948, 242, 0xf1c951},{963, 249, 0xfbd254},{973, 249, 0xd8b34a},}, 85, 937, 235, 1120, 300}
	ml.游戏主界面ok_主线任务={{{937, 244, 0xa4cf53},{950, 244, 0xb1e35a},{969, 245, 0xaedf58},{980, 247, 0xb1e35a},}, 85, 928, 154, 1132, 410}
	ml.游戏主界面ok_主线任务1={{{982, 173, 0xb1e35a},{982, 156, 0x93b54b},{939, 156, 0x93b44b},{939, 173, 0xb1e35a},}, 85, 933, 155, 989, 344}
-- 放到光标前面了
ml.游戏主界面ok_结束引导={{{32, 415, 0x4a270b},{32, 414, 0xffdfc0},}, 85}
--event()
ml.游戏主界面ok_奖励有红点={{{41, 210, 0xfffff3},{35, 197, 0xf198ff},{34, 201, 0xffecfe},{61, 193, 0xff180b},}, 85, 8, 86, 269, 338}
	ml.游戏主界面ok_活动有红点={{{109, 219, 0xe5563c},{122, 204, 0xfae96f},{140, 193, 0xff180b},{138, 224, 0xfff287},}, 85, 5, 92, 323, 337}
--战斗界面--
ml.战斗界面={}
ml.战斗界面_战斗界面={{{1075,563,0xaa3a2b},{1087,571,0x923024},}, 85}
ml.战斗界面_自动战斗按钮={{{1072,564,0x896254},{1083,563,0x58433a},}, 85}
ml.战斗界面_没有技能={{{861, 539, 0x6e6863},{865, 544, 0xe7ac65},{865, 552, 0xccc4c7},{865, 551, 0x443031},}, 85, 825, 516, 1029, 617}
ml.战斗界面_切换英雄技能={{{752, 230, 0x3e185b},{751, 239, 0x61058d},{751, 243, 0xcb3b7f},{770, 252, 0xfdfad1},}, 85, 712, 208, 1049, 519}
ml.战斗界面_切换宠物技能={{{733, 238, 0x0f3805},{736, 255, 0x378020},{736, 268, 0x110a03},{765, 253, 0xffff57},}, 85, 696, 203, 1063, 523}

function 主界面下的操作()

	if 奖励_key and d(ml.游戏主界面ok_奖励有红点,"ml.游戏主界面ok_奖励有红点",true,1)then
	elseif 活动_启动_key < 2 and d(ml.游戏主界面ok_活动有红点,"ml.游戏主界面ok_活动有红点",true,1)then
		活动_启动_key = 活动_启动_key + 1
	elseif not(d(ml.游戏主界面ok_没有对话框,"游戏主界面ok_没有没有对话框_逆向思维"))then
		if 组队_key and d(ml.游戏主界面ok_便捷组队,"ml.游戏主界面ok_便捷组队",true,2)then
		elseif d(ml.游戏主界面ok_便捷组队,"ml.游戏主界面ok_便捷组队",true,1)then
		elseif d(ml.游戏主界面ok_真中的研究,"ml.游戏主界面ok_真中的研究",true,1)then
		elseif d(ml.游戏主界面ok_对话选一,"ml.游戏主界面ok_对话选一",true,1)then		
		elseif d(ml.游戏主界面ok_一个对话框,"ml.游戏主界面ok_一个对话框",true,1)then
		else
			click(1085, 581)
		end
	elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then
	elseif d(ml.游戏主界面ok_使用1,"ml.游戏主界面ok_使用1",true,1)then
	elseif d(ml.游戏主界面ok_关闭聊天框,"ml.游戏主界面ok_关闭聊天框",true,1)then
	elseif d(ml.游戏主界面ok_关闭电台,"ml.游戏主界面ok_关闭电台",true,1)then
	elseif d(ml.游戏主界面ok_日常真中任务,"ml.游戏主界面ok_日常真中任务",true,1) then
	elseif d(ml.游戏主界面ok_日常任务,"ml.游戏主界面ok_日常任务",true,1) then
	elseif d(ml.游戏主界面ok_日常任务1,"ml.游戏主界面ok_日常任务1",true,1) then
	elseif d(ml.游戏主界面ok_进阶任务,"ml.游戏主界面ok_进阶任务",true,1) then
		
		delay(3)

	--elseif d(ml.游戏主界面ok_引导任务,"ml.游戏主界面ok_引导任务",true,1)then
	elseif 活动_key then
	elseif d(ml.游戏主界面ok_等级不够,"ml.游戏主界面ok_等级不够")then
		主线任务_key = false
		支线任务_key = true
		if 支线任务_key and d(ml.游戏主界面ok_支线任务,"ml.游戏主界面ok_支线任务",true,1) or d(ml.游戏主界面ok_支线任务1,"ml.游戏主界面ok_支线任务1",true,1)or d(ml.游戏主界面ok_挑战任务,"ml.游戏主界面ok_挑战任务",true,1) then
		else
		主线任务_key = true
		end
	elseif 主线任务_key and d(ml.游戏主界面ok_主线任务,"ml.游戏主界面ok_主线任务",true,1) or d(ml.游戏主界面ok_主线任务1,"ml.游戏主界面ok_主线任务1",true,1)then
	


	
	
	
	else
		delay(0.5)	
	end
end	
	
function mlbb()
	screen.init(1)
	local TimeLine = os.time()
	local UserTime = 60 * (n or 60)
	local task = 0				--设置单个帐号任务次数
	local checkLinght = os.time()
	
	奖励_key = true
	--活动----------------------------------------
	活动_key = true
	活动_启动_key = 3
	活动_key_time = 0
	活动超时time = os.time()
	----------------------------------------------
	组队_key = true
	主线任务_key = true
	支线任务_key = true
	level = 1
	----------------------------------------------
	找光标_key = true
	---换区---------------------------------------
	一区_key = true
	二区_key = true
	三区_key = true
	四区_key = true
	五区_key = true
	换区_key = true
	单区时间 = os.time()
	---------------------------------------------
	while os.time()-TimeLine < UserTime do
		log(os.time() - TimeLine)
		if os.time() - 单区时间 < 60*5 then
			log(os.time() - 单区时间)
			if active(app_bid.mlbb,3)then
				
				if level < 19 then
					活动_key = false
					活动_启动_key = 3
					找光标_key = true
				end
				
				if os.time() - 活动_key_time > 60*5 then
					活动_启动_key = 0
					活动_key = true
					组队_key = true
					找光标_key = false
					log("五分钟刷新一次活动")
					活动_key_time = os.time()

				end	
			
				-----------------出checkLinght
				if 找光标_key and os.time()-checkLinght > 25 then
					if d(ml.游戏主界面ok_结束引导,"ml.游戏主界面ok_结束引导",true,1)then
					elseif d(ml.新号光标单独处理,"ml.新号光标单独处理",true,1)then
					else
						log("查询光圈,休息2秒")
						delay(2)
						small_light_box()
						small_light_box1()
						checkLinght = os.time()
					end
				end
				
				
				-----------------game--------------------------------------------------------
				if d(ml.登录界面,"ml.登录界面") then
					if 换区_key  and  d(ml.登录界面_换区,"ml.登录界面_换区",true,1) then
					elseif d(ml.登录界面_登录游戏,"ml.登录界面_登录游戏",true,1) then
					end
				elseif d(ml.登录界面_选区界面,"ml.登录界面_选区界面") then
					
						if 一区_key and d(ml.登录界面_第一个区,"ml.登录界面_第一个区",true,1)then
							一区_key = false
							换区_key = false
						elseif 二区_key and d(ml.登录界面_第二个区,"ml.登录界面_第二个区",true,1)then
							二区_key = false
							换区_key = false
						elseif 三区_key and d(ml.登录界面_第三个区,"ml.登录界面_第三个区",true,1)then
							三区_key = false
							换区_key = false
						elseif 四区_key and d(ml.登录界面_第四个区,"ml.登录界面_第四个区",true,1)then
							四区_key = false
							换区_key = false
						elseif 五区_key and d(ml.登录界面_第五个区,"ml.登录界面_第五个区",true,1)then
							五区_key = false
							换区_key = false
						 
						end
				
				elseif d(ml.游戏主界面ok_主界面ok,"ml.游戏主界面ok_主界面ok")then
					level = lvl() or 1
					log("level = "..level)
					主界面下的操作()
					
				elseif d(ml.战斗界面_战斗界面,"ml.战斗界面_战斗界面")then
					log("正在战斗中")
					delay(3)
					if d(ml.战斗界面_自动战斗按钮,"ml.战斗界面_自动战斗按钮",true,1)then
					elseif d(ml.战斗界面_没有技能,"ml.战斗界面_没有技能",true,1)then
					elseif d(ml.战斗界面_切换英雄技能,"ml.战斗界面_切换英雄技能",true,1)then
					elseif d(ml.战斗界面_切换宠物技能,"ml.战斗界面_切换宠物技能",true,1)then
					end
				else
					if tips()then
						if event()then
							log("什么也没有找到,随便点击一下")
							click(1085, 581)			--all other state
						end
					end
				end
			end
			delay(math.random(20,200)/1000)
			log("end")
		else
		换区_key = true
		单区时间 = os.time()
		closeX(app_bid.mlbb)
		end
	end
end

















