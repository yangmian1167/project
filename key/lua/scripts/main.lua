
--[[






list = {
	{"快三",400},
	{"快3",400},
	{"北京PK10",700},
	{"福彩快三",50},
	{"北京28",50},
	{"北京赛车PK10计划",50},
	{"快三彩票",50},
	{"幸运飞艇",100},

	}
	

index = 1
for i=1,700 do
	for k,v in ipairs(list) do
		if v[2]>=i then
			print(v[1])
			index = index + 1
		end
	end
end
print(index)

--]]






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



a={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}


print (#a)

