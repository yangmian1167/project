-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
screen.init(1)



app.bid = {}
app.bid_plm = 'com.xishanju.qyq'
app.bid_wx='com.tencent.xin'
plm = {}
plm.tips= {}
plm.tips_发送通知 = {{{693, 411, 0x007aff},{455, 413, 0x057cfe},}, 85}
plm.tips_访问位置 = {{{391, 458, 0x007aff},{687, 468, 0x9db7de},}, 85}
plm.tips_微信登录= {{{527, 304, 0x237829},{677, 304, 0x277b2b},}, 85}
plm.tips_打开微信= {{{675, 377, 0x007aff},{448, 376, 0x057cfe},}, 85}
plm.tips_确认登录= {{{802, 207, 0x1aad19},{807, 406, 0x1aad19},}, 85}
plm.tips_分享= {{{534, 275, 0xa03b21},{626, 286, 0xebcd99},}, 85}
plm.tips_more= {{{524, 159, 0x686871},{502, 162, 0x686871},{480, 162, 0x686871},}, 85}
plm.tips_more1= {{{506, 135, 0x686871},{486, 136, 0x686871},{461, 137, 0x686871},}, 85}
plm.tips_we打开= {{{732, 344, 0xffffff},{652, 345, 0xcdcdcd},{348, 367, 0x00ba0c},{302, 328, 0x00d10d},}, 85}
plm.tips_we打开1= {{{1017, 190, 0xe6e6e6},{ 919, 195, 0xadadad},{  46, 175, 0x00d20d},{  84, 213, 0x00bb0c},}, 85, 0, 0, 0, 0}
plm.tips_done= {{{1026, 21, 0x007aff},{ 945, 87, 0x4cd964},}, 85}
plm.tips_发送给朋友= {{{ 52, 224, 0x09bb07},{126, 228, 0xa7a7a7},{ 67, 256, 0x09bb07},}, 85, 0, 0, 0, 0}
--plm.tips_发送给朋友界面找= {{{ 50, 18, 0x595959},{ 93, 27, 0x000000},{547, 19, 0x505050},}, 85}
plm.tips_确认发送= {{{677, 399, 0x85befc},{455, 398, 0xf8f8f8},}, 85}
plm.tips_已发送好的= {{{558, 416, 0x6dcb6d},{572, 413, 0x89d589},}, 85}
plm.tips_关闭分享= {{{804, 82, 0xdb3d04},{821, 81, 0xffffff},{835, 81, 0xd43b05},}, 85}
--plm.tips_放弃奖励= {{{677, 414, 0x488b50},{515, 420, 0x4b5486},}, 85}
plm.tips_放弃奖励= {{{299,  87, 0x00d30d},{316, 113, 0x00cc0d},{386, 178, 0x00ba0c},}, 85, 279, 70, 861, 247}
plm.tips_杠出掉= {{{501, 367, 0x4ba030},{658, 375, 0x8b2514},}, 85}
plm.tips_领取奖励分享= {{{449, 575, 0x64d73d},{469, 573, 0xacd99b},}, 85}
plm.tips_点微信图标1= {{{362, 419, 0x3cb035},{380, 443, 0x40ac37},{455, 506, 0x3cb035},}, 85}
plm.tips_领奖确定= {{{510, 481, 0x51a733},{636, 476, 0x5ab238},}, 85}
plm.tips_领取成功关闭= {{{809, 201, 0x696974},{564, 408, 0x75cf44},}, 85}

