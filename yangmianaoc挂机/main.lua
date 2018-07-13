nLog=require("nLog")()
nLog(app.front_bid())
require("xxtsp")


app_bid = {}
app_bid.aoc = "com.lilithgame.sgame"
screen.init(1)
aoc={}


aoc.back = {}
aoc.back.箭头 = {{{32,26,0xe4e18b},{32,26,0xf3f394},}, 75}
	aoc.back.世界地图 = {{{  27,  26, 0x608467},{1101,  31, 0xc1bb7f},{1097, 619, 0xb4c4bf},}, 85}
	aoc.back.前往 = {{{559, 395, 0x49bf4d},{636, 395, 0x38c13c},}, 85, 0, 0, 0, 0}
	aoc.back.迁城界面 = {{{537, 84, 0x2d6a22},{570, 95, 0x8be742},}, 85}
	
	
aoc.back.任务 = {{{148, 26, 0xffffff},{143, 25, 0x171d25},{141, 25, 0xffffff},}, 85}
	aoc.back.领取 = {{{753, 152, 0x4dce41},{761, 152, 0xffffff},}, 85, 703, 122, 809, 181}
	
	aoc.back.zy={}
	aoc.back.zy.采木矿 = {{{0,0,0xa3b4b3},{-556,34,0x1e35b6},{-429,17,0xc28754},{-319,22,0x173a4f},{-306,25,0x173a4e},}, 85, 70, 75, 869, 612}
	aoc.back.zy.采金币 = {{{0,0,0xa3b4b3},{-556,34,0x1e35b6},{-423,22,0xd09428},{-317,15,0x173b50},{-307,18,0x173a4e},}, 85, 70, 75, 869, 612}
	aoc.back.zy.采泉水 = {{{0,0,0xa3b1af},{-561,28,0x0d2f8c},{-437,22,0xabfbfb},{-321,20,0x153753},{-312,18,0x153950},}, 85, 70, 75, 869, 612}
	aoc.back.zy.采红钻 = {{{0,0,0x9eae91},{-553,25,0x3e55bf},{-429,15,0xec3839},{-325,13,0x16384f},{-314,13,0x16384e},}, 85, 70, 75, 869, 612}
	aoc.back.zy.采秘银 = {{{0,0,0xa2b2b2},{-543,31,0x27329a},{-438,22,0x27b669},{-332,23,0x173850},{-314,23,0x173a4e},}, 85, 70, 75, 869, 612}
	aoc.back.zy.采紫水晶 = {{{0,0,0xa3b4b3},{-556,34,0x1e35b6},{-434,15,0x6841d8},{-326,16,0x173951},{-318,18,0x173b4f},}, 85, 70, 75, 869, 612}


aoc.back.有活跃={{{1014, 214, 0x2f6721},{1097, 201, 0xc82626},}, 85}
	aoc.back.活跃界面={{{1047,230,0xcdef10},{964,229,0xb6e71a},}, 85}
		aoc.back.活跃领取={{{319, 279, 0xa20837},{327, 270, 0xd02c1f},{310, 269, 0xda341d},}, 85}
		aoc.back.活跃度= {{{458, 153, 0xa6033a},{413, 156, 0xeac626},{460, 177, 0xfcd924},{434, 191, 0xefc128},}, 85, 0, 0, 0, 0}


aoc.map={}
	aoc.map.地图 = {{
	{ 57, 576, 0xcfff10},--任务
	{190, 596, 0xe10000},--地图
	{265, 574, 0x415aad},--领地
	}, 85}
		aoc.map.在路上={{{526,362,0x6f8eff},{524,362,0x98f5fe},	{534,354,0x91e4ff},}, 85, 373, 125, 731, 438}
		aoc.map.感叹号={{{572,316,0x12abdc},{572,308,0x08c9ff},{573,260,0x09d0ff},}, 85, 327, 63, 828, 554}
		aoc.map.感叹号小={{{0,0,0x09d2ff},{1,0,0x09d9ff},}, 85, 357, 43, 758, 125}
	
