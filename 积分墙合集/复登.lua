nLog = require('nLog')()
require('xxtsp')



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






-- 此处为nLog功能实现操作

function xxtinstall()
	local XXTFaker = (
	function(url, hash)
		os.remove("/var/mobile/Media/1ferver/lua/scripts/XXTFaker.xxt")
		local faker_path = "/var/mobile/Media/1ferver/lua/XXTFaker.xxt"
		local verify = 
		function(path, hash)
			local data = file.reads(path)
			if data and data:md5():lower() == hash:lower() then
				return true
			else
				os.remove(path)
				return false
			end
		end
		local download_and_verify = 
		function(url, path, hash)
			local done = false
			thread.dispatch(
				function()
					local count = 0
					while not done do
						sys.toast('正在下载伪装模块（XXTFaker）.'..string.rep('.', count%6))
						count = count + 1
						sys.msleep(30)
					end
				end
				)
			local c, h, r = http.get(url, 30)
			done = true
			sys.msleep(50)
			sys.toast('', -1)
			if c == 200 then
				file.writes(path, r)
				if verify(path, hash) then
					return true
				end
			end
			return false
		end
		local faker = nil
		if verify(faker_path, hash) then
			faker = require("XXTFaker")()
		else
			if download_and_verify(url, faker_path, hash) then
				faker = require("XXTFaker")()
				faker.uninstall()
			else
				sys.alert("伪装模块（XXTFaker）下载失败\n\n请检查网络后重新尝试")
				os.exit()
			end
		end
		return faker
	end)
	(
		"http://wenfree.cn/static/XXTFaker.xxt",
		"7EDDED1E3FEA5C91948F853E5C910DD7"
	)
	
	function XXTFakerisok()
		local 时间线 = os.time()
		local 超时 = 60
		
		while os.time()-时间线<60 do
			if not XXTFaker.exists() then
				XXTFaker.install()
			else
				sys.toast("XXTFaker is ok")
				nLog("XXTFaker is ok")
				return true
			end
		end
	end
	
	return XXTFakerisok()
end

--[[获取当前伪装的bid表]]
function XXTfakerGetbid()
	return XXTFaker.get_appbid()
end
--[[清空伪装]]
function XXTfakerClear(t)
    return XXTFaker.clear_config(
		t
    )
end
--[[获取当前伪装数据]]
function XXTfakerGetinfo(bid)
	return XXTFaker.get_config(bid)
end
--[[一键新机]]
function XXTfakerBackPhone(bid,info)
	app.close(bid)
	sys.msleep(200)
	clear.all_keychain()
	clear.pasteboard()
	clear.app_data(bid)
	clear.idfav()
	XXTFaker.filter_app({bid})
	log('一键还原',true)
	
	return XXTFaker.set_config(
				{bid},
				info
			)

end
--------xxt的函数
--log('--faker--')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end





screen.init(0)
var = {}
var.lun = 0
--全局变量


function getdevice()
	local url = 'http://wenfree.cn/api/Public/idfa/'
	local devicelist ={}
	devicelist.service = 'Idfa.GetNday'
	devicelist.name = work
	devicelist.rate = '100'
	devicelist.day = day
	local getdata = post(url,devicelist)
	if getdata then
		getdata = json.decode(getdata)
		log(getdata)
		return getdata
	end
end	

function backid(id)
	local url = 'http://wenfree.cn/api/Public/idfa/'
	local idlist ={}
	idlist.service = 'Idfa.Todocallback'
	idlist.id = id
	return post(url,idlist)
end	


function up(name,other)
	local url = 'http://wenfree.cn/api/Public/idfa/?service=idfa.idfa'
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

function back(bids,times)
	if false or vpn()then
		delay(3)
		if XXTfakerBackPhone(bids,devices)then
--			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(25,28)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.right,"apparr.right",true)then
					else
						moveTo(600,300,100,100,30,50)
						delay(1)
--							click(321, 978)
--							delay(1)
--							click(462, 666)
--							delay(1)
					end
				end
			end

		end
	end
	vpnx()
	delay(3)
	log("关闭VPN-------->>>>>>>")
	return true
