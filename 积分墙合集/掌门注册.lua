-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
--require('dmpt')
require('faker')
require('name')



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

--------------------------来信--------------------------------------
api = "http://api.smskkk.com/api/do.php"--易码开发接口地址，请从易码官网查询当前可用的接口地址
--laixin_user = '511358939'  --登录易码的账号，如果填写了Token项，此处可以为空
--laixin_pwd = '199412199412'  --登录易码的密码，如果填写了Token项，此处可以为空
--token = '6klqv7mnkm50knvwmqkbwbkq6l6anw0p' --Token值，可以调用登录接口获取，也可以登录易码网站从个人中心首页复制

laixin_user = 'yangmian1'  --登录易码的账号，如果填写了Token项，此处可以为空
laixin_pwd = 'yangmian121'  --登录易码的密码，如果填写了Token项，此处可以为空
token = 'pbo5lbbvmwmwnoo5kp5kwwl5lkmnccnb' --Token值，可以调用登录接口获取，也可以登录易码网站从个人中心首页复制

--laixin_user = 'a15240678777'  --登录易码的账号，如果填写了Token项，此处可以为空
--laixin_pwd = 'Tyx168777'  --登录易码的密码，如果填写了Token项，此处可以为空
--token = 'opckoq5wcpmcqv7aw0nnva5w6a7a56m7' --Token值，可以调用登录接口获取，也可以登录易码网站从个人中心首页复制
itemid = "1624"--项目编号，必须
province = "0"--指定号码归属地的省份代码，不需要请留空或者设置为0
city = "0"--指定号码归属地的城市代码，不需要请留空或者设置为0
isp = "0"--指定运营商，不需要请留空或者设置为0
excludeno = "171_172_174_178"--要排除的号段，如：171|172|174|178，不需要排除号码留空即可
release = "1" --该值为1时，收到短信的同时自动释放号码

function laixin_login()
	if not laixin_user or laixin_user == '' then
		dialog('易码账号密码为空',30)
		lua_exit()
	end

	while (true) do
		local wy = get(api..'?action=loginIn&name='..laixin_user..'&password='..laixin_pwd) or ""
		if wy ~=nil and wy ~= "" then
			token =  string.split(wy,'|')[2]
			return token
		else
			dialog('无法获取登陆状态',1)
			sys.msleep(1000)
		end 
		sys.msleep(3000)
	end
end

--[[]]
function laixin_phone()  --获取手机号
	if token == '' then
		token = laixin_login()
	end
	while true do
		local wy = get(api..'?action=getPhone&sid='..itemid..'&token='..token..'&vno=0') 
		if wy ~= nil and wy ~= '' then
			log(wy)
			phone =  string.split(wy,'|')[2]
			if #phone == 11 then
				return phone
			else
				log('无法获取手机号')
			end
		end
		sys.msleep(3000)
	end
end



function laixin_yzm()   --获取验证码
	local time1=os.time()
	while true do
		local time2=os.time()
		local wy = get(api..'?action=getMessage&phone='..phone..'&sid='..itemid..'&token='..token) or ""
		if wy ~= nil and wy ~= "" then
			if string.match(wy,"%d%d%d%d") then
				--%d%d%d%d%d%d 是6位验证码,根据自己的需求酌情调整验证码位数
				sys.toast(string.match(wy,"%d%d%d%d%d%d"))
				return string.match(wy,"%d%d%d%d%d%d")
--				if #yzm == 4 or #yzm == 6 then
--					return yzm
--				end	
			else
--				log('验证码为空值,再次获取')
				log(wy)
			end
		end
		sys.msleep(3000)
		if time2 - time1 > 60 then toast('获取验证码超时') return false end
	end
end

function laixin_black(phone) --号码加黑,phone是要加黑的手机号码
	local wy = get(api..'?action=addBlacklist&phone='..phone..'&sid='..itemid..'&token='..token)
	if wy and wy == 'success' then
		sys.toast('拉黑成功')
	end
end




function up(name,other)
	local url = 'http://hb.wenfree.cn/api/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function checkphone()
	local url = 'http://wenfree.cn/api/Public/idfa/?service=Ip.Checkphone&name=掌门1对1&phone='..phone
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("手机号可以用:OK.",true)
			return true
		else
			log("手机重复, 排重失败",true)
			return false
		end
	end
end


var = ''
appbid = 'com.zmlearn.ZMParent'
--appbid = 'com.zmlearn.ZMClient'
url = 'https://apps.apple.com/cn/app/id1288910541'

