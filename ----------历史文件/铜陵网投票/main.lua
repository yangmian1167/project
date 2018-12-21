-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('faker')
require('xxtsp')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

appbid = 'cn.tongling.app'
tongling = {}

tongling.主界面 = {{
	{51,  85, 0x15bfff},
	{64, 101, 0xeafaff},
}, 85}

	tongling.主界面_铜陵校园歌手大赛 = {{{356, 281, 0x5a9d70},{309, 253, 0x231514},{172, 283, 0xe93828},}, 85, 12, 138, 624, 394}

tongling.搜索界面 = {{
	{124, 81, 0x9c9c9c},
	{142, 96, 0x333333},
}, 85}

tongling.搜索界面_请输入名称和编号 = {{{174, 482, 0xcccccc},{ 67, 527, 0xb8d1d7},{ 68, 528, 0xff1c1c},{145, 607, 0x7dd076},{306, 612, 0xf5cb81},{609, 476, 0x7dd076},{178, 483, 0xeaeaea},}, 85, 1, 125, 632, 1031}
tongling.搜索界面_点击前往 = {{{540, 1082, 0xffffff},{492, 1053, 0x007aff},{626, 1122, 0x007aff},}, 85, 476, 1045, 638, 1134}
tongling.投票界面 = {{
	{122, 86, 0x8b8b8b},
	{161, 86, 0x717171},
}, 85}
	tongling.投票界面_为我加油 = {{{ 77, 860, 0xf2f692},{123, 862, 0x333333},{160, 861, 0xb6b874},{263, 862, 0xf2f692},}, 85, 23, 128, 302, 1051}
tongling.tips_投票成功 = {{{139, 611, 0x58e08f},{244, 597, 0x4dd584},{333, 567, 0x3c2415},{490, 611, 0x86e3ac},{445, 619, 0x4dd584},}, 85, 81, 494, 536, 717}




function toupiao()
	local TIMEline = os.time()
	local OUTtime = rd(180,220)
	while os.time()- TIMEline < OUTtime do
		if active(appbid,5) then
			if d(tongling.tips_投票成功,'tongling.tips_投票成功')then
				return true
			elseif d(tongling.主界面,'tongling.主界面') then	
				d(tongling.主界面_铜陵校园歌手大赛,'tongling.主界面_铜陵校园歌手大赛',true)
			elseif d(tongling.搜索界面,'tongling.搜索界面') then	
				if d(tongling.搜索界面_请输入名称和编号,'tongling.搜索界面_请输入名称和编号',true) then	
					input('186')
					d(tongling.搜索界面_点击前往,'tongling.搜索界面_点击前往',true)
				else
					moveTo(477,725,431,474)
				end
			elseif d(tongling.投票界面,'tongling.投票界面') then	
				if d(tongling.投票界面_为我加油,'tongling.投票界面_为我加油',true) then
				else
					moveTo(477,725,431,474)
				end

			end
		end
		delay(1)
	end
end	






while true do
--	vpnx()
--	delay(math.random(3,5))
--	if vpn() then
		if XXTfakerNewPhone(appbid) then
			delay(3)
			toupiao()
			closeX(appbid)
		end	
--	end

end














