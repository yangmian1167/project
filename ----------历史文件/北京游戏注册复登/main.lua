-- 此处为nLog功能实现操作
nLog = require('nLog')()
require('xxtsp')
require('faker')






if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end



霸业沙皇 = 'com.gl22wk.2jo7hd'


accountlist = {
{"jbzdc22f8f83","41ce1670"},
{"jbzd00780c41","9fca5b05"},
{"jbzd05fcabb5","f61bf001"},
{"jbzdc0f14aec","f1dbea46"},
{"jbzd3cbe1e13","741df7dc"},
{"jbzdeece7a37","82aef3e6"},
{"jbzd22c44fe4","154a4ec0"},
{"jbzd65af9bf2","ce027c1f"},
{"jbzd3a5bfaac","e8852f0c"},
{"jbzd2a6c4f97","51977ab5"},
{"jbzd55a80970","91f826ed"},
{"jbzd0a97771e","b5b041f5"},
{"jbzd4de6c7ee","ff208c0a"},
{"jbzdbeb81f5e","d63f1e66"},
{"jbzdd3b8cc4d","1a1adf15"},
{"jbzdff02a445","240877e1"},
{"jbzd1f4c865d","4fcaf1a8"},
{"jbzd171c5208","12c6350d"},
{"jbzd70ebb630","67ec1aef"},
{"jbzd28f1645a","faa39796"},
{"jbzdcdc89e6e","703ee6f3"},
{"jbzd7fd1baac","90736739"},
{"jbzd0f35463a","f2561112"},
{"jbzdfd200435","dd3dcc71"},
{"jbzd16be225e","aa052aa1"},
{"jbzd801fb388","fda1f2df"},
{"jbzdf03cf066","700e8bd5"},
{"jbzd01d3e311","4f5eb42f"},
{"jbzddbbd51ad","6e5e17c0"},
{"jbzdffbb39c8","bd5a1c18"},
{"jbzd8f0aefc4","1365a9f4"},
{"jbzd7fe1cff5","cef0fe52"},
{"jbzdd1e48741","fc94a520"},
{"jbzda8c5bf2e","c3453d5c"},
{"jbzd149a60ef","c7a9f757"},
{"jbzd1fa26d39","59fcf373"},
{"jbzdb416f446","384f7ac1"},
{"jbzd314bf610","3ca4d889"},
{"jbzd142f0f89","3a199065"},
{"jbzd1a2d65fc","dcbd5e18"},
{"jbzd7677d61b","0fa3b5f9"},
{"jbzd1d3ce554","e6b180f6"},
{"jbzdd9628762","ff7ccc4f"},
{"jbzd084daad9","19589174"},
{"jbzd6f2cb312","d0dc0ef4"},
{"jbzda9a836f7","a3ca8efc"},
{"jbzdb5656e15","ae07ea4a"},
{"jbzd39d31ce2","a7e645bf"},
{"jbzd2041e0fc","b588b5cc"},
{"jbzd5bd157a2","421e74c6"},
{"jbzd76f03a31","e0363a54"},
{"jbzd1e18c025","0bda812a"},
{"jbzd800b3c34","149cdb12"},
{"jbzddbcd2a7c","07ddda44"},
{"jbzdbad4a45f","759ab37d"},
{"jbzdf0bfcbc2","5619316a"},
{"jbzd44744f00","612fa580"},
{"jbzdd92a1a84","c350ec02"},
{"jbzd80244c17","0ea6a429"},
{"jbzd061d4a8e","a410af92"},
{"jbzd6f72754a","aabc18e4"},
{"jbzd9f9c5af5","cd266e34"},
{"jbzd071ae583","7d62cfd8"},
{"jbzd24a14df6","bc15364c"},
{"jbzdbaa060ce","1aa3558d"},
{"jbzd43c82ea2","3707e43f"},
{"jbzd88de9497","c475fad5"},
{"jbzdcd6b106a","d59efe87"},
{"jbzd95d2aede","21ee8eec"},
{"jbzdbe79f98e","2db61da0"},
{"jbzd88e0764c","d527ea8a"},
{"jbzdfdcd8d43","97a457e7"},
{"jbzd21886ba3","f67f2667"},
{"jbzd34f1c2af","9b3560e8"},
{"jbzd8f7e72e2","91652f8e"},
{"jbzd6b508207","9f21f575"},
{"jbzd2007b3a7","7149a238"},
{"jbzda75c5474","48fc935c"},
{"jbzd9c021193","758a23a3"},
{"jbzd85ea81dd","997e8d2a"},
{"jbzd1c132724","c9d98e08"},
{"jbzd1f515667","27662bbc"},
{"jbzdefe6c577","625f4680"},
{"jbzd51c3ec53","8bc6325a"},
{"jbzdab104d00","3fd6f5bd"},
{"jbzd9f9eb5ce","638e3a5b"},
{"jbzd82f128cd","f01b4ab8"},
{"jbzd49bd4f4c","70d30b97"},
{"jbzd75189f0c","cb485d4c"},
{"jbzd799ff22d","5641da91"},
{"jbzdc02078d1","f3ea6584"},
{"jbzd6f5c8542","96a150e1"},
{"jbzd36b67306","07f4e575"},
{"jbzdb953b5dc","ff957dab"},
{"jbzd78ea9e2a","7e94cb2d"},
{"jbzdc617ea63","04507d79"},
{"jbzdc3a2ff4d","2b9dc37a"},
{"jbzd67ad2fdc","b40ec4e5"},
{"jbzd0a407ea2","65c528ec"},
{"jbzda4a04a63","92431551"},
{"jbzd96446f35","8ee86d77"},
{"jbzddf440795","241245f9"},
{"jbzdc1c064c4","553de286"},
{"jbzd4862ca5a","73180f5c"},
{"jbzda2d3c764","242c07ae"},
{"jbzde85010ec","65ac7225"},
{"jbzda583e612","97fe22ec"},
{"jbzdcc63f55d","fa0b302a"},
{"jbzdbe581263","c688521f"},
{"jbzd19b247f7","dcb6e3a2"},
{"jbzd3a92ebf3","476a739d"},
{"jbzdca68c6bf","ada5fb86"},
{"jbzda2ed0e73","21343507"},
{"jbzda447dc75","669afd0e"},
{"jbzde7d99817","9d6eec87"},
{"jbzdd24b0651","fd7d001a"},
{"jbzd865a6115","109fbb60"},
{"jbzd87aa4ead","029abab2"},
{"jbzd9edaebb0","d37cea85"},
{"jbzda6bb43dd","0a1a6eda"},
{"jbzd5214d9db","b507e51f"},
{"jbzd533c742c","f2b46030"},
{"jbzd866c55fc","76e286c8"},
{"jbzd8370fc26","e6eaac75"},
{"jbzdc96d48c7","a4313f82"},
{"jbzdc47b823a","f8235ccf"},
{"jbzd0a96ea95","5fac575b"},
{"jbzd6d4ec585","98c2af81"},
{"jbzd5e24cd13","d3961b7c"},
{"jbzda37a79e4","588c3add"},
{"jbzd1286fb8b","1be662b2"},
{"jbzd2332a2fd","566371f1"},
{"jbzd133d21ba","0967f7d8"},
{"jbzd78bb66ea","f08493e0"},
{"jbzd7e09e197","341d3eb6"},
{"jbzd1bf0d78c","342dc2a9"},

}

