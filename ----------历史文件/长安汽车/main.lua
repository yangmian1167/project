nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')
kfy.id = '10718'
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

--atexit(function() 
--		sys.toast('脚本结束了！')
--		vpnx()
--		local appbids = app.front_bid()
--		if appbids ~= "com.apple.springboard" then
--			app.quit(appbids)
--			--closeX(appbids)
--		end
--		sys.msleep(500)
--	end)

bid={}
--require('bid')
bid.欧尚Style = 'com.changan.oushangCos1'


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
--	idfalist.ip = '192.168.1.1'
	idfalist.ip = get_ip() or '192.168.1.1'
--	idfalist.account = bid[work]['keyword']
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end
function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function checkip()
	ip = get_ip() or "192.168.1.1"
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

phonekeyArr = {
	{104,  760, 0xffffff},
	{317,  768, 0xffffff},
	{526,  755, 0xffffff},
	{112,  866, 0xffffff},
	{330,  869, 0x696969},
	{522,  874, 0xffffff},
	{115,  977, 0xffffff},
	{322,  978, 0x000000},
	{544,  962, 0x000000},
	[0]={316, 1081, 0xffffff},
}
function phoneKey(phone)
	for i =1,string.len(phone) do
		local phone_mun = tonumber(string.sub(phone,i,i))
		click(phonekeyArr[phone_mun][1],phonekeyArr[phone_mun][2],0.3)
	end
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end


apparr={}
apparr.首页={{
	{575, 1075, 0x333333},
	{577, 1118, 0xbbbbbb},
	{431, 1080, 0x333333},
	{328, 1064, 0x00518c},
	{ 49, 1085, 0x2ca5da},
}, 85, 25, 1050, 614, 1126}
apparr.我的界面={{
	{535,   97, 0x2ca5da},
	{268,   90, 0x000000},
	{ 58,   87, 0xa6a6a6},
	{577, 1092, 0x2ca5da},
	{582, 1116, 0x2ca5da},
}, 85, 0, 0, 0, 0}
apparr.注册界面={{
	{250, 69, 0x333333},
	{246, 81, 0xa6a6a6},
	{247, 98, 0x999999},
	{387, 98, 0x4f4f4f},
	{388, 69, 0x3d3d3d},
}, 85, 240, 61, 403, 114}
apparr.注册界面.手机号={{
	{120, 432, 0xc7c7cd},
	{149, 436, 0xc8c8ce},
	{178, 423, 0xc7c7cd},
	{208, 432, 0xffffff},
}, 85, 100, 416, 356, 453}
apparr.注册界面.验证码 = {{
	{258, 544, 0xc7c7cd},
	{239, 545, 0xc7c7cd},
	{175, 544, 0xdadade},
	{165, 548, 0xffffff},
}, 85, 118, 521, 292, 575}
apparr.注册界面.获取验证码={{
	{546, 544, 0xffffff},
	{461, 527, 0x2ca5da},
	{591, 559, 0x2ca5da},
}, 85, 439, 514, 602, 579}
apparr.注册界面.完成={{
	{570, 645, 0x000000},
	{618, 672, 0x000000},
	{589, 658, 0xf1f8f9},
}, 85, 522, 571, 632, 772}
apparr.注册界面.注册={{
	{373, 715, 0xffffff},
	{ 83, 678, 0x3fb5df},
	{557, 742, 0x3fb5df},
}, 85, 54, 663, 602, 765}
apparr.tips_返回箭头= {{
	{34, 82, 0x41464d},
	{48, 67, 0x41464d},
	{47, 84, 0xffffff},
}, 85, 21, 52, 70, 111}
apparr.tips_返回箭头1={{
	{40, 81, 0x41464d},
	{55, 66, 0x41464d},
	{54, 95, 0x41464d},
	{51, 80, 0xffffff},
}, 85, 37, 56, 69, 106}
apparr.tips_真好= {{
	{343, 829, 0x85adfb},
	{311, 828, 0x6b9bfa},
	{211, 808, 0x5985f9},
	{432, 844, 0x6e95f9},
}, 85, 188, 780, 457, 873}
apparr.tips_稍后认证= {{
	{337, 848, 0x9a9a9a},
	{322, 849, 0xffffff},
	{324, 760, 0xffffff},
	{235, 740, 0x4ba0d8},
	{411, 791, 0x62cfec},
}, 85, 195, 699, 442, 905}
apparr.个人中心_注册完成 ={{
	{578, 1091, 0x2ca5da},
	{582, 1113, 0x2ca5da},
	{432, 1074, 0xcfcfcf},
	{463, 1078, 0x333333},
}, 85, 420, 1045, 609, 1132}

