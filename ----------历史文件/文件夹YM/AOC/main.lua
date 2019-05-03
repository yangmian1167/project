nLog=require("nLog")()
nLog(app.front_bid())
require("xxtsp")


--app_bid = {}
--app_bid.aoc = "com.lilithgame.sgame"
--screen.init(1)
--aoc={}


--aoc.back = {}
--aoc.back.箭头 = {{{32,26,0xe4e18b},{32,26,0xf3f394},}, 75}
--	aoc.back.世界地图 = {{{1082,589,0xf6f492},{1077,594,0x14464e},},85}
--	aoc.back.前往 = {{{559, 395, 0x49bf4d},{636, 395, 0x38c13c},}, 85, 0, 0, 0, 0}
	
	
--aoc.back.任务 = {{{148, 26, 0xffffff},{143, 25, 0x171d25},{141, 25, 0xffffff},}, 85}
--	aoc.back.领取 = {{{753, 152, 0x4dce41},{761, 152, 0xffffff},}, 85, 703, 122, 809, 181}
	
--	aoc.back.zy={}
--	aoc.back.zy.采木矿 = {{{0,0,0xa3b4b3},{-556,34,0x1e35b6},{-429,17,0xc28754},{-319,22,0x173a4f},{-306,25,0x173a4e},}, 85, 70, 75, 869, 612}
--	aoc.back.zy.采金币 = {{{0,0,0xa3b4b3},{-556,34,0x1e35b6},{-423,22,0xd09428},{-317,15,0x173b50},{-307,18,0x173a4e},}, 85, 70, 75, 869, 612}
--	aoc.back.zy.采泉水 = {{{0,0,0xa3b1af},{-561,28,0x0d2f8c},{-437,22,0xabfbfb},{-321,20,0x153753},{-312,18,0x153950},}, 85, 70, 75, 869, 612}
--	aoc.back.zy.采红钻 = {{{0,0,0x9eae91},{-553,25,0x3e55bf},{-429,15,0xec3839},{-325,13,0x16384f},{-314,13,0x16384e},}, 85, 70, 75, 869, 612}
--	aoc.back.zy.采秘银 = {{{0,0,0xa2b2b2},{-543,31,0x27329a},{-438,22,0x27b669},{-332,23,0x173850},{-314,23,0x173a4e},}, 85, 70, 75, 869, 612}
--	aoc.back.zy.采紫水晶 = {{{0,0,0xa3b4b3},{-556,34,0x1e35b6},{-434,15,0x6841d8},{-326,16,0x173951},{-318,18,0x173b4f},}, 85, 70, 75, 869, 612}


--aoc.back.有活跃={{{1014, 214, 0x2f6721},{1097, 201, 0xc82626},}, 85}
--	aoc.back.活跃界面={{{1047,230,0xcdef10},{964,229,0xb6e71a},}, 85}
--		aoc.back.活跃领取={{{319, 279, 0xa20837},{327, 270, 0xd02c1f},{310, 269, 0xda341d},}, 85}
--		aoc.back.活跃度= {{{458, 153, 0xa6033a},{413, 156, 0xeac626},{460, 177, 0xfcd924},{434, 191, 0xefc128},}, 85, 0, 0, 0, 0}


--aoc.map={}
--	aoc.map.地图 = {{
--	{ 57, 576, 0xcfff10},--任务
--	{190, 596, 0xe10000},--地图
--	{265, 574, 0x415aad},--领地
--	}, 85}
--		aoc.map.在路上={{{444, 181, 0x6f8eff},{438, 173, 0x6f8eff},{446, 166, 0x98f5fe},}, 85, 317, 67, 822, 550}
--		aoc.map.感叹号={{{572,316,0x12abdc},{572,308,0x08c9ff},{573,260,0x09d0ff},}, 85, 327, 63, 828, 554}
--		aoc.map.感叹号小={{{0,0,0x09d2ff},{1,0,0x09d9ff},}, 85, 357, 43, 758, 125}
	