aoc.tip={}
	aoc.tip.活跃奖励宝箱={{{563,462,0x93ef46},{496,434,0x45b653},}, 85}
	aoc.tip.运送回家={{{661, 418, 0x62db42},{781, 383, 0x229b49},}, 85}
	aoc.tip.遗迹确定={{{577,425,0x83ed42},{505,399,0x44b850},}, 85}
	aoc.tip.野怪不攻击={{
			{392,489,0x29a5c1},--取消
			{692,488,0xdc803f},--战斗
			},85}
	aoc.tip.野怪攻击={{	{704, 473, 0xd35d4c},	{439, 471, 0x1d8bb2},   }, 85}
	aoc.tip.商城购买确定={{{526,469,0xcc8823},{539,482,0x67e040},}, 85}
	aoc.tip.决斗={{{597, 143, 0xffe922},{783, 247, 0x17aa2a},}, 85}
	aoc.tip.英雄经验确定={{{567, 582, 0x124b5b},{573, 598, 0xffffff},}, 85}
	aoc.tip.遗迹胜利领取={{{569, 555, 0x1d5b23},{569, 558, 0xfafafa},}, 85}
	aoc.tip.重复登录={{{545, 386, 0x35565f},{426, 259, 0x8b97a5},}, 85}
	aoc.tip.战斗吃药={{{631, 443, 0x880c09},{639, 439, 0x295d24},}, 85}
	aoc.tip.英雄受伤吃药={{{626, 437, 0x770013},{708, 433, 0x28671f},}, 85}
	aoc.tip.英雄升级确定={{{753, 563, 0x6f4310},{778, 591, 0xe2be1b},}, 85}
    aoc.tip.被点扣体力确定={{{536, 484, 0x384261},{536, 483, 0xbcbec9},}, 85}

function tips()	
	if d(aoc.tip.运送回家,"运送回家",true,1)then
		采矿执行 = false
	elseif d(aoc.tip.活跃奖励宝箱,'活跃奖励宝箱',true,1)then
	elseif d(aoc.tip.野怪不攻击,"野怪不攻击",true,1)then
		caikaungwucha = caikaungwucha or 0
		caikaungwucha = caikaungwucha + 1
		if caikaungwucha%2 == 0 then
			click(471, 98)
		end
	elseif d(aoc.tip.遗迹确定,"遗迹确定",true,1)then
	elseif d(aoc.tip.商城购买确定,"商城购买确定",true,1)then
	elseif d(aoc.tip.决斗,"决斗",false)then
	elseif d(aoc.tip.英雄经验确定,"英雄经验确定",true,1)then
	elseif d(aoc.tip.遗迹胜利领取,"遗迹胜利领取",true,1)then
	elseif d(aoc.tip.重复登录,"重复登录",false)then
	elseif d(aoc.tip.战斗吃药,"战斗吃药",true,1)then
	elseif d(aoc.tip.英雄受伤吃药,"英雄受伤吃药",true,1)then
	elseif d(aoc.tip.英雄升级确定,"英雄升级确定",true,1)then
	elseif d(aoc.tip.被点扣体力确定,"被点扣体力确定",true,1)then
	elseif d(aoc.back.迁城界面,"迁城界面")then	
					f()	
	else
		return true
	end
end

function 遗迹tips()
	if d(aoc.tip.运送回家,"运送回家",true,1)then
		采矿执行 = false
	elseif d(aoc.tip.活跃奖励宝箱,'活跃奖励宝箱',true,1)then
	elseif d(aoc.tip.野怪不攻击,"野怪不攻击",true,2)then
		caikaungwucha = caikaungwucha or 0
		caikaungwucha = caikaungwucha + 1
		if caikaungwucha%2 == 0 then
			click(471, 98)
		end
	elseif d(aoc.tip.遗迹确定,"遗迹确定",true,1)then
	elseif d(aoc.tip.商城购买确定,"商城购买确定",true,1)then
	else
		return true
	end
end


function f()
	d(aoc.back.箭头,"箭头",true,1)
end

