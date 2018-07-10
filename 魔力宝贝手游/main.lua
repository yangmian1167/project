-- 此处为nLog功能实现操作
nLog = require('nLog')()
require("xxtsp")

app_bid = {}
app_bid.mlbb = "com.tencent.mlbb"
screen.init(1)


ml={}
ml.游戏主界面ok={{{1110,142,0x453934},{1098,134,0xf0ebde},}, 85}
ml.游戏主界面ok_没有对话框={{{954,140,0x834428},}, 85}
ml.游戏主界面ok_对话勇气更重要={{{948, 425, 0x4d2200},{948, 426, 0xe4dad0},}, 85}
ml.游戏主界面ok_对话是={{{988, 429, 0x62340f},{989, 429, 0x9e836b},}, 85}
ml.游戏主界面ok_对话你需要帮助吗={{{924, 425, 0x924f1c},{926, 425, 0xb5a192},}, 85}
ml.游戏主界面ok_对话是的={{{978, 430, 0x694324},{979, 430, 0xf5eadb},}, 85}
ml.游戏主界面ok_使用={{{1024,471,0xf8e8d8},{1023,471,0x27180a},{1017,476,0x6a5440},}, 85, 996, 462, 1081, 488}	

ml.游戏主界面ok_结束引导={{{32, 415, 0x4a270b},{32, 414, 0xffdfc0},}, 85}
ml.游戏主界面ok_支线任务={{{939, 262, 0xfbd254},}, 85}
ml.游戏主界面ok_主线任务={{{939, 187, 0xb1e35a},}, 85}

ml.自动战斗界面={{{1075,563,0xaa3a2b},{1087,571,0x923024},}, 85}
ml.自动战斗界面_按钮={{{1072,564,0x896254},{1083,563,0x58433a},}, 85}


ml.tip_使用X={{{822, 410, 0xa95a1a},{826, 410, 0xf6ecde},}, 85, 792, 391, 894, 438}




function game()
	local TimeLine = os.time()
	local UserTime = 60 * (n or 10)
	local task = 0				--设置单个帐号任务次数
	local checkLinght = os.time()
	

	while os.time()-TimeLine < UserTime do
		if active(app_bid.mlbb,5)then
			if os.time()-checkLinght > 10 then
				small_light_box()
				checkLinght = os.time()
			end
			
			if d(ml.游戏主界面ok,"ml.游戏主界面ok")then
				if not(d(ml.游戏主界面ok_没有对话框,"游戏主界面ok_没有对话框"))then
					click(1096,586)
				elseif d(ml.游戏主界面ok_对话勇气更重要,"ml.游戏主界面ok_对话勇气更重要",true,1)then
				elseif d(ml.游戏主界面ok_对话是,"ml.游戏主界面ok_对话是",true,1)then
				elseif d(ml.游戏主界面ok_对话你需要帮助吗,"ml.游戏主界面ok_对话你需要帮助吗",true,1)then
				elseif d(ml.游戏主界面ok_对话是的,"ml.游戏主界面ok_对话是的",true,1)then
				elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then
				elseif d(ml.游戏主界面ok_结束引导,"ml.游戏主界面ok_结束引导",true,1)then
				elseif d(ml.游戏主界面ok_支线任务,"ml.游戏主界面ok_支线任务",true,1)then
				elseif d(ml.游戏主界面ok_主线任务,"ml.游戏主界面ok_主线任务",true,1)then
					delay(3)
				end
			elseif d(ml.自动战斗界面,"ml.自动战斗界面")then
				log("正在战斗中")
				delay(3)
			elseif d(ml.自动战斗界面_按钮,"ml.自动战斗界面_按钮",true,1)then

			else
				if tips()then
					if not(small_light_box())then
						log("什么也没有找到,随便点击一下")
						click(1096,586)			--all other UI
					end
				end
			end
		end
		delay(math.random(20,200)/1000)
	end
end


ml.tips={}
ml.tips_宠物卡片确定={{{683,561,0x9d571b},{683,560,0x5a4232},}, 85}
ml.tips_完成就职={{{929,560,0xf9f2bc},{931,560,0x283308},}, 85}
ml.tips_就职确定={{{636, 492, 0x262e10},{637, 492, 0x7a7b65},}, 85}
ml.tips_获得伙伴确定={{{732, 556, 0x713e16},{734, 557, 0xf7ecdf},}, 85}

function tips()
	if d(ml.tips_宠物卡片确定,"ml.tips_宠物卡片确定",true,1)then
	elseif d(ml.tip_使用X,"ml.tip_使用X",true)then
--	elseif d(ml.游戏主界面ok_使用,"ml.游戏主界面ok_使用",true)then	
	elseif d(ml.tips_完成就职,"ml.tips_完成就职",true,1)then
	elseif d(ml.tips_就职确定,"ml.tips_就职确定",true,1)then
	elseif d(ml.tips_获得伙伴确定,"ml.tips_获得伙伴确定",true,1)then
	elseif d(ml.游戏主界面ok_结束引导,"ml.游戏主界面ok_结束引导",true,1)then
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

ml.活动


function 活动奖励宝典()
	


end





game()















