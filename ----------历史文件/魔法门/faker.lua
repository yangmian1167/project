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
function XXTfakerNewPhone(bid)
	app.close(bid)
	sys.msleep(200)
	clear.all_keychain()
	clear.pasteboard()
	clear.app_data(bid)
	clear.idfav()
	XXTFaker.filter_app({bid})
	log('一键新机中',true)
	phoneList = { 
					"iPhone9,1",
					"iPhone9,3",
					"iPhone9,3",
					"iPhone9,3",
					"iPhone9,2",
					"iPhone9,2",
					"iPhone9,4",
					"iPhone10,1",
					"iPhone10,1",
					"iPhone10,2",
					"iPhone10,2",
					"iPhone10,3",
					"iPhone10,4",
					"iPhone10,4",
					"iPhone10,4",
					"iPhone10,5",
					"iPhone10,5",
					"iPhone10,6",
					"iPhone10,6",
					"iPhone10,6",
					"iPhone10,6",
				}
	ProductVersion = {
						'11.4',
						'12.0.1',
						'12.1.2',
						'12.1.3',
						'12.1.4',
						'12.2',
						"12.3",
						"12.3.1",
	}
	
	

	cfg = XXTFaker.random_config()
	local zmRan = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
	function p_idfa(n)
		function idfa()
			function zm(n)
				local zm_ = ""
				zm_ = zmRan[math.random(1,#zmRan)]
				if n == 1 then
					return zm_
				else
					return zm_ .. zm(n-1)
				end
			end
			return zm(8).."-"..zm(4).."-4"..zm(3).."-"..zm(4).."-"..zm(12)
		end
		--实际需求量
		if n == 1 then
--			print(idfa())
			return idfa()
		else
			for i=1,n do
--				print(idfa())
			end
		end
	end
	cfg["ProductType"] = phoneList[rd(1,#phoneList)]
	idfa = p_idfa(1)
	cfg["IDFA"] = idfa
	cfg["ProductVersion"] = ProductVersion[rd(1,#ProductVersion)]
	
	return XXTFaker.set_config(
				{bid},
				cfg
			)
	
	
	
--	return XXTFaker.set_random_config(
--			bid
--		)
end

--------xxt的函数
--log('--faker--')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end





























        




