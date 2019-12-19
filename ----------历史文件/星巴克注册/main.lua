-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('dmpt')
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


var = ''
appbid = 'com.starbuckschina.mystarbucksmoments'

starbucks = {}
starbucks.立即登录 = {{{533, 878, 0x00a862},{451, 841, 0x3d3935},{592, 908, 0x3d3935},{235, 886, 0x3d3935},{ 54, 849, 0x3d3935},}, 85, 27, 811, 611, 923}

starbucks.tips_跳过 = {{{568, 122, 0xffffff},{ 48,  67, 0x00a862},{572, 331, 0x00a862},{ 30, 874, 0xffffff},{540, 939, 0xffffff},}, 85, 13, 26, 614, 1087}
starbucks.tips_跳过1 = {{{554,  84, 0xffffff},{ 50, 469, 0xffffff},{ 46, 529, 0x067449},{528, 568, 0xffffff},{575, 527, 0x067449},}, 85, 35, 31, 605, 648}
starbucks.tips_夏日冰调 = {{{57,  97, 0x6e6e6e},{46,  86, 0x6e6e6e},{67, 108, 0x6e6e6e},{46, 109, 0x6e6e6e},}, 85, 28, 62, 89, 128}

starbucks.注册界面 = {{{ 35, 144, 0x838383},{ 35, 187, 0x959595},{484, 138, 0x929292},{550, 140, 0x999999},{544, 184, 0xb3b3b3},{535, 191, 0x4d4d4d},}, 85, 32, 130, 557, 208}
starbucks.注册界面_输入手机号 = {{{ 36, 320, 0xbababa},{ 41, 346, 0xdbdbdb},{155, 319, 0xaaaaaa},{154, 346, 0xc9c9c9},}, 85, 27, 310, 170, 355}
starbucks.注册界面_获取验证码 = {{{532, 463, 0x00af66},{473, 452, 0x00af66},{605, 465, 0x00af66},}, 85, 465, 444, 611, 483}



starbucks.个人信息界面 = {{{268, 70, 0x6a6a6a},{257, 79, 0x8d8d8d},{268, 95, 0xa1a1a1},{374, 71, 0xdbdbdb},{376, 94, 0xe0e0e0},}, 85, 252, 65, 384, 100}
starbucks.个人信息界面_姓名 = {{{62, 435, 0xf9f9f9},{37, 420, 0xd5d5d5},{33, 447, 0xececec},{87, 423, 0xd8d8d8},{88, 448, 0xdcdcdc},}, 85, 29, 416, 101, 451}
starbucks.个人信息界面_性别 = {{{61, 560, 0xf9f9f9},{37, 549, 0xb8b8b8},{33, 562, 0xb2b2b2},{37, 576, 0xcfcfcf},{89, 548, 0xe5e5e5},{82, 576, 0xdadada},}, 85, 30, 541, 98, 580}
starbucks.个人信息界面_年龄 = {{{72, 945, 0x969696},{43, 928, 0xd2d2d2},{37, 949, 0xdedede},{52, 956, 0xbebebe},{87, 928, 0xe5e5e5},{89, 955, 0xd3d3d3},}, 85, 34, 916, 101, 968}
starbucks.个人信息界面_确定 = {{{577, 661, 0x00af66},{605, 662, 0x00af66},{471, 666, 0x00af66},{471, 653, 0xf8f8f8},}, 85, 443, 633, 629, 682}
starbucks.个人信息界面_男vs女 = {{{329, 989, 0xa8e3ca},{328, 917, 0x33bf84},}, 85, 299, 887, 371, 1002}
starbucks.个人信息界面_下一步 = {{{506, 1045, 0xffffff},{442, 1011, 0x00af66},{558, 1076, 0x00af66},}, 85, 406, 991, 591, 1104}

