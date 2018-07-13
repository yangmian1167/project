nLog = require('nLog')()





--记时器()
function jishi()
	local 时间线 = os.time()
	local 时间线1  =  os.time()
	
	while 时间线1 > 0 do
		计时 = os.time() - 时间线
		nLog(计时)
	end
end


--超时
function chaoshi()
	local 时间线 = os.time()
	local 时间线1  =  os.time()
	local 超时 = 60* (n or 10)
	while os.time() - 时间线 < 超时 do
		时间线2 = os.time() - 时间线1
		nLog(时间线2)
	end
end


-- 定时器
function dingshi()    
	while true do
		local 当前时间 = (os.date("%H"))
		当前时间 = tonumber(当前时间)
		if (当前时间 >=1 and 当前时间 < 24)then
			nLog(当前时间)
		else
			return false
		end
	end
end



jishi()






