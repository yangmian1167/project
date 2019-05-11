
--



	
	
	
	


--list = {
--	{"时时彩",300},
--	{"重庆时时彩",200},
--	}
	

--index = 1
--for i=1,300 do
--	for k,v in ipairs(list) do
--		if v[2]>=i then
--			print(v[1])
--			index = index + 1
--		end
--	end
--end
--print(index)




--function jc(n)
--	if n == 1 then
--		return 1
--	else
--		return n*jc(n-1)
--	end
--end


--function jiecheng(n)
--	local all = 1
--	for i=2,n do
--		showall = all
--		all = all*i
--		print(all.."="..showall.."*"..i)
--	end
--	return all
--end
	
--print(jc(5))



--a={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}


--print (#a)

--a={"好产品",
--"很好",
--"期待",
--"太好用了",
--"使用中",
--"越来越好",
--"放心用",
--"很好",
--"软件很棒",
--"简单",
--"越来越好",
--"好平台",
--"支持",
--"还可以吧",
--"浏览量好",
--"希望更好",
--"手机操作方便",
--"值得信赖",
--"不错",
--"客服很nice",
--"多交流",
--"东西好用",
--"真的好",
--"赞",
--"五星好评",
--"更新及时",
--"很喜欢",
--"好软件",
--"特别适合",
--"体验很好",
--"分享给大家",
--"特别好",
--"功能相当全了",
--"加粉神器",
--"点赞",
--"好用",
--"棒",
--"炒鸡好用",
--"好玩好用",
--"不错",
--"可以插入背景哦",
--"可以用用",
--"很牛",
--"简单实用",
--"类型很多",
--"值得下载",
--"简单好用",
--"好软件",
--"好用",
--"很不错",
--"可以了",
--"希望越做越好",
--"挺喜欢的一款神器",
--"操作简单方便",
--"挺好用的",
--"功能比较全面",
--"不错",
--"作图好",
--"小白必备233",
--"很好的一款软件",
--"特别好用",
--"还行",
--"功能强大",
--"好用",
--"非常好用的软件点赞",
--"推荐",
--"加粉快",
--"5星满分",
--"好用",
--"很棒",
--"认可",
--"推荐使用！",
--"信任",
--"喜欢",
--"还行",
--"挺好",
--"棒棒的",
--"好",
--"还可以",
--"表情还可以多一点哦",
--"功能很全面",
--"超级好用",
--"不会乱收费",
--"很真实",
--"小细节也做得很棒",
--"很好",
--"好用",
--"细腻",
--"可以添加群聊页面",
--"新版不错",
--"实用",
--"微商神器",
--"有QQ不错",
--"和真的一样",
--"省事",
--"方便",
--"微商代理好用",
--"很好使",
--"好评",
--"吸粉功能好",
--"更新很好",
--"二维码好看",
--"表情多",
--"对话功能一如既往的好",
--"厉害",
--"很好的软件",
--"效果不错",
--"巨好用",
--"好用",
--"真滴好用",
--"新人可以先试用一下",
--"还可以",
--"功能合一",
--"很好",
--"很给力",
--"做图好看",
--"很不错",
--"好",
--"非常不错",
--"好评",
--"非常好",
--"推荐给大家",
--"没广告挺好",
--"值得拥有",
--"赞",
--"好用",
--"非常不错",
--"实用性好",
--"很方便",
--"已经推荐给大家用了",
--}


--function rd(t)
--	return math.random(1,#t)
--end

--for i=1,3000 do
--	print(a[rd(a)]..a[rd(a)]..a[rd(a)])
--end



--[[
vpnlist ={
		dispName = 'idfa888',
		VPNType = "L2TP",
		server = 'yhtip.com',
		authorization = 'idfa888',
		password = 'Aa112211',           -- 密码
		secret = '1',            -- 密钥，PPTP 可不填
		encrypLevel = 1,               -- 加密级别，选填，默认 1
		group = '',                    -- 群组名称，选填，默认 ""
		VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
	}













function creat_vpn(table)
	local success = vpnconf.create{
		dispName = table.dispName,
		VPNType = table.VPNType,
		server = table.server,
		authorization = table.authorization,
		password = table.password,
		secret = table.secret,
		encrypLevel = table.encrypLevel,
		group = table.group,
		VPNSendAllTraffic = table.VPNSendAllTraffic,
	}
	if success then
		return true
	else
		sys.toast('创建失败，确定人品没有问题？')
	end
end



creat_vpn(vpnlist)
--]]--


---打印关键词


--applist = {
--{"牛牛",150       },
--{"欢乐牛牛",150   },
--{"二八杠",150     },
--{"抢庄牛牛",150   },
--{"十三水",150     },
--{"波克棋牌",150   },
--{"澳门百家乐",150 },
--{"现金牛牛",150   },
--{"真钱牛牛",150   },

--	}
	

--index = 1

--for k,v in ipairs(applist) do
--	for i =1, v[2] do
--		print(v[1])
--		index = index + 1
--	end
--end
--print(index)




--index = 1
--for i=1,300 do
--	for k,v in ipairs(applist) do
--		if v[2]>=i then
--			print(v[1])
--			index = index + 1
--		end
--	end
--end
--print(index)







----idfa生成
--[[
zmRan={"A","B","C","D","E","F",
	"0","1","2","3","4","5","6","7","8","9",}



for i = 1,4000 do
	var = ''
	var1 = ''
	var2 = ''
	var3 = ''
	var4 = ''
	for i=1,8 do
		var = var..zmRan[math.random(1,#zmRan)]
	end
	for i=1,4 do
		var1 = var1..zmRan[math.random(1,#zmRan)]
	end
	for i=1,4 do
		var2 = var2..zmRan[math.random(1,#zmRan)]
	end
	for i=1,4 do
		var3 = var3..zmRan[math.random(1,#zmRan)]
	end
	for i=1,12 do
		var4 = var4..zmRan[math.random(1,#zmRan)]
	end
	print(var..'-'..var1..'-'..var2..'-'..var3..'-'..var4)
end

--]]
---随机时间
--[[
for i=1,350 do
	time = math.random(19,19)..':'..math.random(1,30)..':'..math.random(1,59)
--	time = math.random(2,58)
	print(time)
end

--]]--

--[[
LIST = {

"50",
"42",
"54",
"48",
"38",
"34",
"46",
"42",
"31",
"47",
"42",
"33",
"53",
"33",
"52",
"47",
"37",
"40",
"31",
"54",
"47",
"33",
"51",
"50",
"44",
"34",
"34",
"50",
"41",
"33",
"42",
"48",
"40",
"36",
"44",
"47",
"48",
"48",
"41",
"33",
"39",
"50",
"30",
"42",
"46",
"40",
"32",
"53",
"53",
"43",
"38",
"41",
"39",
"51",
"37",
"41",
"36",
"54",
"37",
"48",
"44",
"34",
"49",
"50",
"39",
"42",
"52",
"30",
"54",
"44",
"31",
"43",
"34",
"51",
"45",
"46",
"34",
"51",
"33",
"32",
"48",
"37",
"53",
"37",
"38",
"33",
"48",
"50",
"47",
"45",
"48",
"36",
"33",
"30",
"31",
"50",
"51",
"35",
"32",
"43",
"30",
"32",
"41",
"48",
"47",
"43",
"31",
"40",
"35",
"47",
"37",
"40",
"35",
"44",
"43",
"45",
"34",
"42",
"54",
"47",
"53",
"34",
"38",
"34",
"54",
"41",
"54",
"32",
"45",
"32",
"40",
"53",
"31",
"52",
"37",
"35",
"49",
"40",
"35",
"45",
"45",
"41",
"41",
"44",
"45",
"51",


}


a = 1
for i = 1,350 do
	time = LIST[a] + math.random(3,5)
	a = a + 1
	print(time)
	
	
end


--]]--

--[[
-----随机生成密码
function myRand(rnType,rnLen,rnUL)
	local zmRan,HexRan,myrandS,rns
	rnUL=rnUL or 3
	rns=rns or 0  --用于精确随机种子
	rns=rns+1
	zmRan={"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
	"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
	HexRan={"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","A","B","C","D","E","F"}
	myrandS=""
--	math.randomseed(rns..tostring(os.time()):reverse():sub(1, 6))
	if rnType==1 then --生成数字
		myrandS=math.random(9)
		for r1=1,rnLen-1 do
			myrandS=myrandS..math.random(0,9)
		end
	elseif rnType==2 then --生成手机号,rnLen,rn11无需设置
		local mheader={"13","15"}
		myrandS=mheader[math.random(#mheader)]
		for r1=1,9 do
			myrandS=myrandS..math.random(0,9)
		end
	elseif rnType==3 then --生成字母
		for r1=1,rnLen do
			myrandS=myrandS..zmRan[math.random(52)]
		end
	elseif rnType==4 or rnType==5 then --生成数字/字母组合或邮箱
		local rn3=math.random(2,5)
		for r1=1,rn3 do
			myrandS=myrandS..zmRan[math.random(52)]
		end
		for r1=1,rnLen-rn3 do
			myrandS=myrandS..math.random(0,9)
		end
		if rnType==5 then
			local mailheader={"@qq.com","@hotmail.com","@sohu.com"} --自行增减
			myrandS=myrandS..mailheader[math.random(#mailheader)]
		end
	elseif rnType==6 then --生成16进制
		myrandS=HexRan[math.random(2,22)]
		for r1=1,rnLen-1 do
			myrandS=myrandS..HexRan[math.random(22)]
		end
	end
	if rnUL==1 then
		return string.upper(myrandS) --返回大写
	elseif rnUL==2 then
		return string.lower(myrandS) --返回小写
	else
		return myrandS
	end
end



for i=1,600 do
	print(myRand(4,math.random(8,12)))
--	msleep(300)
	
end






--]]--


--t = {'1','2','3'} 

--if t ~= nil then
--	for k,v in pairs(t) do
--		v = v + 1	
--		print(v)
--	end	
--	print(v)
--end



nLog(app.front_bid())











