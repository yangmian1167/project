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
bid.safari = "com.apple.mobilesafari"
bid.王国纪元 = "com.igg.ios.lordsmobile"



screen.init(1)
var = {}
var.lun = 0
var.IGGID = ''
--全局变量

function up(text,state)
	local url = 'http://onlyonelife.online/Public/facebook/?service=Facebook.add'
	local flaccount ={}
	flaccount.fristname = text
	flaccount.mail = var.IGGID
	flaccount.password = get_ip()
	flaccount.phonename = device.name()
	flaccount.map = sys.version()
	return post(url,flaccount)
end

function rd(n,k)
	return math.random(n,k)
end


wg={}
wg.accountUI={{{878,160,0xffbd36},{641,416,0x2d7486},{493,496,0x2e7486},{513,415,0x2e7486},},85}
wg.org={438, 217, 593, 257}




function UPaccount()
	if d(wg.accountUI,"accountUI")then
		screen.keep(true)
		local txt = screen.ocr_text(438, 217, 593, 257) -- 默认配置是使用英文数字模式识别文字
		var.IGGID = txt:atrim()
		log(var.IGGID)
		screen.keep(false)
		up('IGGID',state)
		return true
	end
end

function open()
	XXTfakerNewPhone(bid['王国纪元'])
	XXTfakerNewPhone(bid.safari)
	url = 'https://app.appsflyer.com/id1071976327?af_prt=Tapcash&pid=cashbuzz&c=tpch.ios.lo.cn.cpe.monsterlv2.cashbuzz.20180502.2000&af_siteid=318_001'
	openUrl(url)
	UPaccount()
end


if UPaccount()then
	os.exit()
else
	vpnx()
	if vpn()then
		open()
	end
end






































	
	