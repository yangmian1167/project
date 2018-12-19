nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
--xui.show("xui-sub")

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end
phonename = device.name()
bid={}
bid.淘集集 = {
				['appbid']='com.huanshou.taojiji',
				['url']="http://uri6.com/tkio/3eUVjqa",    --B3a链接 31 32 33 34
--				['url']="http://uri6.com/tkio/vuaYB3a",     --B3a链接 35 36 37 38
			}				
			
--phonelist_url = {
----	['iPhone12']='http://uri6.com/tkio/vuaYB3a',   --B3a链接 
----	['iPhone12']='http://uri6.com/tkio/vuaYB3a',   --B3a链接 
--}

--if phonelist_url[phonename] then
--	bid.淘集集.url = phonelist_url[phonename]
--end

			

screen.init(0)
var = {}
var.lun = 0
var.phonename = device.name()
var.phoneimei = sys.mgcopyanswer("SerialNumber")
var.tag = 'A10-20'
var.phone = phone
var.pwd = pwd
var.bank = nil
var.bankphone = nil
var.address = nil
var.money = nil
var.pay = nil


--全局变量

function checkip()
	ip = get_ip() or "192.168.1.1"
	local url = 'http://hlj.51-gx.com/Public/idfa/?service=idfa.checkip&ip='..ip
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("ip可以用:OK.",true)
			return true
		else
			log("ip, 排重失败",true)
		end
	end
end

function up_wenfree()
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = var.phonename or device.name()
	idfalist.phoneimei = var.phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = ip or get_ip() or  '192.168.1.1'
	idfalist.account = var.account
	idfalist.pwd = var.pwd
	idfalist.phone = var.phone
	idfalist.money = var.money
	idfalist.pay = var.pay
	return post(url,idfalist)
end

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

--openUrl("https://m.weibo.cn/status/4258678762614093?wm=3333_2001&from=1087093010&sourcetype=weixin&featurecode=newtitle")
--os.exit()


web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

function open(urls)
	openUrl(urls)
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
end

--open(bid['淘集集']['url'][device.name()])
--XXTfakerNewPhone(bid.淘集集.appbid)
--os.exit()
apptjj = {}
apptjj.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apptjj.弹窗 = {{{575,  88, 0xffffff},{319, 227, 0xffa6a6},{534, 918, 0xf01c05},{538, 950, 0xffffff},}, 85, 86, 47, 621, 969}

function newidfa()
	取号 = true
	验证码 = false
	取短信 = false
	提交 = false
	success = false
	timeline = os.time()
	outtime = rd(35,40)
	if XXTfakerNewPhone(bid.淘集集.appbid) then
		idfa = XXTfakerGetinfo(bid.淘集集.appbid)['IDFA']
		while os.time() - timeline < outtime do
			if active(bid.淘集集.appbid) then
				if d(apptjj.right,"apptjj.right",true)then
				elseif d(apptjj.弹窗,"apptjj.弹窗",true) then
				else
				moveTo(600,300,100,100,30,50)
				delay(1)
				click(321, 978)
				delay(1)
				click(462, 666)
				delay(1)
				end	
			end
			delay(2)
		end
		
		up(appname(bid.淘集集.appbid),bid['淘集集']['url'])
		delay(4)
		return true
	end
end




--[[]]
while true do
	if vpn() then
		if open(bid['淘集集']['url'])then
			newidfa()
		end
		closeX(bid.淘集集.appbid)
	end
	vpnx()
	delay(2*3)
end
--]]
