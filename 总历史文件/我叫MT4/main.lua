-- 此处为nLog功能实现操作
nLog = require('nLog')()

require("xxtsp")

game = "com.tencent.MT4"







mt4={}
-----------------------------------------------------------------------------------------
mt4.game_主界面={{{57,113,0xc7a685},{17,112,0xffde81},},85}
	mt4.game_自动中__={{{408,532,0xf1d56d},{422,532,0xf3d66e},}, 85, 354, 505, 607, 553}
	mt4.game_点击穿戴={{{823,474,0x779331},{815,484,0xffffff},{809,471,0x7c9834},}, 85, 761, 456, 899, 518}
	mt4.game_主线遇阻={{{119,217,0x3994ca},{165,242,0x90bb3e},{49,241,0x3999d1},}, 85, 6, 193, 212, 277}
	
mt4.game_在副本中={{{981,213,0xe0c382},{93,44,0x8e682d},},85}
	mt4.game_捡东西={{{806,324,0xeaba94},{814,315,0xfff6f1},}, 85, 784, 293, 835, 346}
	mt4.game_需求={{{497,194,0x6d8a21},{495,172,0x7ea531},{439,193,0x6e8b21},{555,191,0x708e23},}, 85, 412, 29, 568, 615}
------------------------------------------------------------------------------------------------------------
mt4.event_登录选择={{{260,564,0x738b2b},{568,566,0x6f8629},{809,566,0x208596},},85}		--游客,微信,qq好友玩
mt4.event_登录_同意={{{675,413,0x718a2a},{393,414,0x913d23},{563,412,0xbeac96},},85}	--同意,拒绝
mt4.event_登录_进入游戏={{{575,532,0x850702},{1106,118,0xffc35e},{1102,34,0xffe38b},},85}
mt4.event_登录_中间确定={{{570,418,0x6b8126},{565,416,0xdcd2d1},{564,416,0xfef3f2},}, 85, 484, 391, 649, 445}
mt4.event_登录_下面的确认={{{552,512,0x6f8729},{574,511,0xb0b87a},{573,511,0x0e1007},}, 85, 507, 488, 667, 538}
mt4.event_登录_创建角色={{{53,54,0xa2854c},{988,583,0x738c2c},},85}	--左
mt4.event_登录_输入角色名={{{817,321,0x6a8126},{660,314,0xd9d7d4},{659,296,0xfe7645},},85}
------------------game_event
mt4.event_选择坐骑={{{343,427,0x3f342d},{582,432,0x3e322c},{818,428,0x3c342c},{805,500,0x6f8629},},85}
mt4.event_回答问题={{{720,542,0x543e32},{1055,539,0x543e32},{729,596,0x543e32},},85}
mt4.event_回答问题A={{{1077,553,0x543e32},{1075,530,0x543e32},{421,530,0x543e32},},85}
mt4.event_击杀boss={{{1005,492,0xe9e9eb},{989,482,0xe4614d},},85}
	mt4.event_击杀boss_血条={{{621,164,0x252026},{621,163,0xfc0000},{621,159,0x221a27},}, 85, 381, 106, 748, 698}
mt4.event_活动界面={{{64,27,0xa6fbfe},{261,25,0xffffff},{287,24,0x342921},},85}
	mt4.event_活动界面_活跃值={{{548,546,0xdf0100},{554,539,0xe10900},}, 85, 139, 535, 1082, 577}
	mt4.event_活动界面_参与={{{530,280,0x63751d},{531,247,0x7b9934},{486,262,0x748c2d},{576,266,0x70872b},}, 85, 455, 110, 1080, 482}
mt4.event_活动界面_声望界面={{{65,26,0x9af7fe},{237,21,0xffffff},{241,22,0x32271f},},85}
	mt4.event_活动界面_声望任务={{{569,563,0x62741e},{769,564,0x62741d},{981,566,0x62731c},},85}
mt4.event_活动界面_声望界面_任务界面={{{1036,47,0xffde81},{1026,47,0x722614},},85}
	mt4.event_活动界面_声望界面_任务界面_帝都声望={{{819,321,0xffe05d},{819,336,0xffa82b},{866,339,0xf5c443},}, 85, 791, 289, 979, 367}
