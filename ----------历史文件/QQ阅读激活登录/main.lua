nLog = require('nLog')()
require('faker')
require('xxtsp')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

function atexit(callback) -- 参数为一个函数，使用 atexit(一个函数) 注册一个函数在脚本结束时执行，建议不要耗时太长
	____atexit_guard____ = ____atexit_guard____ or {}
	if type(____atexit_guard____) == 'table' then
		if not getmetatable(____atexit_guard____) then
			setmetatable(____atexit_guard____, {
					__gc = function(self)
						if type(self.callback) == 'function' then
							pcall(self.callback)
						end
					end
				})
		end
		____atexit_guard____.callback = callback
	else
		error('别用 `____atexit_guard____` 命名你的变量。')
	end
end
--[[
atexit(function() 
		sys.toast('脚本结束了！')
		vpnx()
		local appbids = app.front_bid()
		if appbids ~= "com.apple.springboard" then
			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)
]]
bid={}
bid.QQ阅读 = "com.tencent.qqreaderiphone"



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


apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}

web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

--融360
--urls = "http://m.rong360.com/app/osdown/?ios=https://itunes.apple.com/cn/app/id1026689855?mt=8&android=https://campaign.rong360.com/applanding/rongapp/landing_22.html?&weixin=&from=zckj_xgxyk_ceshi01"
--全日空海淘
urls = "https://at.umeng.com/C09j0j"
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

function get_task()
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.gettask'
	local postArr = {}
	postArr.phonename = phonename or device.name()
	postArr.imei = phoneimei or sys.mgcopyanswer("SerialNumber")
	local taskData = post(url,postArr)
	
	if taskData ~= nil then
		taskData = json.decode(taskData)
		log(taskData)
		
		if taskData.data == "新增手机" or taskData.data == "暂无任务" then
			log(taskData.data,true)
			delay(30)
			return false
		else
			return taskData.data
		end
	end
end

function ends()
	
	for _,bid in ipairs(app.bundles()) do
		app.quit(bid)
	end
	vpnx()
	sys.msleep(2000)
	