plm.tips_前往领取= {{{494, 478, 0xffe013},{517, 476, 0xf3b226},{551, 477, 0xf8c82b},}, 85, 452, 451, 689, 524}
plm.tips_每日分享= {{{845, 125, 0xfffffe},{629, 395, 0xcf972a},}, 85}
plm.tips_立刻领取= {{{598, 491, 0x076e2b},{499, 215, 0xafa97c},{515, 145, 0x696d88},}, 85, 453, 125, 875, 515}
plm.tips_金币不足= {{{848, 148, 0xe1dff2},{543, 439, 0x55ad36},{525, 440, 0xecbe16},}, 85, 398, 120, 876, 499}
plm.tips_返回主界面= {{{29, 30, 0xdbdaf4},{44, 29, 0x4c4b6c},}, 85}
plm.tips_暂未开放= {{{1075,  25, 0xe8592a},{ 651,  26, 0xb67026},{ 586, 285, 0x959595},}, 85}
plm.tips_钻石兑换= {{{652, 480, 0x3d912b},{517, 476, 0xa83d2b},}, 85}
plm.tips_通知权限= {{{814, 211, 0xd6d7da},{648, 416, 0x378d2c},{508, 417, 0x8f261b},{308, 393, 0x5b4b85},}, 85}
plm.tips_二人雀神 = {{{153, 158, 0xc57a29},{366, 159, 0x4179b0},{556, 162, 0x564a73},{767, 164, 0x66a652},{955, 159, 0xc47727},}, 85}
plm.tips_集运红包返回 = {{{  26, 21, 0xcbcbcb},{1037,  4, 0xe80912},}, 85}
plm.tips_活动返回 = {{{ 28, 24, 0x37364e},{963,  6, 0xece34e},{985, 12, 0x74695e},}, 85}

plm.主界面 ={{{ 187, 596, 0xf2e5dd},{ 471, 599, 0xc7b4aa},{ 613, 596, 0xf3e6de},{ 759, 600, 0xeddcd1},{ 896, 603, 0x2c1911},{1049, 603, 0xe2c9b8},}, 85, 151, 572, 1122, 624}
plm.主界面_领取奖励 ={{{862, 100, 0x9ae662},{861, 131, 0x519647},{992, 130, 0x38882e},{991,  99, 0x98e65e},}, 85, 846, 83, 1016, 587}
plm.主界面_沈阳麻将 ={{{229, 114, 0xe4c638},{246, 265, 0x55311b},{289, 264, 0xfdfcf2},{355, 206, 0x028567},}, 85, 218, 108, 424, 309}
plm.主界面_金币场 ={{{448, 241, 0x0d5204},{653, 237, 0x3c4c24},{558, 342, 0xf63f2a},{534, 422, 0x3c2b1f},}, 85, 405, 140, 698, 513}
plm.主界面_打开领奖 ={{{608, 594, 0xf6ebe4},{650, 599, 0x5d4940},}, 85, 585, 576, 707, 625}
plm.主界面_初级场 ={{{234, 269, 0xbef851},{337, 237, 0xbbd054},}, 85}



plm.二人雀神金币场界面 ={{{759, 235, 0xd09c56},{339, 224, 0xb7cf57},{358, 399, 0x73adc8},}, 85, 160, 133, 965, 516}

plm.领奖中心 ={{{ 28, 30, 0xd9daf4},{321, 21, 0xf1ece1},{856, 31, 0xfe3331},}, 85}
plm.领奖中心_领取={{{882, 116, 0x63ba3b},{986, 119, 0x5db338},}, 85, 842, 74, 1019, 590}

plm.出牌界面 ={{{ 950, 44, 0x041912},{1021, 43, 0xd8d2d4},{1095, 44, 0xd6d5d6},{ 974, 26, 0x3f1c12},}, 85, 893, 12, 1124, 72}
plm.出牌界面_奖励满了 ={{{1105, 111, 0x800906},{1126, 150, 0x4aa91c},}, 85}
plm.出牌界面_打开宝箱 ={{{441, 358, 0x7e0502},{527, 470, 0x49a51b},}, 85}