掌门 = {}
掌门.tips_跳过 = {{{544, 56, 0x666666},{529, 52, 0xffffff},{526, 51, 0xa9a9a9},{598, 55, 0x9d9d9d},}, 85, 513, 38, 610, 78}
掌门.tips_滑动验证码界面 = {{{ 94, 772, 0xcccccc},{ 92, 799, 0xe6e6e6},{106, 789, 0xb0b0b0},{180, 771, 0xbcbcbc},{170, 781, 0xd4d4d4},{178, 792, 0xfafafa},}, 85, 85, 758, 194, 813}
掌门.输入手机号界面 = {{{324, 665, 0xfffdfd},{249, 665, 0xffffff},{132, 631, 0xffabaa},{156, 682, 0xffabaa},{505, 638, 0xffabaa},}, 85, 80, 243, 536, 726}
掌门.获取验证码 = {{{358, 353, 0xffffff},{172, 321, 0xff5655},{198, 378, 0xff5655},{516, 330, 0xff5655},{513, 371, 0xff5655},}, 85, 25, 104, 608, 848}
掌门.输入手机验证码界面 = {{{ 67, 267, 0x5f5f5f},{ 66, 267, 0xffffff},{ 63, 273, 0x333333},{ 70, 306, 0x333333},{355, 277, 0xffffff},{337, 293, 0x656565},}, 85, 48, 245, 380, 337}
掌门.完成注册 = {{{344, 884, 0xfeeeef},{267, 881, 0xffffff},{157, 851, 0xef4c4f},{172, 917, 0xef4c4f},{472, 863, 0xef4c4f},}, 85, 131, 798, 510, 966}
掌门.完成注册1 = {{{444, 889, 0x5f1e1f},{250, 875, 0x5f1e1f},{414, 857, 0x5f1e1f},{428, 832, 0x666666},}, 85, 163, 821, 495, 940}
掌门.完成注册2 = {{{440, 905, 0x5f1e1f},{429, 864, 0x5f1e1f},{223, 862, 0x5f1e1f},{213, 892, 0x5f1e1f},{403, 824, 0x666666},}, 85, 149, 795, 530, 974}
function tips()
	if d(掌门.tips_跳过,'掌门.tips_跳过',true) then
	elseif d(掌门.tips_滑动验证码界面,'掌门.tips_滑动验证码界面') then
		if 滑动key > 4 then
				滑动key = 1
		elseif 滑动key == 1 then
			moveTo(129, 679,256, 678)
			滑动key = 滑动key + 1
		elseif 滑动key == 2 then
			moveTo(129, 679,308, 680)
			滑动key = 滑动key + 1
		elseif 	滑动key == 3 then
			moveTo(129, 679,332, 678)	
			滑动key = 滑动key + 1
		elseif 	滑动key == 4 then
			moveTo(129, 679,388, 680)	
			滑动key = 滑动key + 1
		
		end
	end
	delay(1)
end

function reg()
	local 取号 = true
	local 验证码 = false
	local 提交 = false
	local 注册完成 = false
	local outtime = os.time()
	local timeline = math.random(100,180)
		滑动key = 1	
	while os.time()- outtime < timeline do
		if active(appbid,5) then
			if d(掌门.完成注册,'掌门.完成注册',true) or d(掌门.完成注册1,'掌门.完成注册1',true) or d(掌门.完成注册2,'掌门.完成注册2',true) then
				pasword = yzm
				delay(2)
				up('掌门1对1','注册完成')
				return true
			elseif d(掌门.输入手机号界面,'掌门.输入手机号界面') then
				if 取号 then
--					if YiMa_phone() then
--						phone = YiMa_phone()
						phone = laixin_phone()
						log(phone)
						if phone ~= nil or phone ~= '' then
							if checkphone() then
								click(119, 487)
								input(phone)
								取号 = false
							else 
								return false
							end
						end
					--end
				end
			elseif d(掌门.获取验证码,'掌门.获取验证码',true) then
		elseif d(掌门.输入手机验证码界面,'掌门.输入手机验证码界面') then
				验证码 = true
				if 验证码 then
--					if YiMa_yzm() then
--						yzm = YiMa_yzm()
						yzm = laixin_yzm() 
						log(yzm)
						if yzm ~= nil  or yzm ~= '' then
							input(yzm)
							提交 = true
							验证码 = false
							up('掌门1对1','正在注册')
						end	
--					end
				end	
		else
			tips()
			end
		end
		delay(1)
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

function back_pass(task_id,success)
	local url = 'http://wenfree.cn/api/Public/tjj/?service=Tjj.backpass'
	local postArr = {}
	postArr.task_id = task_id
	postArr.success = success
	log( post(url,postArr) )
end

function main(v)
	task_id = v.task_id
	vpnx()
	delay(3)
	if vpn() then
		if XXTfakerNewPhone(appbid) then
			delay(3)
			openUrl(url)
			delay(15)
			if reg() then
				back_pass(task_id,"ok")
			end	
		end
	end
end















