end

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end
QQ阅读登录 = {}
QQ阅读登录.登录QQ={{{510, 946, 0xe0f0ff},{370, 913, 0x3399ff},{557, 968, 0x3399ff},{256, 941, 0x57d982},{ 61, 921, 0x57d982},}, 85, 36, 881, 588, 1002}
QQ阅读登录.QQ网页登录界面 = {{{368, 162, 0x000000},{ 92, 158, 0xf69a9f},{ 92, 138, 0xfaae08},{ 91, 113, 0x000000},{ 79, 163, 0xea1b27},}, 85, 54, 90, 556, 208}
QQ阅读登录.QQ号码 = {{{ 76, 297, 0xaeaeae},{ 59, 336, 0xa9a9a9},{357, 336, 0xa9a9a9},{360, 300, 0xcbcbcb},{328, 297, 0xadadad},}, 85, 48, 277, 578, 361}
QQ阅读登录.QQ密码 = {{{ 74, 409, 0xcdcdcd},{ 59, 413, 0xa9a9a9},{ 62, 448, 0xa9a9a9},{137, 446, 0xaaaaaa},{136, 411, 0xa9a9a9},}, 85, 46, 402, 161, 461}
QQ阅读登录.登录 = {{{320, 557, 0x12b7f6},{ 80, 530, 0x12b7f6},{563, 584, 0x12b7f6},}, 85, 19, 371, 637, 728}
QQ阅读登录.完成 = {{{611, 663, 0x007aff},{567, 651, 0x007aff},{580, 663, 0x007aff},}, 85, 536, 614, 631, 714}
QQ阅读登录.主页面={{{ 42, 1066, 0x97a4b3},{183, 1079, 0x2aacff},{301, 1067, 0x97a4b3},{464, 1078, 0x97a4b3},}, 85, 26, 1047, 600, 1098}
QQ阅读登录.滑动验证界面 = {{{385, 109, 0x727272},{267, 108, 0x4b4b4b},{ 40, 111, 0x1c85ff},{ 40, 137, 0x1c85ff},{108, 121, 0x459eff},}, 85, 11, 95, 476, 150}
QQ阅读登录.选择感兴趣的内容 = {{{ 35, 126, 0xdadbdc},{ 30, 174, 0xe8e9eb},{363, 176, 0x53575a},{510, 126, 0x626568},{526, 177, 0xc0c2c4},}, 85, 15, 109, 552, 192}
QQ阅读登录.新用户福利tips = {{{319, 934, 0xd8d8d8},{320, 905, 0xd8d8d8},{285, 853, 0x459fff},{217, 779, 0xffcd10},{243, 736, 0x459afe},}, 85, 191, 708, 424, 988}
QQ阅读登录.账号冻结 = {{{ 48, 117, 0x808080},{589, 239, 0x808080},{ 50, 242, 0x808080},{230, 206, 0xffffff},{495, 155, 0xffffff},}, 85, 32, 100, 613, 259}
function login(bids,times)
	登录key = false
	local TIMEline = os.time()
	local OUTtime = rd(90,130)
	while os.time()- TIMEline < OUTtime do
		if active(bids,4)then
			if d(QQ阅读登录.登录QQ,"QQ阅读登录.登录QQ",true) then
			elseif d(QQ阅读登录.QQ网页登录界面,"QQ阅读登录.QQ网页登录界面") or d(QQ阅读登录.登录,"QQ阅读登录.登录") then
				if d(QQ阅读登录.账号冻结,"QQ阅读登录.账号冻结") then
					sys.toast('账号冻结')
					up(appname(bids),'账号冻结')
				elseif d(QQ阅读登录.QQ号码,"QQ阅读登录.QQ号码",true) then
					input('3539751719')
				elseif d(QQ阅读登录.QQ密码,"QQ阅读登录.QQ密码",true) then
					input('bwvd0651')
				elseif d(QQ阅读登录.完成,"QQ阅读登录.完成",true)then
				elseif d(QQ阅读登录.登录,"QQ阅读登录.登录",true) then
					delay(5)
					登录key = true
				end
			elseif d(QQ阅读登录.滑动验证界面,"QQ阅读登录.滑动验证界面") then
				moveTo(120, 395,489, 391)
			elseif d(QQ阅读登录.选择感兴趣的内容,"QQ阅读登录.选择感兴趣的内容") then
						内容key = {
						{539, 340, 0xffffff},
						{575, 562, 0xffffff},
						{582, 789, 0xffffff},
						}
					click(内容key[math.random(1,3)][1],内容key[math.random(1,3)][2])
			elseif 登录key and d(QQ阅读登录.主页面,"QQ阅读登录.主页面") then
				return true
			else
				if d(QQ阅读登录.新用户福利tips,"QQ阅读登录.新用户福利tips",true) then
			    end
			end
		end	
		delay(2)
	end
	return newidfa(bids,times)
end

function newidfa(bids,times)
	for i= 1,times do
		if true or vpn()then
			if XXTfakerNewPhone(bids)then
				idfa = XXTfakerGetinfo(bids)['IDFA']
				login(bids,times)
				local TIMEline = os.time()
				local OUTtime = rd(45,50)
				while os.time()- TIMEline < OUTtime do
					if active(bids,4)then
						if d(apparr.right,"apparr.right",true)then
						else
							moveTo(389,714,430,301,30,50)
							delay(1)
									click(576, 622)
									delay(1)
									click(576, 811)
									delay(1)
						end
					end
				end
				up(appname(bids),'阅读完成')
				back_pass(task_id,"ok")
			end
		end
		vpnx()
		delay(3)
		log("关闭VPN-------->>>>>>>")
	end
end


--[[
while true do
	log("vpn-key")

	-----------------------------------
			local TaskDate = ( get_task() )
			if TaskDate then
				for i,v in ipairs(TaskDate) do
					work = v.work
					task_id = v.task_id
					if bid[work] ~= nil then
						newidfa(work,1)
					end
				end
			end
	------------------------------------
	ends()
end


	--]]


--login(bid.QQ阅读)
--newidfa(bid.QQ阅读,5)


moveTo(120, 619,489, 622)




