nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')


----mian----
var = {}

safari_bid = 'com.apple.mobilesafari'
url = 'https://act.pand-auto.com//h5sharePage/?code=0G6874'


pd = {}
pd.加载中 = {{{36, 116, 0x007aff},}, 85, 23, 98, 620, 123}
pd.主页面1 =  {{{ 35, 753, 0x98732d},{349, 739, 0x028887},{609, 768, 0x160e09},{619, 847, 0xfefefe},}, 85, 0, 0, 0, 0}
pd.主页面2 = {{{319, 432, 0x86d0ab},{ 85, 396, 0x27282d},{558, 462, 0x27282d},}, 85, 0, 0, 0, 0}

pd.主页面_获取验证码 = {{{502,  968, 0xa6d4ae},{418,  928, 0xa6d4ae},{570, 1007, 0xa6d4ae},}, 85, 279, 184, 629, 1047}




function reg()
	local 取号 = true
	local 验证码 = false
	local 取短信 = false
	local 提交 = false
	
	while true do
		if active(safari_bid,5) then
			if d(pd.加载中,'pd.加载中') then
			elseif d(pd.主页面1,'pd.主页面1') or d(pd.主页面2,'pd.主页面2') then
				if 取号 then
					if true then
						delay(3)
						click(182, 861)
						input('18129871167')
						取号 = false
						验证码 = true
					end	
				elseif 验证码 then
					if d(pd.主页面_获取验证码,'pd.主页面_获取验证码',true) then
						验证码 = false
						取短信 = true
					end	
				elseif 取短信 then
					
				end
			end
		end	
		delay(1)
    end
end
openUrl(url)
reg()


local group, name

group = '辅助'
name = 'gps.fake(bid, latitude, longitude)'

return {
    name = string.format('%s - %s', group, name),
    description = "地理位置伪装",
    arguments = {
        {type = 'app', hint = '选择需要伪装的应用'},
        {type = 'loc', hint = '选择需要伪装的位置'},
    },
    default = {
        latitude = 39.92,
        longitude = 116.46
    },  -- 默认所在的位置
    generator = function(bid, loc)
        return string.format('gps.fake(%q, %f, %f)', bid, loc.latitude, loc.longitude)
    end,
}




























