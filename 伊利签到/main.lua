nLog = require('nLog')()
require('faker')
require('xxtsp')
require("alz")
require("name")

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
--			app.quit(appbids)
			--closeX(appbids)
		end
		sys.msleep(500)
	end)

bid={}
bid.伊利会员中心 = 'com.meichis.YLMemberCenter'






screen.init(0)
var = {}
var.lun = 0


kfy.id = '10316'
--全局变量

function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa or phone
	idfalist.ip = '192.168.1.1'
--	idfalist.ip = get_ip() or '192.168.1.1'
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








page={}
page.伊利网格化管理={{{395,759,0x00b7ee},{88,764,0xff2d55},{82,487,0x22bfa3},{102,338,0x3a84de},}, 85, 0, 0, 0, 0}
page.登录主界面={{{267,758,0xff4164},{538,113,0xff274e},{36,78,0xff5272},},85}
page.网格货管理={{{447,420,0xffffff},{414,72,0xf9f9f9},{415,71,0x191919}},85}
	page.选第二场={{{286,855,0xff0000},{316,855,0xff0000},}, 85, 144, 828, 520, 1044}
	page.输入的完成={{{588,663,0x007aff},{579,657,0x007aff},}, 85, 560, 546, 641, 747}
	page.输入手机号查询={{{534,380,0xdd5050},{538,384,0xdd5050},}, 85, 489, 319, 611, 430}
	--第二种情况
	page.获取验证码2={{{469,356,0xdd5050},{439,351,0xdd5050},}, 85, 349, 322, 521, 383}
	page.签到2={{{108,496,0xeb514a},{102,503,0xffffff},{103,482,0xffffff},}, 85, 53, 466, 160, 520}
	
page.帮注册界面={{{378,72,0xf9f9f9},{378,71,0x343434},{382,82,0x000000},{38,81,0x000000},},85}
	page.获取验证码={{{513,202,0xe7a1ae},{513,216,0xd48795},{511,205,0xffffff},}, 85, 443, 163, 626, 238}
	page.下一步提交={{{323,678,0xffffff},{321,653,0xff1f49},{328,704,0xff1f49},}, 85, 245, 621, 407, 732}

page.帮注册填资料界面={{{595,203,0xff1f49},{377,71,0x343434},{250,260,0xff3258},{37,81,0x000000},}, 85, 0, 0, 0, 0}

page.签到成功={{{336,655,0xff004e},{526,652,0xff004e},{105,659,0xff004e},{328,657,0xffffff},},85}




function checkphone()
	local TimeLine = os.time()
	local OutTime = 60*3
	
	local 取号 = true
	local 验证码 = false
	local 短信 = false
	local 提交 = false
	local 后退 = false
	
	local 取短信次数 = 0
	
	while os.time()-TimeLine < OutTime do
		if active(bid.伊利会员中心,5)then
			if d(page.网格货管理,"网格货管理",false,1)then
				if d(page.选第二场,"选第二场",true)then
				
				elseif 取号 and d(page.网格货管理,"网格货管理",true,1) then
					if GET_Phone()then
						input("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b")
						input(phone)
						d(page.输入的完成,"输入的完成",true)
						验证码 = true
					end
					if d(page.输入手机号查询,"输入手机号查询",true)then
						取号 = false
						delay(2)
					end
				elseif 验证码 then
					if d(page.获取验证码2,"page.获取验证码2",false)then
						短信 = true
						验证码 = false
						click(40,80)
						return false
					end
				elseif 短信 then
					if GET_message(phone) then
						click(300, 363)
						input(sms)
						d(page.输入的完成,"输入的完成",true)
						短信 = false
						提交 = true
					else
						取短信次数 = 取短信次数 + 1
						if 取短信次数 > 30 then 
							click(40,80)
							return false 
						end
						delay(2)
					end
				else
					if d(page.签到2,"page.签到2",true)then
						delay(2)
					end
				end
			elseif d(page.签到成功,"签到成功",true,1)then
				up(appname(bid.伊利会员中心),"盈生源2-签到成功")
				return true
			elseif d(page.帮注册填资料界面,"帮注册填资料界面",false)then
				eight={{247,363,0xffffff},{333,435,0xe8e8e8},{271,502,0xffffff},{272,568,0xffffff},
						{274,641,0xffffff},{340,713,0xffffff},{342,779,0xffffff},{344,851,0xffffff},}
				
				for n,v in ipairs(eight)do
					click(v[1],v[2])
					if n == 1 then
						input("\b\b\b\b\b\b\b\b\b\b\b\b\b")
						input(random_name())
						d(page.输入的完成,"输入的完成",true)
					elseif n == 2 then
						for i=1,rd(1,5) do
							click(312,860,0.3)
						end
						if rd(1,10) > 5 then
							for i=1,rd(1,7) do
								click(460,987,0.3)
							end
						else
							for i=1,rd(1,7) do
								click(451,853,0.3)
							end
						end
						delay(2)
						d(page.输入的完成,"输入的完成",true)
					elseif n == 3 then
						input("\b\b\b\b\b\b\b\b\b\b\b\b\b")
						input(random_name())
						d(page.输入的完成,"输入的完成",true)
					elseif n == 4 then
						whos={{{401,550,0xffffff},{394,713,0xffffff},{392,788,0xffffff},{396,873,0xffffff},},85}
						d(whos,"whos",true,rd(1,4))
					elseif n == 5 then
						奶粉分类={{{464,384,0xffffff},{465,467,0xffffff},{462,550,0xffffff},{458,633,0xffffff},
								{459,714,0xffffff},{454,802,0xffffff},{451,876,0xffffff},},85}
						d(奶粉分类,"奶粉分类",true,rd(1,7))
					elseif n == 6  or n == 7 then
						input(rd(1,3))
						d(page.输入的完成,"输入的完成",true)
					elseif n == 8 then
						宣传位置={{{427,387,0xffffff},{427,471,0xffffff},{431,548,0xffffff},{436,632,0xffffff},{436,714,0xffffff},},85}
						d(宣传位置,"宣传位置",true,rd(1,5))
					end
				end
				
				if d(page.帮注册填资料界面,"帮注册填资料界面",true)then
					delay(3)
				end
				
			elseif d(page.帮注册界面,"帮注册界面",false,4)then
				if 验证码 then
					if d(page.获取验证码,"获取验证码",true)then
						delay(2)
						短信 = true
						验证码 = false
					end
				elseif 短信 then
					if GET_message(phone) then
						click(140,306)
						input(sms)
						d(page.输入的完成,"输入的完成",true)
						短信 = false
						提交 = true
					else
						取短信次数 = 取短信次数 + 1
						if 取短信次数 > 30 then 
							click(40,80)
							return false 
						end
						delay(2)
					end
				elseif 提交 then
					if d(page.下一步提交,"下一步提交",true,1)then
						up(appname(bid.伊利会员中心),"盈生源2-注册")
						delay(3)
					end
				else
					if 后退 then
						d(page.帮注册界面,"帮注册界面",true,4)
					else
						click(410,860)
						后退 = true
					end
				end
				
			elseif d(page.伊利网格化管理,"伊利网格化管理",true)then	
		
			end
		end
		delay(0.5)
	end
end


while true do
	checkphone()
	delay(2)
end













































