function 采矿()
	local 采矿执行 = false
	while true do
		if active(app_bid.aoc,10)then
			log("game is ok")
			if done(aoc.map.地图,"ditu",false,1)then
			    if d(aoc.map.在路上,"在路上",false) then
				elseif 采矿执行 then
					if (d(aoc.map.感叹号,"感叹号") or  d(aoc.map.感叹号小,"感叹号小"))then
						log("感叹号"..x)
						log("感叹号"..y)
						click(x,y+110)
					else
						local five = {{567,137,0xf2f9fc},{743,191,0xf2f8fb},{758,390,0xbec9d3},{430,387,0xb6c2b5},{393,140,0xe0ecef},}
						cankuanglung = cankuanglung or 0
						cankuanglung = cankuanglung + 1
						local fangxiang = cankuanglung%5 + 1
						click(five[fangxiang][1],five[fangxiang][2])
					end
					采矿执行 = false
				else
					d(aoc.map.地图,"ditu",true,1)
				end
			elseif done(aoc.back.箭头,"箭头",false,1) then
				if d(aoc.back.任务,'任务',false,1)then
					if uicfg.task and d(aoc.back.领取,'领取',true)then
						
					else
						log('准备采矿')
						if  d(aoc.back.有活跃,'有活跃',true,1)then
						elseif d(aoc.back.活跃界面,"活跃界面")then
							if d(aoc.back.活跃领取,'活跃领取',true,1)then
							elseif cpic(aoc.back.活跃度,"活跃度",true,1)then
							else
								d(aoc.back.箭头,"箭头",true,1)
							end
						else
							log("没有活跃，准备采矿")
							function 找矿()
								for k,v in pairs(aoc.back.zy)do
									if d(v,k,true)then
										return true
									end
								end
							end
							
							if 找矿() then
								采矿执行 = true
							else
								moveTo(703, 369, 703, 106)
							end
							
						end
					end
				elseif d(aoc.back.世界地图,"世界地图")then
					if cpic(aoc.back.前往,"前往",true,1)then
						delay(2)
					else
						f()
					end
				else
					f()
				end
			else
				if tips()then
					log("未知界面")
					click(40,40)
				end
			end
		end
		delay(1)
	end
end



aoc.map.商城红点={{{1118,16,0xc52228},{1009,20,0xdc7d5d},}, 85}
aoc.back.商城界面={{{580,33,0x002a35},{770,29,0xb37f22},{959,19,0x18a67e},}, 85}
	aoc.back.商城红点={{{1083, 368, 0xad0140},{1087, 366, 0xae0d37},}, 85, 908, 89, 1109, 529}
	aoc.back.宝箱界面={{{509,104,0xffe200},{510,101,0x5a2702},{497,89,0xaf1106},}, 85, 492, 87, 563, 127}
	aoc.back.宝箱界面2={{{277,91,0xd90043},{494,106,0xffe200},{685,92,0xd90043},}, 85}
		aoc.back.英雄宝箱={{{880,354,0xa9a36f},{880,353,0x241713},{883,331,0xae0e39},}, 85}
		aoc.back.开启宝箱={{{529,590,0x492300},{542,566,0xcc2723},}, 85}
	aoc.back.商店界面={{{239,104,0xffffff},{239,99,0x3f2d20},{231,85,0x6f3e1d},}, 85}
	    aoc.back.商店红钻={{{679,196,0xea3345},{690,197,0xffd5d3},{744,208,0x0c371e},{645,325,0xe3e26d},},85, 57, 137, 913, 608}
		aoc.back.商店水晶={{{335,192,0xb16ef2},{350,192,0x6630c0},{397,194,0x0d3021},{306,326,0xe8de6f},},85, 57, 137, 913, 608}
		aoc.back.商店秘银={{{594,205,0xc6ffc8},{638,194,0xafffa9},{618,213,0x183535},{560,324,0xe7e276},},85, 57, 137, 913, 608}
		aoc.back.商店木材={{{496,447,0xaa7c54},{513,449,0x2b130d},{551,447,0x0a331a},{446,560,0xc89f37},}, 85, 57, 137, 913, 608}
		aoc.back.商店尽头={{{394,241,0xffd944},{595,253,0xad9665},{796,257,0xb4ffff},}, 85, 93, 141, 905, 374}
		
