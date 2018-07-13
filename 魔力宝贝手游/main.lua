-- 此处为nLog功能实现操作
nLog = require('nLog')()
require("xxtsp")

app_bid = {}
app_bid.mlbb = "com.tencent.mlbb"
screen.init(1)





	



ml={}
ml.tips={}
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
	
	--event 第三界面盲区
	ml.tip_第三界面判断_公告={{{33, 20, 0x1d120f},{35, 24, 0xa89f8e},{48, 18, 0x4f443c},{96, 18, 0x574c44},}, 85}
	ml.tip_第三界面判断_不点更新={{{495, 354, 0xc3751f},{539, 365, 0x964d18},{625, 351, 0x7faa31},{635, 362, 0xf9f7ee},}, 85}



function tips()
	if d(ml.tips_宠物卡片确定,"ml.tips_宠物卡片确定",true,1)then
	--elseif d(ml.tip_使用X,"ml.tip_使用X",true)then
--	elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then	
	elseif d(ml.tips_完成就职,"ml.tips_完成就职",true,1)then
	elseif d(ml.tips_就职确定,"ml.tips_就职确定",true,1)then
	elseif d(ml.tips_获得伙伴确定,"ml.tips_获得伙伴确定",true,1)then
	elseif d(ml.游戏主界面ok_结束引导,"ml.游戏主界面ok_结束引导",true,1)then
	elseif d(ml.tips_战斗失败,"ml.tips_战斗失败",true,1)then
	elseif d(ml.tips_万事通考验,"ml.tips_万事通考验",true,1)then
	elseif d(ml.tip_跳过剧情,"ml.tip_跳过剧情",true,1)then
	elseif d(ml.游戏主界面ok_对话学院任务,"ml.游戏主界面ok_对话学院任务",true,1)then
	elseif d(ml.tip_残忍拒绝,"ml.tip_残忍拒绝",true,1)then
	elseif d(ml.tip_充值取消,"ml.tip_充值取消",true,1)then
	elseif d(ml.tip_维护结束公告,"ml.tip_维护结束公告",true,1)then
	elseif d(ml.tip_维护结束公告1,"ml.tip_维护结束公告1",true,1)then
	elseif d(ml.tip_维返回游戏,"ml.tip_维返回游戏",true,1)then
	elseif d(ml.tip_第三界面判断_公告,"ml.tip_第三界面判断_公告",true)then
		d(ml.event_第三界面判断,"ml.event_第三界面判断关闭",true,1)
	elseif d(ml.游戏主界面ok_主界面点到任务栏,"ml.游戏主界面ok_主界面点到任务栏",true,1)then
	elseif d(ml.tip_第三界面判断_不点更新,"ml.tip_第三界面判断_不点更新",true,1)then
	else
		return true
	end
end