plm.出牌界面_取消托管 ={{{497, 561, 0xae1b01},{647, 566, 0x850e00},}, 85}
plm.出牌界面_选听牌 ={{{327, 537, 0xe4e5de},{389, 539, 0xe0e1d9},{359, 514, 0xf4db46},}, 85, 3, 462, 1117, 584}
plm.出牌界面_出牌 ={{{ 952, 516, 0xecede8},{1019, 516, 0xeaebe5},}, 85, 14, 508, 1120, 524}
plm.出牌界面_吃 ={{{727, 429, 0x4363d5},{739, 459, 0x456ddb},}, 85, 441, 395, 1124, 526}
plm.出牌界面_听 ={{{734, 426, 0x1c7613},{752, 445, 0x2ba82c},}, 85, 526, 397, 1043, 514}
plm.出牌界面_碰 ={{{736, 425, 0x8a7007},{743, 449, 0xad8006},}, 85, 539, 390, 1021, 529}
plm.出牌界面_胡 ={{{713, 437, 0x462775},{743, 444, 0xfae1fa},}, 85, 465, 422, 1048, 513}
plm.出牌界面_杠 ={{{754, 460, 0x850000},{754, 425, 0xad220d},}, 85, 474, 402, 1067, 522}
plm.出牌界面_过 ={{{901, 474, 0x51a6ac},{936, 476, 0x4aa4ad},}, 85, 651, 399, 1059, 512}
plm.出牌界面_过1 ={{{901, 474, 0x7bc0c7},{935, 476, 0x70bac6},}, 85, 635, 395, 1043, 519}
plm.出牌界面_开始 ={{{ 994, 574, 0xda9731},{1096, 115, 0xf9ecc8},{1097,  47, 0xd7d5d9},}, 85}
plm.出牌界面_选牌 ={{{ 954, 540, 0xe0e1d9},{ 952, 626, 0xe0e1d9},{1019, 623, 0xdfe0d8},{1015, 540, 0xe0e1d9},}, 85, 946, 489, 1028, 637}

function plmgame()
	领奖_key = false
	time_out = os.time()
	while os.time() - time_out < 30*60 do
		if active(app.bid_plm)then
			if d(plm.主界面,"plm.主界面") then
				if d(plm.主界面_领取奖励,"plm.主界面_领取奖励",true,1) then
				elseif 领奖_key and d(plm.主界面_打开领奖,"plm.主界面_打开领奖",true,1) then
				elseif d(plm.主界面_沈阳麻将,"plm.主界面_沈阳麻将",true,1) then
				elseif d(plm.主界面_金币场,"plm.主界面_金币场",true,1) then
				 
				end
			
			elseif d(plm.二人雀神金币场界面,"plm.二人雀神金币场界面") then
				if d(plm.主界面_初级场,"plm.主界面_初级场",true,1) then
				end	
			elseif d(plm.出牌界面,"plm.出牌界面",true,1) then
				if d(plm.出牌界面_奖励满了,"plm.出牌界面_奖励满了",true,1) then
					if d(plm.出牌界面_打开宝箱,"plm.出牌界面_打开宝箱",true,1) then
					end
				
				elseif d(plm.出牌界面_取消托管,"plm.出牌界面_取消托管",true,1) then
				elseif d(plm.出牌界面_开始,"plm.出牌界面_开始",true,1) then
				elseif d(plm.出牌界面_胡,"plm.出牌界面_胡",true,1) then
