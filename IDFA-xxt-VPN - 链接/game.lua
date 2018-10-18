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

atexit(function() 
    sys.toast('脚本结束了！')
	vpnx()
	local appbids = app.front_bid()
	if appbids ~= "com.apple.springboard" then
		closeX(appbids)
	end
    sys.msleep(500)
end)






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
--	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.ip = '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function rd(n,k)
	return math.random(n,k)
end



bid={}
bid.冰川冒险记 = "yf.bcmxj.sh"
bid.破天无双 = "com.ptws.yjyh"
bid.纺织大学堂 = "beiyongaguo17"
bid.大航海霸业 = "com.dahanghai.bazhe"
bid.掌上網投助手 = "com.Code.Generator"
bid.诺亚彩票 = "com.Lottery.TC.NY1"
bid.金鲨娱乐 = "com.buyugame.jsyl2"
bid.名门娱乐 = "com.zhh.wyz"
bid.兼职帮 = "pronetway.renrenjianzhi.com"
bid.BJ百家樂21点 = "com.21pro.nide"
bid.单机斗地主 = "com.mofeng.qjmddz"
bid.点休闲扑克21 = "com.bjpk47.cmnt2018"
bid.发烧钓鱼 = "com.jiong.FaShaoDiaoYu"
bid.公积金管家51 = "com.yrt.gjj.gjjtwo"
bid.富狗斗地主 = "com.fugouddz.game"
bid.技巧足球 = "com.game.zhuhong11"
bid.蛋壳二手车 = "com.danke"
bid.畅由—畅意人生 = "com.centchain.changyo"
bid.富狗扑克 = "com.pkfggame.game"
bid.乌龟睡眠 = "com.eh.Jukusuikuntwo"