ml.event={}
ml.event_第三界面判断={{{1089, 33, 0x5d4f3f},{ 851, 32, 0x518be8},{ 632, 32, 0xf08aff},{ 438, 32, 0xfbf19d},}, 85, 407, 55, 1115, 13}
	--这里都是属于奖励的ui
	ml.event_第三界面判断_奖励界面={{{54, 18, 0xf7edda},{89, 22, 0xf4e7d2},{89, 22, 0xf4e7d2},}, 85}
		ml.event_第三界面判断_左则有红点提示={{{225, 185, 0x654c42},{250, 165, 0xff180a},}, 85, 81, 71, 263, 624}
		ml.event_第三界面判断_右则有领取={{{906, 191, 0x804110},{914, 189, 0xf2e6d6},{903, 179, 0xbd6e1d},}, 85, 835, 151, 986, 602}
		ml.event_第三界面判断_已经签到={{{319, 149, 0xaad434},{334, 170, 0x84b907},{366, 130, 0xd3f04d},}, 85, 0, 0, 0, 0}
		ml.event_第三界面判断_首充好礼={{{805, 528, 0x5c7715},{808, 164, 0xd64f15},{744, 185, 0xfcf13d},}, 85}
	--这里都是属于活动的
	ml.event_第三界面判断_活动界面={{{919, 125, 0xe0ce93},{823, 124, 0xfbf1b9},{838, 109, 0xfb6362},}, 85}
	ml.event_活动界面任务={{{467, 222, 0xaa5b1a},{505, 190, 0xf7140a},{475, 230, 0x8e4917},}, 85, }
	ml.event_职业学院接取任务和前往={{{827, 558, 0x89a02c},{929, 581, 0x486010},}, 85}
	--下面组队ui
	ml.event_第三界面判断_组队界面={{{32, 17, 0xafa294},{36, 17, 0x998b7e},{45, 20, 0xf6ead6},}, 85}
	ml.event_第三界面判断_返回组队={{{904, 563, 0x8aa12c},{996, 571, 0x708b1e},}, 85}
	ml.event_第三界面判断_人数未满={{{930, 222, 0x52322b},{991, 223, 0x583630},}, 85}
	--职业学院
	ml.event_第三界面判断_职业学院界面={{{144, 118, 0x6a6f41},{651,  29, 0xcc59d4},{855,  26, 0x347be4},{147, 136, 0x674431},}, 85}
	--奖励界面
	ml.event_第三界面判断_奖励界面公告={{{1078, 212, 0x503f35},{1092, 215, 0x514239},{1095, 202, 0xff170a},}, 85}
	--突发事件
	ml.event_第三界面判断_充值={{{42, 16, 0x2e1a13},{43, 16, 0x9a8c7f},{47, 14, 0x8b7d72},}, 85}
	
	--登录和创建
ml.登录界面={{{510, 493, 0x71bd0a},{ 51, 131, 0xf7e9d3},{ 50,  46, 0xf6ecd4},}, 85}
ml.创建角色={}
	ml.创建角色_创建角色界面1={{{ 907, 338, 0x6bbded},{ 967, 338, 0x6dd970},{1027, 336, 0xf35a3d},}, 85}
	ml.创建角色_下一步={{{920, 580, 0xad6201},{923, 580, 0xbcb38d},}, 85}
	ml.创建角色_创建角色界面2={{{694, 571, 0x5d050b},{678, 571, 0x090501},}, 85}
	ml.创建角色_创建={{{938, 571, 0xa45c1d},{921, 579, 0x553d16},}, 85}
	ml.创建角色_名字存在确定={{{543, 349, 0x69922b},{588, 363, 0x2a2e16},}, 85}
	
	
function event()
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
	
	if d(ml.event_第三界面判断,"ml.event_第三界面判断")then
		
		if d(ml.event_第三界面判断_活动界面,"ml.event_第三界面判断_活动界面")then
			log("准备活动",true)
			if d(ml.event_活动界面任务,"活动_活动界面任务",true,1)then
			else
			d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			end
		elseif d(ml.event_第三界面判断_职业学院界面,"event_第三界面判断_职业学院界面") then
			d(ml.event_职业学院接取任务和前往,"活动_职业学院接取任务和前往",true,1)
		elseif 奖励_key and d(ml.event_第三界面判断_奖励界面,"ml.event_第三界面判断_奖励界面")then
			if d(ml.event_第三界面判断_首充好礼,"ml.event_第三界面判断_首充好礼")then
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			elseif d(ml.event_第三界面判断_奖励界面公告,"ml.event_第三界面判断_奖励界面公告",true)then
			elseif d(ml.event_第三界面判断_右则有领取,"ml.event_第三界面判断_右则有领取",true)then
			elseif d(ml.event_第三界面判断_左则有红点提示,"ml.event_第三界面判断_左则有红点提示",true)then
			else
				check30day()
				d(ml.event_第三界面判断,"ml.event_第三界面判断关闭",true,1)
			end
		elseif d(ml.event_第三界面判断_组队界面,"ml.event_第三界面判断_组队界面")then	
			if d(ml.event_第三界面判断_返回组队,"ml.event_第三界面判断_返回组队",true,1)then	
			elseif d(ml.event_第三界面判断_人数未满,"ml.event_第三界面判断_人数未满")then	
				log("人数未满")
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
				组队_key = true
			else
				d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
			end
		elseif d(ml.event_第三界面判断_充值,"ml.event_第三界面判断_充值")then
			d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
		else
			d(ml.event_第三界面判断,"ml.event_第三界面判断",true,1)
		end
	--这里登录的创建角相关的区域
	elseif d(ml.登录界面,"ml.登录界面",true,1)then
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
	x, y = screen.find_color({{815, 557, 0xfffadc},{815, 554, 0xffce42},}, 85, 0, 0, 0, 0)
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
	local x, y = screen.find_color({{809, 460, 0xfff6e2},{809, 454, 0xffffe3},
			{817, 454, 0xffffce},{814, 452, 0xffd158},}, 85, 0, 0, 0, 0)
	if x >= 0 and y >= 0 then
		log("找到左边的亮点1")
		log(x..","..y)
		x2, y2 = screen.find_color({{925, 493, 0xf8de50},{922, 493, 0xfff8d1},}, 85, 
			                       x+(888-807), y+(478-455), x+(981-815), y+(523-455))
		if x2>=0 and y2>=0 then
			click((x+x2)/2,(y+y2)/2)
			return true
		end
	end