--				elseif d(plm.出牌界面_吃,"plm.出牌界面_吃",true,1) then
--				elseif d(plm.出牌界面_听,"plm.出牌界面_听",true,1) then
--				elseif d(plm.出牌界面_碰,"plm.出牌界面_碰",true,1) then
				--elseif d(plm.出牌界面_杠,"plm.出牌界面_杠",true,1) then
				elseif d(plm.出牌界面_过1,"plm.出牌界面_过1",true,1) then
				elseif d(plm.出牌界面_过,"plm.出牌界面_过",true,1) then
				elseif d(plm.出牌界面_出牌,"plm.出牌界面_出牌",true,1) then
				elseif d(plm.出牌界面_选听牌,"plm.出牌界面_选听牌",true,1) then
				elseif d(plm.出牌界面_选牌,"plm.出牌界面_选牌",true,1) then
					if d(plm.出牌界面_选牌,"plm.出牌界面_选牌",true,1) then
					end
				end
			elseif d(plm.领奖中心,"plm.领奖中心") then	
				if d(plm.领奖中心_领取,"plm.领奖中心_领取",true,1)then
				else 
					d(plm.领奖中心,"plm.领奖中心",true,1)
				
				end
			
		
			elseif d(plm.tips_发送通知,"plm.tips_发送通知",true,1) then
			elseif d(plm.tips_访问位置,"plm.tips_访问位置",true,1) then
			elseif d(plm.tips_微信登录,"plm.tips_微信登录",true,1) then
				delay(3)
				if d(plm.tips_确认登录,"plm.tips_确认登录",true,1) then
				end	
			elseif d(plm.tips_打开微信,"plm.tips_打开微信",true,1) then
			
			elseif d(plm.tips_确认登录,"plm.tips_确认登录",true,1) then
			elseif d(plm.tips_分享,"plm.tips_分享",true,1) then
			elseif d(plm.tips_more,"plm.tips_more",true,1) then
			elseif d(plm.tips_more1,"plm.tips_more1",true,1) then
			elseif d(plm.tips_we打开,"plm.tips_we打开",true,1) then
			elseif d(plm.tips_we打开1,"plm.tips_we打开1",true,1) then
			
			elseif d(plm.tips_done,"plm.tips_done",true,1) then
--			elseif d(plm.tips_点微信图标,"plm.tips_点微信图标",true,1) then     ----参数不见了， 等新的注册号重新找参数。
--				delay(4)
--				moveTo(933, 255, 933, 114)
--				if d(plm.tips_发送给朋友,"plm.tips_发送给朋友",true,1) then
--					delay(2)
--					click(223, 250)
--					if d(plm.tips_确认发送,"plm.tips_确认发送",true,1) then
						
--					end	
--				end	
			elseif d(plm.tips_已发送好的,"plm.tips_已发送好的",true,1) then
				if d(plm.tips_关闭分享,"plm.tips_关闭分享",true,1) then
					d(plm.tips_放弃奖励,"plm.tips_放弃奖励",true,1) 
				end
			elseif d(plm.tips_前往领取,"plm.tips_前往领取",true,1) then
			elseif d(plm.tips_领取奖励分享,"plm.tips_领取奖励分享",true,1) then
			elseif d(plm.tips_点微信图标1,"plm.tips_点微信图标1",true,1) then
			elseif d(plm.tips_领奖确定,"plm.tips_领奖确定",true,1) then
			elseif d(plm.tips_领取成功关闭,"plm.tips_领取成功关闭",true,1) then
			elseif d(plm.tips_每日分享,"plm.tips_每日分享",true,1) then
			elseif d(plm.tips_立刻领取,"plm.tips_立刻领取",true,1) then
			elseif d(plm.tips_杠出掉,"plm.tips_杠出掉",true,1) then
			elseif d(plm.tips_金币不足,"plm.tips_金币不足",true,1) then
				领奖_key = true
				if d(plm.tips_返回主界面,"plm.tips_返回主界面",true,1) then
				end	
			elseif d(plm.tips_暂未开放,"plm.tips_暂未开放",true,1) then
			elseif d(plm.tips_钻石兑换,"plm.tips_钻石兑换",true,2) then

			elseif d(plm.tips_通知权限,"plm.tips_通知权限",true,1) then
			elseif d(plm.tips_二人雀神,"plm.tips_二人雀神",true,1) then
			elseif d(plm.tips_集运红包返回,"plm.tips_集运红包返回",true,1) then
			elseif d(plm.tips_活动返回,"plm.tips_活动返回",true,1) then
			else
				click(1118, 521)
			end
		end
	end
		app.close(app.bid_plm)	
end


plmgame()