function 乌龟睡眠(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(12,15)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end

function 富狗扑克(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(12,15)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 畅由—畅意人生(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(12,15)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 蛋壳二手车(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(12,15)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 技巧足球(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(12,15)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end

function 富狗斗地主(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(18,20)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end

function 公积金管家51(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,30)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end

function 发烧钓鱼(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,30)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end


function 点休闲扑克21(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(16,18)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end




function 单机斗地主(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,26)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function BJ百家樂21点(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,26)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 兼职帮(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,30) 
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 名门娱乐(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,30) 
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end




function 金鲨娱乐(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(25,30) 
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 诺亚彩票(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(16,20) 
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end


function 掌上網投助手(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(60,90) 
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end


function 大航海霸业(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(15,20)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 纺织大学堂(bids)
	
	local TIMEline = os.time()
	local OUTtime = rd(15,20)
	while os.time()- TIMEline < OUTtime do
		if active(bid[bids],4)then
			moveTo(600,300,100,100,30,50)
			click(321, 978)
			delay(1)
		end
	end
	up(bids,'超时')
end



function 破天无双()
	
	游客登录={{{152,450,0x4c86b7},{213,450,0x4682b4},{492,442,0x4682b4},},85}
	登录游戏={{{265,556,0x588ebc},{260,556,0xffffff},{490,432,0x4682b4},},85}
	
	开始游戏={{{79,558,0xb01004},{172,522,0x28a994},{496,880,0xffef7b},},85}
		--我知道了
	开始游戏2={{{578,84,0xfeffff},{147,1088,0x989a9c},{159,1079,0xfdffff},},85}
	跳过剧情={{{616,1121,0x572514},{629,1125,0xf7da37},{596,1088,0xebb60d},},85}
	
	local TIMEline = os.time()
	local OUTtime = rd(20,30)
	while os.time()- TIMEline < OUTtime do
		if active(bid["破天无双"],4)then
			if d(开始游戏,"开始游戏",true,2)then
				click(79,558)
				click(79,558)
				click(79,558)
			elseif d(登录游戏,"登录游戏",true,1)then
			elseif d(游客登录,"游客登录",true,1)then
			elseif d(跳过剧情,"跳过剧情",true,1)then
				up("破天无双")
			elseif d(开始游戏2,"开始游戏2")then
				click(82,976)
			end
		end
	end
	up("破天无双",'超时')
end


function 冰川冒险记()
	
	一键注册={{{169,733,0xff6a6a},{495,739,0xff6a6a},},85}
	不再提示={{{463,795,0xc8c8c8},{174,804,0xc8c8c8},{233,656,0xff6a6a},},85}
	我知道了={{{310,830,0xe59013},{600,217,0xcd3721},},85}
	登录游戏={{{321,582,0xe99810},{336,598,0x601502},},85}
	角色选择={{{309,53,0xf0b02d},{314,27,0x706755},},85}
	游戏ok={{{218,919,0xfbf7f2},{631,1007,0x7c7153},{632,1007,0xdecbb5},},85}

	
	local TIMEline = os.time()
	local OUTtime = rd(10,12)
	while os.time()- TIMEline < OUTtime do
		if active(bid["冰川冒险记"],4)then
			if d(一键注册,"一键注册",true,1)then
			elseif d(游戏ok,"游戏ok",true,1)then
				delay(2)
				up("冰川冒险记",'超时')
				return true
			elseif d(不再提示,"不再提示",true,1)then
			elseif d(我知道了,"我知道了",true,1)then
			elseif d(登录游戏,"登录游戏",true,1)then
			elseif d(角色选择,"角色选择")then
				click(326,607)
				click(323, 984)
				click(323, 984)
			else
				moveTo(600,300,100,100,30,50)
				click(321, 978)
				delay(1)
			end
		end
	end
	up("冰川冒险记",'超时')
end


function idfas(name)
	if XXTfakerNewPhone(bid[name])then
		idfa = XXTfakerGetinfo(bid[name])['IDFA']
	end
end



--[[
for i=1,28 do
	idfas("乌龟睡眠")
	乌龟睡眠("乌龟睡眠")
	delay(1)
end
--]]

--[[
for i=1,80 do
	idfas("富狗扑克")
	富狗扑克("富狗扑克")
	delay(1)
end
--]]

--[[
for i=1,120 do
	idfas("畅由—畅意人生")
	畅由—畅意人生("畅由—畅意人生")
	delay(1)
end
--]]



--[[
for i=1,55 do
	idfas("蛋壳二手车")
	蛋壳二手车("蛋壳二手车")
	delay(1)
end
--]]


--[[
for i=1,22 do
	idfas("技巧足球")
	富狗斗地主("技巧足球")
	delay(1)
end
--]]

--[[
for i=1,85 do
	idfas("富狗斗地主")
	富狗斗地主("富狗斗地主")
	delay(1)
end
--]]


--[[
for i=1,15 do
	idfas("公积金管家51")
	公积金管家51("公积金管家51")
	delay(1)
end
--]]


--[[
for i=1,17 do
	idfas("发烧钓鱼")
	发烧钓鱼("发烧钓鱼")
	delay(1)
end
--]]


--[[
for i=1,150 do
	idfas("点休闲扑克21")
	点休闲扑克21("点休闲扑克21")
	delay(1)
end
--]]



--[[
for i=1,12 do
	idfas("单机斗地主")
	单机斗地主("单机斗地主")
	delay(1)
end
--]]


--[[
for i=1,330 do
	idfas("BJ百家樂21点")
	BJ百家樂21点("BJ百家樂21点")
	delay(1)
end
--]]


--[[
for i=1,60 do
	idfas("兼职帮")
	名门娱乐("兼职帮")
	delay(1)
end
--]]


--[[
for i=1,100 do
	idfas("名门娱乐")
	名门娱乐("名门娱乐")
	delay(1)
end
--]]

--[[
for i=1,200 do
	idfas("金鲨娱乐")
	金鲨娱乐("金鲨娱乐")
	delay(1)
end
--]]


--[[
for i=1,80 do
	idfas("诺亚彩票")
	诺亚彩票("诺亚彩票")
	delay(1)
end
--]]

--[[


for i=1,25 do
	idfas("掌上網投助手")
	掌上網投助手("掌上網投助手")
	delay(1)
end

--]]

--[[

for i=1,55 do
	idfas("大航海霸业")
	大航海霸业("大航海霸业")
	delay(1)
end

--]]


--[[
for i=1,100 do
	idfas("纺织大学堂")
	纺织大学堂("纺织大学堂")
	delay(1)
end
--]]


--[[

for i=1,100 do
	if XXTfakerNewPhone(bid['冰川冒险记'])then
		idfa = XXTfakerGetinfo(bid['冰川冒险记'])['IDFA']
		冰川冒险记()
	end
	delay(1)
end	

--]]


--[[

for i=1,100 do
	if XXTfakerNewPhone(bid['破天无双'])then
		idfa = XXTfakerGetinfo(bid['破天无双'])['IDFA']
		破天无双()
	end
	delay(1)
end	

--]]







































	
	