starbucks.创建账户界面 = {{{263, 70, 0xc8c8c8},{257, 79, 0x7c7c7c},{260, 94, 0x616161},{363, 70, 0xb7b7b7},{376, 83, 0xcfcfcf},}, 85, 254, 61, 386, 102}
starbucks.创建账户界面_密码 = {{{46, 338, 0x9e9e9e},{34, 346, 0xd3d3d3},{37, 367, 0xe5e5e5},{91, 339, 0xaaaaaa},{90, 366, 0xc9c9c9},}, 85, 29, 332, 103, 374}	
starbucks.创建账户界面_我已阅读 = {{{ 57,  804, 0xf9f9f9},{ 91,  800, 0x00af66},{230,  860, 0x00af66},{431, 1011, 0xd4d4d4},{548, 1067, 0xd4d4d4},}, 85, 36, 757, 600, 1094}
starbucks.创建账户界面_创建账户 = {{{489, 1042, 0xffffff},{421, 1042, 0xffffff},{427, 1001, 0x00af66},{563, 1081, 0x00af66},}, 85, 404, 990, 574, 1101}


function tips()
	if d(starbucks.tips_跳过,'starbucks.tips_跳过',true) then
	elseif d(starbucks.tips_跳过1,'starbucks.tips_跳过1',true) then
	elseif d(starbucks.tips_夏日冰调,'starbucks.tips_夏日冰调',true) then
	
	end
end

function reg()
	local 取号 = false
	local 验证码 = false
	local 提交 = true
	local 注册完成 = false
	while true do
		if active(appbid,5) then
			if d(starbucks.立即登录,'starbucks.立即登录',true) then
			elseif d(starbucks.注册界面,'starbucks.注册界面',true) then
				if 取号 then
					if GET_Phone() then
						if d(starbucks.注册界面_输入手机号,'starbucks.注册界面_输入手机号',true) then
							input(phone)
							取号 = false
							验证码 = true
						end
					end
				elseif 验证码 then
					if d(starbucks.注册界面_获取验证码,'starbucks.注册界面_获取验证码',true) then
					elseif GET_message(phone) then
						click(72,463)
						input(sms)
						验证码 = false
						提交 = true
					end	
				
				end
			elseif 提交 then
				if d(starbucks.个人信息界面,'starbucks.个人信息界面') then
					if d(starbucks.个人信息界面_姓名,'starbucks.个人信息界面_姓名',true) then
						name = random_name()
						input(name)
					elseif d(starbucks.个人信息界面_性别,'starbucks.个人信息界面_性别',true) then
					elseif d(starbucks.个人信息界面_年龄,'starbucks.个人信息界面_年龄',true) then
					elseif d(starbucks.个人信息界面_确定,'starbucks.个人信息界面_确定') then
						if d(starbucks.个人信息界面_男vs女,'starbucks.个人信息界面_男vs女') then
							d(starbucks.个人信息界面_确定,'starbucks.个人信息界面_确定',true)
						else
							for i = 3,10 do
								click(156,853)
							end							
							for i = 1,10 do
								click(303, 857)
							end
							for i = 1,10 do
								click(475, 854)
							end
							d(starbucks.个人信息界面_确定,'starbucks.个人信息界面_确定',true)
						end
					elseif d(starbucks.个人信息界面_下一步,'starbucks.个人信息界面_下一步',true) then	
					end
			
				elseif d(starbucks.创建账户界面,'starbucks.创建账户界面') then
					if d(starbucks.创建账户界面_密码,'starbucks.创建账户界面_密码',true) then	
					
						password = 'Aa123456'
						input(password)
					elseif d(starbucks.创建账户界面_我已阅读,'starbucks.创建账户界面_我已阅读',true) then	
					elseif d(starbucks.创建账户界面_创建账户,'starbucks.创建账户界面_创建账户',true) then	
						提交 = false
					else
						click(61, 477)
					end
				else
					tips() 
				end
			else
				tips()
			end
		end
		delay(1)
	end
end


if XXTfakerNewPhone(appbid) then
 reg()
end

--tips()


























































