--aoc.tip={}
--	aoc.tip.活跃奖励宝箱={{{563,462,0x93ef46},{496,434,0x45b653},}, 85}
--	aoc.tip.运送回家={{{661, 418, 0x62db42},{781, 383, 0x229b49},}, 85}
--	aoc.tip.遗迹确定={{{577,425,0x83ed42},{505,399,0x44b850},}, 85}
--	aoc.tip.野怪不攻击={{
--			{392,489,0x29a5c1},--取消
--			{692,488,0xdc803f},--战斗
--			},85}
--	aoc.tip.商城购买确定={{{526,469,0xcc8823},{539,482,0x67e040},}, 85}

--function tips()
--	if d(aoc.tip.运送回家,"运送回家",true,1)then
--		采矿执行 = false
--	elseif d(aoc.tip.活跃奖励宝箱,'活跃奖励宝箱',true,1)then
--	elseif d(aoc.tip.野怪不攻击,"野怪不攻击",true,1)then
--		caikaungwucha = caikaungwucha or 0
--		caikaungwucha = caikaungwucha + 1
--		if caikaungwucha%2 == 0 then
--			click(471, 98)
--		end
--	elseif d(aoc.tip.遗迹确定,"遗迹确定",true,1)then
--	elseif d(aoc.tip.商城购买确定,"商城购买确定",true,1)then
--	else
--		return true
--	end
--end

--function f()
--	d(aoc.back.箭头,"箭头",true,1)
--end

--function 采矿()
--	采矿执行 = false
--	while true do
--		if active(app_bid.aoc,10)then
--			log("game is ok")
--			if done(aoc.map.地图,"ditu",false,1)then
--			    if d(aoc.map.在路上,"在路上",false) then
--				elseif 采矿执行 then
--					if (d(aoc.map.感叹号,"感叹号") or  d(aoc.map.感叹号小,"感叹号小"))then
--						log("感叹号"..x)
--						log("感叹号"..y)
--						click(x,y+110)
--					else
--						local five = {{567,137,0xf2f9fc},{743,191,0xf2f8fb},{758,390,0xbec9d3},{430,387,0xb6c2b5},{393,140,0xe0ecef},}
--						cankuanglung = cankuanglung or 0
--						cankuanglung = cankuanglung + 1
--						local fangxiang = cankuanglung%5 + 1
--						click(five[fangxiang][1],five[fangxiang][2])
--						采矿执行 = false
--					end
--				else
--					d(aoc.map.地图,"ditu",true,1)
--				end
--			elseif done(aoc.back.箭头,"箭头",false,1) then
--				if d(aoc.back.任务,'任务',false,1)then
--					if d(aoc.back.领取,'领取',true)then
						
--					else
--						log('准备采矿')
--						if d(aoc.back.有活跃,'有活跃',true,1)then
							
--						elseif d(aoc.back.活跃界面,"活跃界面")then
--							if d(aoc.back.活跃领取,'活跃领取',true,1)then
--							elseif cpic(aoc.back.活跃度,"活跃度",true,1)then
--							else
--								d(aoc.back.箭头,"箭头",true,1)
--							end
--						else
--							log("没有活跃，准备采矿")
--							function 找矿()
--								for k,v in pairs(aoc.back.zy)do
--									if d(v,k,true)then
--										return true
--									end
--								end
--							end
							
--							if 找矿() then
--								采矿执行 = true
--							else
--								moveTo(703, 369, 703, 106)
--							end
							
--						end
--					end
--				elseif d(aoc.back.世界地图,"世界地图")then
--					if cpic(aoc.back.前往,"前往",true,1)then
--						delay(2)
--					else
--						f()
--					end
--				else
--					f()
--				end
--			else
--				if tips()then
--					log("未知界面")
--					click(40,40)
--				end
--			end
--		end
--		delay(1)
--	end
--end