function 商城()
	
    while true do
		if active(app_bid.aoc,10)then
			log("game is ok")
			if done(aoc.map.地图,"ditu",false,1)then
				delay(2)
				if done(aoc.map.商城红点,"商城红点",true,1)then
				else
					log("没有商城任务")
				end
			elseif d(aoc.back.箭头,"箭头",false,1) then
				if d(aoc.back.商城界面,"商城界面",false,1)then
					if d(aoc.back.宝箱界面,"宝箱界面",false)or d(aoc.back.宝箱界面2,"宝箱界面2",false)then
						if d(aoc.back.开启宝箱,"开启宝箱",true,1)then
						elseif d(aoc.back.英雄宝箱,"英雄宝箱",true,1) then
						else
							if d(aoc.back.商城红点,"商城红点",true,1) then
								log("change")
							else
								d(aoc.back.箭头,"箭头",true,1)
							end
						end
					elseif d(aoc.back.商店界面,"aoc.back.商店界面")then
						log("aoc.back.商店界面  准备买东西")
						if d(aoc.back.商店水晶,"商店水晶",true,1)then
					    elseif d(aoc.back.商店红钻,"商店红钻",true,1)then	
						elseif d(aoc.back.商店秘银,"商店秘银",true,1)then	
						elseif d(aoc.back.商店木材,"商店木材",true,1)then
					    elseif d(aoc.back.商店尽头,"商店尽头",false)then
						f()
						else	
							moveTo(453, 372,172, 372)
						end	
					else
						d(aoc.back.商城红点,"商城红点",true,1)
				    end
				else 
					f() 
				end
			else
		        if tips()then
					log("未知界面")
					click(40,40)
			    end	
			end 
        end
		delay(1)
    end



end







aoc.back.点任务={{{777,281,0xa0b1b2},{779,289,0xa4b3a4},{781,311,0x405a52},}, 85, 0, 0, 0, 0}

aoc.qita={}
   aoc.qita.战斗界面={{{454, 27, 0x186be0},{459, 27, 0x00ffea},}, 85}
   aoc.qita.战斗界面2={{{39, 30, 0x1a4d44},{38, 30, 0xcfce83},{43, 28, 0x28786e},}, 85}   
   aoc.qita.预设阵型={{{972, 79, 0x99aca5},{972, 82, 0x22513b},}, 85}
   aoc.qita.预设1={{{881, 132, 0xffffff},{882, 131, 0xffffff},}, 85}
   aoc.qita.开始={{{1059, 602, 0xffffff},{1054, 602, 0x437d1b},}, 85}
aoc.tip.无伤战斗={{{91,132,0x8efa30},{91,135,0x80fa37},{91,133,0x7ffa38},}, 85, 85, 130, 92, 140}
aoc.tip.无伤战斗2={{
	{91,133,0xa7f922},
	{91,135,0xaefd21},
}, 85, 86, 129, 92, 141}
aoc.tip.受伤战斗={{{91, 132, 0x13222e},{91, 134, 0x132330},}, 85}
aoc.tip.战损确定={{{740, 572, 0x1c5926},{740, 571, 0x329f42},}, 85}
aoc.tip.战损取消={{{392, 574, 0x104a5b},{390, 574, 0x1e87a7},}, 85}
aoc.tip.战损界面={{{ 563,  35, 0xcfba77},{ 564,  58, 0x3a5241},{1034, 581, 0x133c44},}, 85}


