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

bid={}
--bid.果聊 = {
--				['appbid']='com.hachin.im',
--				['url']='https://lnk0.com/Y9EFls',
--			}
bid.闪电降价 = {
				['appbid']='com.hs.shanjiang',
				['url']='https://lnk0.com/dEdI5k',
				['url']='https://lnk0.com/Vd0gk4',
				['url']='https://lnk0.com/QZhE94',
			}
bid.闪电降价.url={}
bid.闪电降价.url.iPhone01='https://lnk0.com/QZhE94'

bid.闪电降价.url.iPhone02='https://lnk0.com/Vd0gk4'

bid.闪电降价.url.iPhone03='https://lnk0.com/dEdI5k'

bid.闪电降价.url.iPhone04='http://lnk0.com/toQNx9'
--bid.闪电降价.url.iPhone31='http://lnk0.com/toQNx9'
--bid.闪电降价.url.iPhone32='http://lnk0.com/toQNx9'
--bid.闪电降价.url.iPhone33='http://lnk0.com/toQNx9'
--bid.闪电降价.url.iPhone34='http://lnk0.com/toQNx9'
--bid.闪电降价.url.iPhone35='http://lnk0.com/toQNx9'


			
--bid.集享联盟 = {
--				['appbid']='com.maxxipoint.ios',
--				['url']='https://event.maxxipoint.com/event/h5DownloadApp.do?activityId=32'
--			}

screen.init(0)
var = {}
var.lun = 0
--全局变量


function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
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
apparr.闪电降价tip={{
	{383, 883, 0xffdb4c},
	{255, 883, 0xffdb4c},
	{446, 226, 0x4c4c4c},
}, 85}
apparr.tips_x={{
	{570, 200, 0x4c4c4c},
	{387, 885, 0xffdb4c},
	{197, 884, 0xffdb4c},
}, 85}

apparr.首页_我={{
	{567, 1118, 0x4c4c4c},
	{446, 1087, 0x4c4c4c},
	{316, 1058, 0x646464},
	{ 63, 1066, 0xffdb4c},
}, 85}

apparr['我_登录/注册']={{
	{272, 164, 0x333333},
	{269, 164, 0xffffff},
	{266, 164, 0x333333},
	{167, 165, 0x333333},
	{167, 168, 0xffffff},
}, 85}

apparr['注册界面']={{{444, 125, 0xffdb4c},{453,  83, 0x333333},{451,  74, 0xffffff},{ 23,  84, 0x4c4c4c},}, 85, 7, 43, 610, 150}--4
	apparr.getyzm={{{547, 299, 0x4d4d4d},{561, 290, 0x4c4c4c},}, 85, 486, 261, 617, 336}
	apparr.button={{{306, 677, 0x333333},{303, 667, 0xfed34d},{291, 660, 0x343333},}, 85, 247, 612, 391, 736}

apparr.注册成功={{
	{574, 1065, 0xffdb4c},
	{447, 1062, 0x4c4c4c},
	{502,  155, 0xebce90},
}, 85}

function newidfa(bids,times)
	for i= 1,times do
		if false or  XXTfakerNewPhone(bids)then
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(180,200)
			
			
			取号 = true
			验证码 = false
			密码 = false
			短信 = false
			提交 = false
			password = myRand(4,rd(7,10))
			success = false
			
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.首页_我,"apparr.首页_我",true,1)then
					elseif d(apparr['我_登录/注册'],"登录/注册",true)then
					elseif d(apparr['注册界面'],"注册界面",false)then
						if 取号 then
							click(219, 205)
							if GET_Phone()then
								input(phone)
								取号 = false
								验证码 = true
							end
						elseif 验证码 then
							if d(apparr.getyzm,'apparr.getyzm',true)then
								验证码 = false
								密码 = true
							end
						elseif 密码 then
							click(98, 411)
							input(password)
							密码 = false
							短信 = true
						elseif 短信 then
							if GET_message(phone)then
								click(262, 307)
								input(sms)
								短信=false
								提交=true
							else
								delay(3)
							end
						elseif 提交 then
							if d(apparr.button,'apparr.button',true)then
								up(appname(bids),'注册提交')
								success = true
							end
						else
							click(540, 84)
						end
					elseif success and d(apparr.注册成功,'apparr.注册成功')then
						up(appname(bids),bid['闪电降价']['url'][device.name()])
						delay(rd(30,50))
						
						return true
					else
						if d(apparr.tips_x,"apparr.tips_x",true,1)then
						elseif d(apparr.闪电降价tip,"闪电降价tip",true,1)then
						else
							log('---')
							click(40,100)
						end
					end
				end
				delay(1)
			end
			
		end
	end
end

kfy.id = '13860'
--[[]]
while true do
	if vpn() then
		if open(bid['闪电降价']['url'][device.name()])then
			newidfa(bid.闪电降价.appbid,1)
		end
		closeX(bid.闪电降价.appbid)
	end
	vpnx()
	delay(2*3)
--	delay(10*60)
end
--]]



















	
	