end




ml.游戏主界面ok={{{951, 118, 0x974f2b},{964, 118, 0xdacab6},{998, 123, 0x6c5747},}, 85, 930, 99, 1028, 141}
	ml.游戏主界面ok_没有对话框={{{954,140,0x834428},}, 85}
	ml.游戏主界面ok_便捷组队={{{1052, 429, 0x8c4b1b},{1052, 496, 0x814317},{1053, 556, 0x864618},}, 85}		--战斗,组队,离开
	ml.游戏主界面ok_对话选一={{{1089, 412, 0xb57130},{1081, 412, 0xb57130},}, 85}

	ml.游戏主界面ok_等级不够={{{940,202,0xa7120d},{940,203,0xf00302},}, 85, 933, 178, 1119, 232}
	ml.游戏主界面ok_对话勇气更重要={{{948, 425, 0x4d2200},{948, 426, 0xe4dad0},}, 85}
	ml.游戏主界面ok_对话是={{{988, 429, 0x62340f},{989, 429, 0x9e836b},}, 85}
	ml.游戏主界面ok_对话你需要帮助吗={{{924, 425, 0x924f1c},{926, 425, 0xb5a192},}, 85}
	ml.游戏主界面ok_对话是的={{{978, 430, 0x694324},{979, 430, 0xf5eadb},}, 85}
	ml.游戏主界面ok_对话万事通考验={{{1070, 412, 0xb57130},{1084, 417, 0xae6a2b},}, 85}
	ml.游戏主界面ok_对话学院任务={{{901, 427, 0x8f4c1d},{907, 427, 0x7d17b7},}, 85}
	ml.游戏主界面ok_使用={{{1024,471,0xf8e8d8},{1023,471,0x27180a},{1017,476,0x6a5440},}, 85, 996, 462, 1081, 488}	
	ml.游戏主界面ok_使用1={{{825,408,0x78583b},{826,408,0xf9f2e9},}, 85}
	ml.游戏主界面ok_结束引导={{{32, 415, 0x4a270b},{32, 414, 0xffdfc0},}, 85}
	ml.游戏主界面ok_支线任务={{{939, 262, 0xfbd254},}, 85}
	ml.游戏主界面ok_主线任务={{{939, 187, 0xb1e35a},}, 85}
	--tips处理
	ml.游戏主界面ok_主界面点到任务栏={{{1017, 133, 0x544639},{1055, 127, 0xb76434},{1013, 150, 0x3d3330},}, 85}
	
	--event()
	ml.游戏主界面ok_奖励有红点={{{41, 210, 0xfffff3},{35, 197, 0xf198ff},{34, 201, 0xffecfe},{61, 193, 0xff180b},}, 85, 8, 86, 269, 338}
	ml.游戏主界面ok_活动有红点={{{109, 219, 0xe5563c},{122, 204, 0xfae96f},{140, 193, 0xff180b},{138, 224, 0xfff287},}, 85, 5, 92, 323, 337}

