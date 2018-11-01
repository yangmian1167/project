nLog = require('nLog')()
require('faker')
require('xxtsp')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end
phonename = device.name()

bid={}

bid.闪电降价 = {
				['appbid']='com.hs.shanjiang',
				['url']={
					['iPhone05']='https://lnk0.com/QZhE94',
					['iPhone06']='https://lnk0.com/QZhE94',
--					['iPhone21']='https://lnk0.com/QZhE94',
--					['iPhone22']='https://lnk0.com/QZhE94',
--					['iPhone23']='https://lnk0.com/QZhE94',
--					['iPhone24']='https://lnk0.com/QZhE94',
--					['iPhone25']='https://lnk0.com/QZhE94',
					
					
					['iPhone07']='https://lnk0.com/Vd0gk4',
					['iPhone08']='https://lnk0.com/Vd0gk4',
--					['iPhone26']='https://lnk0.com/Vd0gk4',
--					['iPhone27']='https://lnk0.com/Vd0gk4',
--					['iPhone28']='https://lnk0.com/Vd0gk4',
--					['iPhone29']='https://lnk0.com/Vd0gk4',
--					['iPhone30']='https://lnk0.com/Vd0gk4',
					
					
					['iPhone09']='https://lnk0.com/dEdI5k',																	
					['iPhone10']='https://lnk0.com/dEdI5k',																	
--					['iPhone31']='https://lnk0.com/dEdI5k',																	
--					['iPhone32']='https://lnk0.com/dEdI5k',																	
--					['iPhone33']='https://lnk0.com/dEdI5k',																	
--					['iPhone34']='https://lnk0.com/dEdI5k',																	
--					['iPhone35']='https://lnk0.com/dEdI5k',																	
				
	
					['iPhone39']='http://lnk0.com/toQNx9',
					['iPhone40']='http://lnk0.com/toQNx9',
--					['iPhone36']='http://lnk0.com/toQNx9',
--					['iPhone37']='http://lnk0.com/toQNx9',
--					['iPhone38']='http://lnk0.com/toQNx9',
						}
				}


screen.init(0)
var = {}
var.lun = 0
--全局变量
function checkip()
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.checkip&ip='..ip
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

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
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
	if XXTfakerNewPhone("com.apple.mobilesafari")then
		delay(2)
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
end



apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.闪电降价tip={{{374,886,0xffdb4c},{256,881,0xffdb4c},{471,227,0x4c4c4c},},85}

function newidfa(bids,times)
	for i= 1,times do
		if XXTfakerNewPhone(bids)then
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(20,35)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.right,"apparr.right",true)then
					elseif d(apparr.闪电降价tip,"apparr.闪电降价tip",true,1)then
					
					else
						moveTo(600,300,100,100,30,50)
						delay(1)
						click(321, 978)
						delay(1)
						click(462, 666)
						delay(1)
					end
				end
			end
			up(appname(bids),bid['闪电降价']['url'][phonename])
		end
	end
end


--[[]]
require("jhlm")

while true do
	if false or vpn()then
		--[[
		if open(bid.集享联盟.url)then
			newidfa(bid.集享联盟.appbid,1)
		end
		--]]
		
		ip = get_ip()
		if ip ~= nil then
			if checkip()then
				if open(bid['闪电降价']['url'][phonename])then
					newidfa(bid.闪电降价.appbid,1)
				end
			end
		end
	end
	vpnx()	
	delay(rd(15,25))
end
--]]