function 遗迹()
	遗迹执行 = false
	while true do
		if dingshi() == "非挂机时间" then
			if app.front_bid() == app_bid.aoc then
				app.close(app_bid.aoc)
			end
			delay(5)
			return false
		end
		if active(app_bid.aoc,10)then
			log("game is ok")
			if done(aoc.map.地图,"ditu",false,1)then
				if d(aoc.map.在路上,"在路上",false) then
				elseif 遗迹执行 then
					if (d(aoc.map.感叹号,"感叹号") or  d(aoc.map.感叹号小,"感叹号小"))then
						log("感叹号"..x)
						log("感叹号"..y)
						click(x,y+110)
					else
						local five = {{567,137,0xf2f9fc},{743,191,0xf2f8fb},{758,390,0xbec9d3},{430,387,0xb6c2b5},{393,140,0xe0ecef},}
						cankuanglung = cankuanglung or 0
						cankuanglung = cankuanglung + 1
						local fangxiang = cankuanglung%5 + 1
						click(five[fangxiang][1],five[fangxiang][2])
                    end
					遗迹执行 = false
				else
					d(aoc.map.地图,"点任务",true,1)	
				end
            elseif d(aoc.qita.战斗界面,"战斗界面",false,1) or d(aoc.qita.战斗界面2,"战斗界面2",false,1)then
				if d(aoc.qita.开始,"开始",true,1) then
				elseif d(aoc.qita.预设阵型,"预设阵型",true,1)then
				    if d(aoc.qita.预设1,"预设1",true,1)then
						delay(2)
					end
				end
				
			elseif done(aoc.back.箭头,"箭头",false,1) then
				if d(aoc.back.任务,'任务',false,1)then
					if d(aoc.back.点任务,'点任务',true,1)then
						遗迹执行 = true
					else
				       f()
				    end
				elseif d(aoc.back.世界地图,"世界地图")then
					if cpic(aoc.back.前往,"前往",true,1)then
						delay(2)
				
				    else
					   f()
					end	
				else
					f()
				end
			else
				if d(aoc.tip.战损界面,"战损界面",false,1)then
					if d(aoc.tip.无伤战斗,"无伤战斗",false,1) or d(aoc.tip.无伤战斗2,"无伤战斗2",false,1) then
						if d(aoc.tip.战损确定,"战损确定",true,1)then
						end	
					elseif d(aoc.tip.受伤战斗,"受伤战斗",true,1)then
						device.vibrator()
						delay(10)
						if d(aoc.tip.战损取消,"战损取消",true,1)then
							delay(3)
							d(aoc.tip.野怪不攻击,"野怪不攻击",true,1)
						end
					end
		        elseif 遗迹tips()then
					log("未知界面")
					if tips()then
						click(40,40)
					end
				end	
			end
        end
		delay(1)
    end
	
end







function cest()       --计时器
	local timeline = os.time()
	timeline = tonumber(timeline)
	while true do
		log(os.time()-timeline)

		delay(1)
	end
end




app_bid.awz="AWZ"
app_bid.awz主界面={{
	{ 621, 668, 0x6f7179},	--一键新机
	{ 719, 669, 0x6f7179},	--备份记录
	{1253,  91, 0x0950d0},
}, 85}
app_bid.awz切号={{
	{  87,  32, 0x007aff},
	{1291, 112, 0x008000},
	{1275,  73, 0xf9f9f9},
}, 85}


function 换号()
	while true do
		if active(app_bid.awz,2)then
			if d(app_bid.awz主界面,"awz主界面",true,2)then
			elseif d(app_bid.awz切号,"awz切号",false,1)then
				d(app_bid.awz切号,"awz切号",true,1)
				delay(3)
				return true
			end	
		end
		delay(0.5)
	end
end


aoc.back.深渊={{{346, 615, 0xffffff},{361, 589, 0xfff997},}, 85}
aoc.back.深渊界面={{{  45, 578, 0xd6d186},{ 560, 585, 0x87796a},{1048, 577, 0xf3f293},}, 85}

aoc.back.深渊资源2={{{84,307,0x94681f},{83,311,0x9b6f2e},}, 85, 0, 0, 0, 0}


aoc.back.深渊资源21={{{941,334,0xae8727},}, 25,  0, 0, 0, 0}

	




function 深渊领取()
	while true do
		if active(app_bid.aoc,10)then
			log("game is ok")
			if done(aoc.map.地图,"ditu",false,1)then
				d(aoc.map.地图,"点领地",true,3)	
			elseif done(aoc.back.箭头,"箭头",false,1) then
				if done(aoc.back.深渊,"深渊",true,1) then
				elseif done(aoc.back.深渊界面,"深渊界面",false,1) then
				
					
					if done(aoc.back.深渊资源2,"深渊资源2",true,1)then
					
					
					
					end
				end	
			elseif 遗迹tips()then
				log("未知界面")
				if tips()then
				  click(40,40)
				end  
			else
				f()
			end
		end	
		  delay(1)
	end
	 	
end


	
	
	

	
	
	
	
	
	while true do
	
	遗迹()
	end
	
	
	