ml.自动战斗界面={{{1075,563,0xaa3a2b},{1087,571,0x923024},}, 85}
	ml.自动战斗界面_按钮={{{1072,564,0x896254},{1083,563,0x58433a},}, 85}
	
function 主界面下的操作()
	
	if 奖励_key and d(ml.游戏主界面ok_奖励有红点,"ml.游戏主界面ok_奖励有红点",true,1)then
	elseif 活动_key  and d(ml.游戏主界面ok_活动有红点,"ml.游戏主界面ok_活动有红点",true,1)then
	elseif not(d(ml.游戏主界面ok_没有对话框,"游戏主界面ok_没有对话框"))then
		if d(ml.游戏主界面ok_对话学院任务,"ml.游戏主界面ok_对话学院任务",true,1)then
		elseif 组队_key and d(ml.游戏主界面ok_便捷组队,"ml.游戏主界面ok_便捷组队",true,1)then
		elseif d(ml.游戏主界面ok_便捷组队,"ml.游戏主界面ok_便捷组队",true,2)then
		elseif d(ml.游戏主界面ok_对话选一,"ml.游戏主界面ok_对话选一",true,1)then
		elseif d(ml.游戏主界面ok_对话勇气更重要,"ml.游戏主界面ok_对话勇气更重要",true,1)then
		elseif d(ml.游戏主界面ok_对话是,"ml.游戏主界面ok_对话是",true,1)then
		elseif d(ml.游戏主界面ok_对话你需要帮助吗,"ml.游戏主界面ok_对话你需要帮助吗",true,1)then
		elseif d(ml.游戏主界面ok_对话是的,"ml.游戏主界面ok_对话是的",true,1)then
		elseif d(ml.游戏主界面ok_对话万事通考验,"ml.游戏主界面ok_对话万事通考验",true,1)then	
		else
			click(1096,586)
		end
	elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then
	elseif d(ml.游戏主界面ok_使用1,"ml.游戏主界面ok_使用1",true,1)then
	elseif d(ml.游戏主界面ok_结束引导,"ml.游戏主界面ok_结束引导",true,1)then
	
	elseif 支线任务_key and d(ml.游戏主界面ok_支线任务,"ml.游戏主界面ok_支线任务",true,1)then
	elseif d(ml.游戏主界面ok_主线任务,"ml.游戏主界面ok_主线任务",true,1)then
	elseif d(ml.游戏主界面ok_等级不够,"ml.游戏主界面ok_等级不够")then
		delay(3)
	end
end	
	
function 魔力宝贝挂机流程()
	local TimeLine = os.time()
	local UserTime = 60 * (n or 20)
	local task = 0				--设置单个帐号任务次数
	local checkLinght = os.time()
	奖励_key = true
	活动_key = false
	组队_key = false
	支线任务_key = true

	while os.time()-TimeLine < UserTime do
		if active(app_bid.mlbb,5)then
			
			if os.time()-checkLinght > 10 then
				delay(1)
				small_light_box() 
				small_light_box1()
				checkLinght = os.time()
			end
			--查询光圈
			
			if d(ml.游戏主界面ok,"ml.游戏主界面ok")then
				主界面下的操作()
			elseif d(ml.自动战斗界面,"ml.自动战斗界面")then
				log("正在战斗中")
				delay(3)
			elseif d(ml.自动战斗界面_按钮,"ml.自动战斗界面_按钮",true,1)then
			else
				if tips()then
					if event()then
						log("什么也没有找到,随便点击一下")
						click(1106, 205)			--all other state
					end
				end
			end

		end
		delay(math.random(20,200)/1000)
		log(os.time())
	end

end









魔力宝贝挂机流程()




