--aoc.map.商城红点={{{1118,16,0xc52228},{1009,20,0xdc7d5d},}, 85}
--aoc.back.商城界面={{{580,33,0x002a35},{770,29,0xb37f22},{959,19,0x18a67e},}, 85}
--	aoc.back.商城红点={{{1083, 368, 0xad0140},{1087, 366, 0xae0d37},}, 85, 908, 89, 1109, 529}
--	aoc.back.宝箱界面={{{509,104,0xffe200},{510,101,0x5a2702},{497,89,0xaf1106},}, 85, 492, 87, 563, 127}
--	aoc.back.宝箱界面2={{{277,91,0xd90043},{494,106,0xffe200},{685,92,0xd90043},}, 85}
--		aoc.back.英雄宝箱={{{880,354,0xa9a36f},{880,353,0x241713},{883,331,0xae0e39},}, 85}
--		aoc.back.开启宝箱={{{529,590,0x492300},{542,566,0xcc2723},}, 85}
--	aoc.back.商店界面={{{239,104,0xffffff},{239,99,0x3f2d20},{231,85,0x6f3e1d},}, 85}
--	    aoc.back.商店红钻={{{342,210,0x9d1926},{356,203,0xff3d44},{399,208,0x0d3a22},}, 85, 57, 137, 913, 608}
--		aoc.back.商店水晶={{{530,427,0x5a27c0},{541,423,0xe6ccf6},{574,432,0x0e3422},}, 85, 57, 137, 913, 608}
--		aoc.back.商店秘银={{{426,454,0x22bbab},{433,457,0x0d4d3d},{491,449,0x0c361e},}, 85, 57, 137, 913, 608}
--		aoc.back.商店木材={{{470,227,0x3e2515},{529,218, 0x0f3e1e},{548,39,0x66d5df},},85, 57, 137, 913, 608}
--		aoc.back.商店尽头={{{394,241,0xffd944},{595,253,0xad9665},{796,257,0xb4ffff},}, 85, 93, 141, 905, 374}
		
--function 商城()
	
--    while true do
--		if active(app_bid.aoc,10)then
--			log("game is ok")
--			if done(aoc.map.地图,"ditu",false,1)then
--				delay(2)
--				if done(aoc.map.商城红点,"商城红点",true,1)then

--			else
--			log("没有商城任务")
--				end
--			elseif d(aoc.back.箭头,"箭头",false,1) then
--				if d(aoc.back.商城界面,"商城界面",false,1)then
--					if d(aoc.back.宝箱界面,"宝箱界面",false)or d(aoc.back.宝箱界面2,"宝箱界面2",false)then
--						if d(aoc.back.开启宝箱,"开启宝箱",true,1)then
--						elseif d(aoc.back.英雄宝箱,"英雄宝箱",true,1) then
--						else
--							if d(aoc.back.商城红点,"商城红点",true,1) then
--								log("change")
--							else
--								d(aoc.back.箭头,"箭头",true,1)
--							end
--						end
--					elseif d(aoc.back.商店界面,"aoc.back.商店界面")then
--						log("aoc.back.商店界面  准备买东西")
--						if d(aoc.back.商店水晶,"商店水晶",true,1)then
--					    elseif d(aoc.back.商店红钻,"商店红钻",true,1)then	
--						elseif d(aoc.back.商店秘银,"商店秘银",true,1)then	
--						elseif d(aoc.back.商店木材,"商店木材",true,1)then
--					    elseif d(aoc.back.商店尽头,"商店尽头",false)then
--						f()
--						else	
--							moveTo(453, 372,172, 372)
--						end	
--					else
--						d(aoc.back.商城红点,"商城红点",true,1)
--				    end
--				else 
--					f() 
--				end
--			else
--		        if tips()then
--					log("未知界面")
--					click(40,40)
--			    end	
--			end 
--        end
--		delay(1)
--    end



--end
--商城()




--function cest()
--	local timeline = os.time()
--	while true do
--		log(os.time()-timeline)

--	delay(10)
		

--	end
--end


for i=1,600 do
	print(myRand(4,math.random(8,12)))
end