------------------------------------------------------------------------------------------------------------
mt4.tip_不允许={{{431,413,0x007aff},{725,415,0x007aff},}, 85, 321, 362, 817, 451}
mt4.tip_提交任务={{{1023,575,0x6a8025},{1029,574,0xfff4f3},{1033,574,0x6a8126},}, 85, 937, 541, 1108, 604}
mt4.tip_跳过剧情={{{1018,50,0xf3bb73},{1032,45,0xdb934f},}, 85, 936, 29, 1078, 75}
mt4.tip_添加好友={{{666,387,0x6f8729},{421,387,0x8f3e23},{800,188,0xa28c72},},85}
mt4.tip_世界地图={{{1104,30,0xffde81},{43,54,0x3dc9d8},},85}
mt4.tip_背包界面={{{66,24,0x97f4fd},{577,34,0xdae1e9},{763,32,0xfcdf2d},{963,27,0xfccbf5},},85}
	mt4.tip_背包界面_炉石={{{986,218,0x34e4f5},{981,210,0x3ff4fd},{986,212,0xcfddd0},{961,189,0xda5ad3},}, 85, 721, 184, 1104, 541}
	mt4.tip_背包界面_炉石_使用={{{788,245,0x677e25},{824,375,0x9f4d2b},}, 85, 765, 226, 874, 413}
mt4.tip_设置界面={{{977,83,0xffde80},{971,83,0xa73509},{594,103,0xfffeef},},85}
mt4.tip_商店界面={{{63,27,0x9ef6fd},{577,33,0xd6dee6},{762,32,0xfddf2d},{957,34,0xd43ef6},},85}
mt4.tip_公告={{{556,512,0x6f8729},{164,65,0xd1b794},{1030,65,0xd0b795},},85}
mt4.tip_提示x={{{925,133,0xc0a660},{915,133,0x62200c},{917,125,0xc0b17c},{934,125,0xc0b17c},}, 85, 902, 115, 946, 155}
-----------------------gametip------------------------
mt4.tip_福利界面={{{1106,88,0xffdc7e},{957,34,0xd43ef6},{763,30,0xfff03d},{577,32,0xd8e0e8},},85}


------------------------------------------------------------------------------------------------------------
mt4.new_箭头={{{574,229,0x98ffff},{565,242,0x89e0ff},}, 85, 538, 179, 598, 389}
mt4.new_向前={{{189,35,0x50a448},{152,113,0xc7a685},},85}
	mt4.new_光圈={{{365,564,0xffff99},{365,562,0xffff99},}, 85, 278, 460, 648, 631}


function play()
	screen.init(1)
	lun_click = 0
	
	while true do
		if active(game,8)then
			if d(mt4.game_主界面,"mt4.game_主界面")then
				if d(mt4.game_点击穿戴,"mt4.game_点击穿戴",true)then
				elseif d(mt4.game_自动中__,"game_自动中__")then
					delay(3)
				else
					if d(mt4.game_主线遇阻,"game_主线遇阻")then
						click(120, 316)
					else
						click(97, 201)
					end
				end


			elseif d(mt4.game_在副本中,"mt4.mt4.game_在副本中")then
				if d(mt4.game_捡东西,"game_捡东西",true)then
					delay(3)
				elseif d(mt4.game_需求,"mt4.game_需求",true)then
					delay(2)
				end
				
			else
				if event()then
					if tip()then
						if new()then
							log("nothing")
							lun_click = lun_click + 1
							if lun_click%2 == 0 then
								click(1098, 602)
							else
								click(height/2,width/2)
							end
						end
					end
				end
			end
		end
		delay(1)
	end
end

function new()
	if d(mt4.new_箭头,"mt4.new_箭头",false)then
		touch.on(186, 473)
			:move(186+10, 373)
			:msleep(3000)
		:off()
	elseif d(mt4.new_向前,"mt4.new_向前",false)then
		if d(mt4.new_光圈,"mt4.new_光圈")then
			touch.on(186, 473)
				:move(186-13, 573)
				:msleep(4000)
			:off()
		else
			touch.on(186, 473)
				:move(186+13, 373)
				:msleep(4000)
			:off()
		end
	else
		return true
	end
end

