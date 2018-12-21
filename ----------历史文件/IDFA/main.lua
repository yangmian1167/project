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
bid.斗地主娱乐游戏 = 'com.ahcoole3.ddzddz'
bid.淘劵街 = 'com.tqjw.taoquanjieww'
bid.我爱斗地主 = 'com.shhstudio.love.ddz'
bid.富宏棋牌 = 'com.336SF4RY4P.fhqp'
bid.美丽方舟 = 'com.mymlfz.newmlfz'
bid.波波视频 = 'com.yixia.Miaokan'

screen.init(0)
var = {}
var.lun = 0
--全局变量

function up(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = '美丽方舟'
	flaccount.mail = idfa
	flaccount.password = "Aa112211"
--	flaccount.phone = phone
	flaccount.phonename = device.name()
--	flaccount.lastname = state or "暂未购买"
	flaccount.map = text
	--get.locationMatching='include&locationLevel=c&location=江苏'
	return post(url,flaccount)
end

--XXTfakerNewPhone(bid.letter2048)
function rd(n,k)
	return math.random(n,k)
end

XXTfakerNewPhone(bid.波波视频)



	
	