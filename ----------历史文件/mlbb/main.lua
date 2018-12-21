nLog=require("nLog")()
nLog(app.front_bid())
require("xxtsp")
screen.init(1)

app_bid = {}
app_bid.mlbb = "com.tencent.mlbb"

mlbb={}
mlbb.登录游戏={{{508, 501, 0x5cac0b},{522, 501, 0xebeae9},}, 85}

mlbb.创建角色={}
mlbb.创建角色.创建角色界面1={{{ 907, 338, 0x6bbded},{ 967, 338, 0x6dd970},{1027, 336, 0xf35a3d},}, 85}
mlbb.创建角色.下一步={{{920, 580, 0xad6201},{923, 580, 0xbcb38d},}, 85}
mlbb.创建角色.创建角色界面2={{{694, 571, 0x5d050b},{678, 571, 0x090501},}, 85}
mlbb.创建角色.创建={{{938, 571, 0xa45c1d},{921, 579, 0x553d16},}, 85}

mlbb.hs={}
mlbb.hs.主界面={{{1084, 580, 0xf3d9bb},{1085, 580, 0xf1d5b6},{1086, 580, 0xf0d4b2},}, 85}
mlbb.hs.主线任务={{{939, 187, 0xb1e35a},}, 85}
mlbb.hs.支线任务1={{{940, 267, 0xdfba4c},}, 85}
mlbb.hs.支线任务2={{{939, 259, 0xfbd254},}, 85}
mlbb.hs.新手任务提示={{{952, 180, 0xb3e058},{952, 175, 0xd47e15},}, 85}
mlbb.hs.点击使用1={{{1018, 468, 0x634e3c},{1019, 468, 0x251507},}, 85}
mlbb.hs.点击使用2={{{822, 412, 0x9a5117},{824, 413, 0xf0e1cd},}, 85}
mlbb.hs.新手提示点英雄={{{1108, 65, 0xf1d501},{1121, 70, 0xfffcdd},}, 85}
mlbb.hs.新手提示点封印={{{830, 564, 0xcec09c},{814, 555, 0xfff8d1},}, 85}
mlbb.hs.新手提示点宠物={{{932, 46, 0xf38943},{921, 60, 0xffffdc},}, 85}

mlbb.tip={}
mlbb.tip.跳过动画={{{1037, 39, 0xe1d6d3},{1103, 46, 0xf4daaa},}, 85}

mlbb.tip.卡片确定={{{683, 565, 0x462916},{683, 564, 0x6d3b16},}, 85}
mlbb.tip.就职={{{885, 541, 0x8ca32a},{884, 543, 0x262c0c},}, 85}
mlbb.tip.就职确定={{{627, 486, 0x6a942b},{630, 486, 0x354813},}, 85}
mlbb.tip.伙伴卡确定={{{729, 552, 0xa65d1c},{731, 551, 0x644c3a},}, 85}
mlbb.tip.名字已存在={{{550, 349, 0x293311},{554, 344, 0x78a32f},}, 85}
mlbb.tip.跳过剧情={{{1001, 29, 0x393b2b},{1002, 29, 0xd5c2a9},}, 85}
mlbb.tip.对话弹窗勇气更重要={{{921, 428, 0x904e1c},{929, 444, 0x733b14},}, 85}
mlbb.tip.加入工会取消={{{498, 366, 0x592f0b},{623, 365, 0x393d27},}, 85}

mlbb.tip.新手提示结束引导={{{26, 422, 0x8c501e},{27, 422, 0xffc99a},}, 85}
mlbb.tip.点叉返回主界面={{{1080, 27, 0x3d1f11},{1081, 27, 0x5b4f43},}, 85}
mlbb.tip.新手提示激活宠物={{{552, 544, 0x222222},{540, 538, 0xffbe10},}, 85}
mlbb.tip.新手提示激活宠物1={{{825, 465, 0x648b2a},{815, 457, 0xfecc1c},}, 85}
mlbb.tip.新手提示前往封印={{{811, 460, 0xffe01f},{809, 460, 0xfff5d7},}, 85}
mlbb.tip.新手提示前往封印1={{{596, 410, 0x6b8d2a},{590, 409, 0xfbcc3a},}, 85}
mlbb.tip.新手提示封印={{{1043, 241, 0xbebbae},{1034, 222, 0xf09e1c},}, 85}
mlbb.tip.新手提示封印1={{{735, 244, 0x1a74a4},{722, 260, 0xffc625},}, 85}
mlbb.tip.新手提示封印蜜蜂={{{455, 198, 0xc68f31},{439, 188, 0xffc011},}, 85}
mlbb.tip.新手提示封印蜜蜂1={{{453, 193, 0xb46924},{431, 137, 0xffc81b},}, 85}
mlbb.tip.战斗失败={{{868, 184, 0x492e0d},{870, 183, 0xb82c09},}, 85}
mlbb.tip.自动攻击={{{1061, 559, 0x674e49},{1064, 555, 0xb3886f},}, 85}