by = {}
by.登录界面 = {{
	{469, 530, 0xf37241},
	{359, 501, 0xf37241},
	{517, 536, 0xf37241},
	{129, 507, 0xf37241},
	{278, 517, 0xf37241},
}, 85, 93, 350, 546, 995}
by.登录界面.账号 = {{
	{164, 498, 0xffffff},
	{135, 480, 0xbcbcbc},
	{135, 507, 0xaeaeae},
	{188, 505, 0xa9a9a9},
}, 85, 121, 462, 205, 522}
by.登录界面.密码 = {{
	{172, 428, 0xffffff},
	{135, 411, 0xd8d8d8},
	{137, 437, 0xd1d1d1},
	{192, 410, 0xd6d6d6},
}, 85, 125, 400, 201, 446}
by.游戏主界面 = {{
	{173, 1073, 0x1f1000},
	{279, 1077, 0x9b8648},
	{384, 1063, 0xe9dd86},
	{475, 1079, 0x766530},
}, 85, 143, 1028, 530, 1120}
by.游戏主界面1 = {{
	{170, 1073, 0x030200},
	{279, 1076, 0x726335},
	{366, 1069, 0x95823b},
	{483, 1066, 0x141412},
}, 85, 158, 1032, 576, 1110}
by.tips礼包 = {{
	{609, 61, 0xaf9444},
	{623, 76, 0x775725},
	{621, 46, 0xc2a640},
}, 85, 583, 37, 637, 87}
by.账号错误 ={{
	{395,  966, 0xd92727},
	{235,  971, 0xd92727},
	{407, 1020, 0xd92727},
}, 85, 198, 935, 452, 1066}
function again()
	local time_line = os.time()
	local time_out = math.random(150,180)
	while os.time() - time_line < time_out do
		if active(霸业沙皇,5) then
			if d(by.登录界面,'by.登录界面') then
				if d(by.账号错误,'by.账号错误') then
					screen.image():save_to_album()
					delay(8)
					index = index + 1
					local success = file.writes("/var/mobile/1.txt", tostring(index))
					return true
				elseif d(by.登录界面.账号,'by.登录界面.账号',true) then
					input(accountlist[tonumber(index)][1])
				elseif d(by.登录界面.密码,'by.登录界面.密码',true) then
					input(accountlist[tonumber(index)][2])
				elseif d(by.登录界面,'by.登录界面',true)  then
				else
				end
			elseif d(by.tips礼包,'by.tips礼包',true) then
			else
				click(311, 931)
			end	
		end
		sys.msleep(math.random(800,2000))
	end
	if d(by.游戏主界面,'by.游戏主界面') or d(by.游戏主界面1,'by.游戏主界面1') then
		screen.image():save_to_album()
		delay(8)
		app.quit(霸业沙皇)
		return true
	else
		return false
	end	
end


while true do
	index = file.get_line("/var/mobile/1.txt",1)
	if index == nil  then
		index = 1
		local success = file.writes("/var/mobile/1.txt", tostring(index))
		log('创建一个index')
	end
	vpnx()
	delay(3)
	if vpn() then
		delay(3)
		if XXTfakerNewPhone(霸业沙皇) then
			if again() then
				index = index + 1
				local success = file.writes("/var/mobile/1.txt", tostring(index))
			end
		end
		if index == #accountlist then
			return true
		end	
	end	
end