end
tips = {}
tips_我知道了 = {{{208, 999, 0x987de6},{457, 989, 0x987de6},{120, 455, 0xa0c3fd},{125, 288, 0x918ef0},}, 85, 31, 100, 575, 1065}
登录界面 = {{{ 86, 154, 0xc9c9c9},{ 86, 155, 0x323232},{ 89, 186, 0xbfbfbf},{273, 154, 0xc4c4c4},{280, 167, 0x9d9d9d},{263, 188, 0x909090},}, 85, 73, 129, 293, 200}
登录界面_请输入手机号 = {{{ 90, 335, 0xe2e2e5},{ 88, 311, 0xf1f1f2},{153, 310, 0xefeff1},{255, 311, 0xececee},{252, 336, 0xe5e5e8},}, 85, 79, 301, 268, 343}
登录界面_获取验证码 = {{{498, 451, 0x535353},{448, 444, 0xcfcfcf},{450, 461, 0xc0c0c0},{556, 443, 0xdedede},{556, 462, 0xc2c2c2},}, 85, 442, 437, 566, 469}
登录界面_键盘完成 = {{{572, 655, 0x007aff},{574, 666, 0x007aff},{609, 656, 0x007aff},}, 85, 548, 635, 628, 681}
登录界面_同意条款 = {{{113, 764, 0xffffff},{106, 766, 0xfefefe},{121, 759, 0x9d9d9d},{106, 773, 0x9e9e9e},}, 85, 100, 748, 129, 781}
登录界面_登录按钮 = {{{298, 670, 0xffffff},{157, 662, 0x987de6},{534, 708, 0x987de6},{346, 682, 0xffffff},{494, 669, 0x987de6},}, 85, 71, 633, 552, 728}
登录界面_密码登录 = {{{448, 162, 0x9b9b9b},{448, 169, 0x9b9b9b},{445, 179, 0x9b9b9b},{232, 175, 0x000000},{213, 173, 0x000000},}, 85, 189, 129, 471, 208}
开启健康之旅 = {{{415, 720, 0xfffecf},{474, 740, 0xf2dc92},{546, 733, 0xeed280},{588, 735, 0xe8c366},}, 85, 391, 710, 599, 753}
tips户外 ={{{460, 554, 0xeec346},{254, 565, 0x6fa47b},{290, 515, 0xf1eddc},{335, 768, 0xf1a9ae},{480, 689, 0x705457},}, 85, 118, 407, 510, 812}
function back_妙健康(bids,times)
	local 提交 = false
	if false or vpn()then
		delay(3)
		if XXTfakerBackPhone(bids,devices)then
			local TIMEline = os.time()
			local OUTtime = rd(40,45)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(tips_我知道了,'tips_我知道了',true) then
					elseif 提交 then
							if d(登录界面_键盘完成,'登录界面_键盘完成',true) then
							elseif d(登录界面_同意条款,'登录界面_同意条款',true) then
							elseif d(登录界面_登录按钮,'登录界面_登录按钮',true) then
							end
					elseif d(登录界面,'登录界面') then
						if d(登录界面_密码登录,'登录界面_密码登录',true) then
							click(101, 323)
							input(phones)
							delay(1)
							click(98, 465)
							input(passwords)
							提交 = true
						end
					end	
				end	
				delay(1)
			end
		end
	end
	vpnx()
	delay(3)
	log("关闭VPN-------->>>>>>>")
	return true
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

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function main(v)
	day = v.adid
	work = v.work
	appbid = v.appbid
	task_id = v.task_id
	
	data = getdevice()
	log(data)
	if data.data ~= "暂无帐号" then
		devices = json.decode(data.data.device)
		phones = data.data.phone
		passwords = data.data.password
	else
		dialog("核对日期",10)
		return 
	end
	ids = data.data.id
	log(v)
	if devices ~= nil then
		if back_妙健康(appbid) then
			backid(ids)
			back_pass(task_id,"ok")
		end	
	end
	
end