function tips()
	if d(mlbb.tip.跳过动画,"跳过动画",true,1) then
	elseif d(mlbb.tip.新手提示结束引导,"新手提示结束引导",true,1) then
	elseif d(mlbb.tip.新手提示激活宠物,"新手提示激活宠物",true,1) then
	elseif d(mlbb.tip.新手提示激活宠物1,"新手提示激活宠物1",true,1) then
	elseif d(mlbb.tip.新手提示前往封印,"新手提示前往封印",true,1) then
	elseif d(mlbb.tip.新手提示前往封印1,"新手提示前往封印",true,1) then
	elseif d(mlbb.tip.新手提示封印,"新手提示封印",true,1) then
	elseif d(mlbb.tip.新手提示封印1,"新手提示封印1",true,1) then
	elseif d(mlbb.tip.新手提示封印蜜蜂,"新手提示封印蜜蜂",true,1) then
	elseif d(mlbb.tip.新手提示封印蜜蜂1,"新手提示封印蜜蜂1",true,1) then
	elseif d(mlbb.tip.卡片确定,"卡片确定",true,1) then
	elseif d(mlbb.tip.伙伴卡确定,"伙伴卡确定",true,1) then
	elseif d(mlbb.tip.就职,"就职",true,1) then
	elseif d(mlbb.tip.就职确定,"就职确定",true,1) then
	elseif d(mlbb.tip.名字已存在,"名字已存在",true,1) then
	elseif d(mlbb.tip.跳过剧情,"跳过剧情",true,1) then
	elseif d(mlbb.tip.战斗失败,"战斗失败",true,1) then
	elseif d(mlbb.tip.自动攻击,"自动攻击",true,1) then
	elseif d(mlbb.tip.加入工会取消,"加入工会取消",true,1) then

	elseif d(mlbb.tip.点叉返回主界面,"点叉返回主界面",true,1) then
	else 
		d(mlbb.tip.对话弹窗勇气更重要,"对话弹窗勇气更重要",true,1)

	end
end


function 创建角色()
while true do
	if active(app_bid.mlbb,10) then
		log("game is ok")
		if d(mlbb.登录游戏,"登录游戏",true,1) then
		elseif d(mlbb.创建角色.创建角色界面1,"创建角色界面1",false,1) then
			d(mlbb.创建角色.下一步,"下一步",true,1)
		elseif d(mlbb.创建角色.创建角色界面2,"创建角色界面2",false,1) then
			if d(mlbb.创建角色.创建,"创建",true,1) then
			else 
				tips()
			end
		else
			return true	
		end	
	end	
	delay(3)	
end	

end	

function 任务()
while true do
	if active(app_bid.mlbb,10) then
		log("game is ok")
		if d(mlbb.登录游戏,"登录游戏",true,1) then
		elseif d(mlbb.hs.主界面,"主界面",false,1) then
			if d(mlbb.hs.新手任务提示,"新手任务提示",true,1) then
			elseif d(mlbb.hs.新手提示点英雄,"新手提示点英雄",true,1) then
			elseif d(mlbb.hs.新手提示点封印,"新手提示点封印",true,1) then
			elseif d(mlbb.hs.新手提示点宠物,"新手提示点宠物",true,1) then
			elseif d(mlbb.tip.新手提示结束引导,"新手提示结束引导",true,1) then


			elseif d(mlbb.hs.点击使用1,"点击使用1",true,1) then
			elseif d(mlbb.hs.点击使用2,"点击使用2",true,1) then
			elseif d(mlbb.hs.支线任务1,"支线任务1",true,1) then
			elseif d(mlbb.hs.支线任务2,"支线任务2",true,1) then
			elseif d(mlbb.hs.主线任务,"主线任务",true,1) then
			else
				tips()

			end


		else
			if tips() then
			else
				click(1071, 175)
				return true 
			end
		end
	end	
	delay(1)	
end


end


while true do
	
	
	
	创建角色()
	任务()






end

--新增测试代码





































