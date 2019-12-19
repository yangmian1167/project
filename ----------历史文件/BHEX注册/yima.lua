--易码短信服务平台开放接口范例代码
--语言版本：触动精灵Android版
--官方网址：www.51ym.me
--技术支持：QQ2114927217
--发布时间：2017-12-10


api = "http://api.fxhyd.cn/UserInterface.aspx"--易码开发接口地址，请从易码官网查询当前可用的接口地址
YiMa_user = 'yangmian'  --登录易码的账号，如果填写了Token项，此处可以为空
YiMa_pwd = 'yangmian121'  --登录易码的密码，如果填写了Token项，此处可以为空
token = '013980649511be0e63402ba00e4e0f3334071a6b6f01' --Token值，可以调用登录接口获取，也可以登录易码网站从个人中心首页复制

itemid = "32409"--项目编号，必须
province = "0"--指定号码归属地的省份代码，不需要请留空或者设置为0
city = "0"--指定号码归属地的城市代码，不需要请留空或者设置为0
isp = "0"--指定运营商，不需要请留空或者设置为0
excludeno = "171_172_174_178"--要排除的号段，如：171|172|174|178，不需要排除号码留空即可
release = "1" --该值为1时，收到短信的同时自动释放号码

--易码登陆函数,返回值请用token接收,token = YiMa_login()
function YiMa_login()
	if not YiMa_user or YiMa_user == '' then
		dialog('易码账号密码为空',30)
		lua_exit()
	end

	while (true) do
		local wy = get(api..'?action=login&username='..YiMa_user..'&password='..YiMa_pwd) or ""
		if wy and wy ~= "" then
			return string.split(wy,'|')[2]
		elseif wy == '1005' then
			dialog('用户名或密码错误',1)
		elseif wy == '1006' then
			dialog('用户名不能为空',1)
		elseif wy == '1007' then
			dialog('密码不能为空',1)
		elseif wy == '1009' then
			dialog('账户被禁用',1)
		else
			dialog('无法获取易码登陆状态',1)
			sys.msleep(1000)
		end 
		sys.msleep(3000)
	end
end

--[[]]
function YiMa_phone()  --获取手机号

	if token == '' then
		token = YiMa_login()
	end

	while (true) do
		local wy = get(api..'?action=getmobile&itemid='..itemid..'&token='..token..'&excludeno='..excludeno) or ""
		if wy and string.sub(wy,1,1) == 's' and #string.split(wy,'|')[2] == 11 then
			return string.split(wy,'|')[2]
		elseif wy == '1008' then
			dialog('账号余额不足',1)
		elseif wy == '2004' then
			dialog('暂时没有可用的号码',1)
		elseif wy == '2005' then
			dialog('获取号码数量已达到上限',1)
		else
			dialog(wy, 1)
		end
		sys.msleep(3000)
	end
end



function YiMa_yzm()   --获取验证码
	local time1=os.time()
	while (true) do
		local time2=os.time()
		local wy = get(api..'?action=getsms&mobile='..phone..'&itemid='..itemid..'&token='..token..'&release='..release) or ""
		if wy and wy ~= "" then
			if wy == '3001' then
				sys.toast('正在获取验证码,将在'.. 60 - (time2 - time1)..'秒后超时')
				log('正在获取验证码,将在'.. 60 - (time2 - time1)..'秒后超时')
			elseif string.match(wy,"%d%d%d%d%d%d") then
				--%d%d%d%d%d%d 是6位验证码,根据自己的需求酌情调整验证码位数
				sys.toast(string.match(wy,"%d%d%d%d%d%d"))
				return string.match(wy,"%d%d%d%d%d%d")
			else
				sys.toast(wy)
			end
		else
			dialog('验证码为空值,再次获取',3)
			sys.msleep(3000)
		end
		sys.msleep(3000)
		if time2 - time1 > 60 then toast('获取验证码超时') return false end
	end
end

function YiMa_black(phone) --号码加黑,phone是要加黑的手机号码
	local wy = get(api..'?action=addignore&mobile='..phone..'&itemid='..itemid..'&token='..token)
	if wy and wy == 'success' then
		sys.toast('易码拉黑成功')
	end
end
--[[
--以下是具体调用代码
phone = YiMa_phone() --获取手机号
while (true) do
	if phone then
		sys.toast('您获取的手机号是'..phone,1)
		input(phone) --输入手机号
		break
	else
		sys.toast('暂时未连接到易码服务器,三秒后再次尝试',3)
		sys.msleep(3000)
	end
end


--获取验证码
local yzm = YiMa_yzm()
if yzm then
	input(yzm) --输入验证码
else
	sys.toast('获取验证码超时',1)
	YiMa_black() -- 易码拉黑,不会再获取到这个手机号
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
	--这里是获取验证码超时后要做的事情
end

--关于验证码超时  可以这样调用
-- local yzm = YiMa_yzm()
-- if yzm then 
-- inputText(yzm) 
-- mSleep(500)   
-- else 否则 
--获取验证码超时() -- 调用这个代码做一些事情,比如重新一个手机,从头来,等等!



--]]--




