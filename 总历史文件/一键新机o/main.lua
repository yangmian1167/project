nLog = require('nLog')()
require('faker')
require('xxtsp')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

bid={}
bid.letter2048 = 'com.accoc.firstapp'
screen.init(0)
var = {}
var.lun = 0
--全局变量

letter = {}
letter.x = {{{49,48,0xffffff},{40,48,0x7cb0df},{60,49,0x7cb0df},},85}
letter.playgame = {{{158,942,0x81b7e8},{548,936,0xffffff},{663,69,0x7db0de},},85}
letter.play = {{{87,230,0x81b7e8},{220,230,0x81b7e8},{494,230,0x81b7e8},
		{671,230,0x81b7e8},{197,103,0x5c4a58},},85}
letter.gameover = {{{477,1008,0xf57c5f},{269,880,0xf3956d},{420,652,0xf3956d},}, 85}
letter.adx={{{705,50,0x090c0d},{689,50,0xd6d8d8},{705,37,0xd5d7d8},{707,41,0x090b0c},}, 85, 665, 24, 737, 80}

--XXTfakerNewPhone(bid.letter2048)
function rd(n,k)
	return math.random(n,k)
end

function playgame(appbid)
	local timeline = os.time()
	local playtime = 60* math.random(15,20)
	other = 0

	while os.time() - timeline < playtime do
		if vpn()then
			if active(appbid,rd(3,5))then
				if d(letter.x,"letter.x",true,1)then
				elseif d(letter.playgame,"playgame",true,1)then
				elseif d(letter.play,"play")then
					var.lun = var.lun + 1
					if var.lun%4 == 0 then
						moveTo(128, 923,128,422)
					elseif var.lun%4 == 1 then
						moveTo(120,419,623,419)
					elseif var.lun%4 == 2 then
						moveTo(619,419,619,918)
					elseif var.lun%4 == 3 then
						moveTo(627,918,128,918)
					end
				else
					if d(letter.gameover,"gameover",true,1)then
						delay(2)
					elseif d(letter.adx,"adx",false)then
						delay(rd(3,10))
						d(letter.adx,"adx",true)
					else
						click(40,40)
						other = other + 1
						if other > 6 then
							other = 0
							closeX(appbid)
						end
						delay(5)
					end
				end
			end
			delay(0.1)
		else
			return false
		end
	end
end

while true do
	if vpn()then
		if XXTfakerNewPhone(bid.letter2048)then
			playgame(bid.letter2048)
		end
		vpnx()
	end
end






	
	