function event()
	if d(mt4.event_登录选择,"mt4.event_登录选择",true,1)then
		
	elseif d(mt4.event_登录_创建角色,"mt4.event_登录_创建角色",true,2)then
	elseif d(mt4.event_登录_同意,"mt4.event_登录_同意",true,1)then
	elseif d(mt4.event_登录_进入游戏,"mt4.event_登录_进入游戏",true,1)then
	elseif d(mt4.event_登录_中间确定,"mt4.event_登录_中间确定",true,1)then
	elseif d(mt4.event_登录_下面的确认,"mt4.event_登录_下面的确认",true,1)then
	elseif d(mt4.event_登录_输入角色名,"mt4.event_登录_输入角色名",true,1)then
	----------游戏中的 event
	elseif d(mt4.event_击杀boss,"mt4.event_击杀boss")then
		if d(mt4.event_击杀boss_血条,"event_击杀boss_血条")then
			touch.on(564, 321)
				:move(x, y-50)
				:msleep(2000)
			:off()
		end
		 d(mt4.event_击杀boss,"mt4.event_击杀boss",true)
		
	elseif d(mt4.event_活动界面_声望界面_任务界面,"mt4.event_活动界面_声望界面_任务界面",false,1)then
		
		if d(mt4.event_活动界面_声望界面_任务界面_帝都声望,"event_活动界面_声望界面_任务界面_帝都声望",true)then
		else
			d(mt4.event_活动界面_声望界面_任务界面,"mt4.event_活动界面_声望界面_任务界面",true,1)
		end
		
	elseif d(mt4.event_活动界面_声望界面,"mt4.event_活动界面_声望界面",false,1)then
			d(mt4.event_活动界面_声望任务,"mt4.event_活动界面_声望任务",true,2)
			delay(3)
	elseif d(mt4.event_活动界面,"mt4.event_活动界面",false,1)then
		if d(mt4.event_活动界面_活跃值,"event_活动界面_活跃值",true)then
		elseif d(mt4.event_活动界面_参与,"mt4.event_活动界面_参与",true)then
			delay(3)		
		end
		
	elseif d(mt4.event_回答问题,"mt4.event_回答问题",true,math.random(1,3))then
	elseif d(mt4.event_回答问题A,"mt4.event_回答问题A",true,math.random(1,3))then
	elseif d(mt4.event_选择坐骑,"mt4.event_选择坐骑",true,math.random(1,3))then
		d(mt4.event_选择坐骑,"mt4.event_选择坐骑",true,4)
		
		
	else
		return true
	end
end

function tip()
	if d(mt4.tip_不允许,"mt4.tip_不允许",true)then
	elseif d(mt4.tip_背包界面,"mt4.tip_背包界面",false,1)then
		if d(mt4.tip_背包界面_炉石,"tip_背包界面_炉石",true)then
			delay(3)
			d(mt4.tip_背包界面_炉石_使用,"tip_背包界面_炉石_使用",true)
		else
			d(mt4.tip_背包界面,"mt4.tip_背包界面",true,1)
		end

	elseif d(mt4.tip_设置界面,"mt4.tip_设置界面")then
		d(mt4.tip_设置界面,"mt4.tip_设置界面",true,1)
		
	elseif d(mt4.tip_商店界面,"mt4.tip_商店界面",false,1)then
		
		 d(mt4.tip_商店界面,"mt4.tip_商店界面",true,1)
		
	elseif d(mt4.tip_福利界面,"mt4.tip_福利界面",false,1)then
		d(mt4.tip_福利界面,"mt4.tip_福利界面",true,1)
	
	
		
	elseif d(mt4.tip_公告,"mt4.tip_公告",true,1)then
	elseif d(mt4.tip_跳过剧情,"mt4.tip_跳过剧情",true)then
	elseif d(mt4.tip_提交任务,"mt4.tip_提交任务",true)then
	elseif d(mt4.tip_世界地图,"mt4.tip_世界地图",true,1)then
	elseif d(mt4.tip_提示x,"mt4.tip_提示x",true,1)then
	elseif d(mt4.tip_添加好友,"mt4.tip_添加好友")then
		click(459, 441)
		 d(mt4.tip_添加好友,"mt4.tip_添加好友",true,1)
	else
		return true
	end
end


play()






































































































































