function reg(bids)
	local 取号 = true
--	local 图形验证 = false
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
	if XXTfakerNewPhone(bids)then
		idfa = XXTfakerGetinfo(bids)['IDFA']
		local TIMEline = os.time()
		local OUTtime = rd(150,200)
		while os.time()- TIMEline < OUTtime do
			if active(bids,4)then
				if d(apparr.首页,'apparr.首页',true) then
				elseif d(apparr.我的界面,'apparr.我的界面',true) then
				elseif d(apparr.注册界面,'apparr.注册界面') then
					if 取号 then
						if GET_Phone() then	
							if d(apparr.注册界面.手机号,'apparr.注册界面.手机号',true) then
								input(phone)
								取号 = false
								验证码 = true
							end
						end
					elseif 验证码 then
						if d(apparr.注册界面.获取验证码,'apparr.注册界面.获取验证码',true) then
						elseif GET_message(phone) then
							if d(apparr.注册界面.验证码,'apparr.注册界面.验证码',true) then
								input(sms)
								验证码 = false
								提交 = true
							end
						end
						delay(3)
					elseif 提交 then
						if d(apparr.注册界面.完成,'apparr.注册界面.完成',true) then
						elseif d(apparr.注册界面.注册,'apparr.注册界面.注册',true) then
							注册完成 = true
						else
							提交 = false
						end
					end
				elseif d(apparr.tips_返回箭头,'apparr.tips_返回箭头',true) then
				elseif d(apparr.tips_返回箭头1,'apparr.tips_返回箭头1',true) then
				elseif d(apparr.tips_真好,'apparr.tips_真好',true) then
				elseif d(apparr.tips_稍后认证,'apparr.tips_稍后认证',true) then
				elseif 注册完成 then
					if d(apparr.个人中心_注册完成,'apparr.个人中心_注册完成') then
						up('长安汽车','初次上传')
--						back_pass(task_id,'ok')
						return true
					end	
				else
					moveTo(600,300,100,100,30,50)
					delay(1)
					click(321, 978)
					delay(1)
					click(462, 666)
					delay(1)
				end
			end
			delay(1)
		end
	
	end
end




--function ends()
	
--	for _,bid in ipairs(app.bundles()) do
--		app.quit(bid)
--	end
--	vpnx()
--	sys.msleep(2000)
	
--end
--]]
--[[
function main()
while true do
	log("vpn-key")
	if false or  vpn() then
		if true or checkip()then
	-----------------------------------
			local TaskDate = ( get_task() )
			if TaskDate then
				for i,v in ipairs(TaskDate) do
					work = v.work
					task_id = v.task_id
					bid={}
					bid[work]={}
					bid[work]['keyword']=v.keyword
					if string.len(v.appbid)>5 then	bid[work]['appbid']=v.appbid end
					if string.len(v.appid)>5 then	bid[work]['appid']=v.appid	end
					if bid[work] ~= nil then
						newidfa(bid[work]['appbid'])
					else
						log('没有设置app')
					end
				end
			end
	------------------------------------
		end
	end
	ends()
end
end


while (true) do
	local ret,errMessage = pcall(main)
	if ret then
	else
		sys.alert(errMessage, 15)
		delay(1)
	end
end

--]]

while true do
	vpnx()
	delay(3)
	if vpn() then
		delay(3)
		if reg(bid.欧尚Style) then
		end
	end
end









