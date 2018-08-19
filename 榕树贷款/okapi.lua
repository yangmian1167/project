--require('xxtsp')

--TODO: 这里要改成你的APP_KEY
APP_KEY = '90BB9337D7B1ACC0CA642C5726D227CB'
--TODO: 这里要改成你的APP_SECRECT
APP_SECRECT = 'tjBu0uVfLx2coNmKILX2C8CjLu2WTwKAR5ec9zcPFyI3hbPVkrJedYwo0y6F'

--md5
function md5str(text)
	return string.upper(string.md5(text))
end

--将sign字典排序
function signlist(tables)
	local list={}
	for i in pairs(tables) do
		if i ~= nil then 
			table.insert(list, i)  
		end
	end
	table.sort(list, function(a,b) return (a < b) end)
-- 降序
-- table.sort(tableTest, function(a,b) return (a > b) end)
	local signStr = ''
	for _, fName in pairs(list) do 
		signStr = signStr..tables[fName]
	end
	signStr = signStr..APP_SECRECT
	return signStr
end

--get模版
function get(url,times)
	local url = url
	local times = times or 9
	
	local code, res_headers, body = http.get(url, times, {
		["User-Agent"] = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0)"; -- 模拟 IE8 的请求
		["Cookie"] = ""; -- 顺带 Cookie 提交
	})
	if code == 200 then -- 如果返回的状态码是 HTTP_OK
		nLog(body) -- 输出百度首页的网页 HTML 内容
	end
end

-----------post模版
function okpost(url,tables)
	local server = url
	local post_data = ''
	for k,v in pairs(tables)do
		post_data = post_data..k..'='..v..'&'
		log('post_data~~'..post_data)
	end
	
	safari = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3)'
	local code, res_headers, body = http.post(server, 15, {
		["User-Agent"] = safari, -- 模拟 safari
	}, post_data)
	if code == 200 then
		data = json.decode(body)
		if data.ret == "200" then
			return data
		end
	end
end

-----------创建数据示例----------
function okapi(model_name,data)
	local datas = json.encode(data)
	
	local signArr = {}
	signArr.app_key = APP_KEY
	signArr.model_name = model_name
	signArr.data = datas
	signArr.s = 'App.Table.Create'			--注意api接口名为s
	
	signStr = signlist(signArr)
	nLog('signStr--'..signStr)
	
	local TrueSignArr ={}
	TrueSignArr.app_key = APP_KEY
	TrueSignArr.model_name = model_name
	TrueSignArr.data = datas
	TrueSignArr.sign = md5str(signStr)
	
	local url = 'http://api.okayapi.com/?s='..signArr.s
	
	if okpost(url,TrueSignArr)then
		return true
	end
end

























