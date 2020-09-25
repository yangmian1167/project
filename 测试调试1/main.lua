-- 此处为nLog功能实现操作
nLog = require('nLog')()



--function moveTo(x1,y1,x2,y2,setp,times,wait)
--	local setp = setp or 5
--	local times = times or 2
--	local wait = wait or 0.5
--	touch.on(x1,y1)
--		:step_len(setp)
--		:step_delay(times)
--		:move(x2,y2)
--		:msleep(1000 * wait)
--	:off()
--end

--dialog('准备执行看视频任务',3)
--app.run('com.mlmf.video')
----nLog(app.front_bid())
--while true do
	
--	moveTo(320, 978,281, 325)
	
--	sys.msleep(math.random(3000,5000))
--	end

url = 'https://e.cn.miaozhen.com/r/k=2191014&p=7dwIQ&dx=__IPDX__&rt=2&pro=s&ns=__IP__&ni=__IESID__&v=__LOC__&xa=__ADPLATFORM__&tr=__REQUESTID__&mo=__OS__&m0=__OPENUDID__&m0a=__DUID__&m1=__ANDROIDID1__&m1a=__ANDROIDID__&m2=__IMEI__&m4=__AAID__&m5=__IDFA__&m6=__MAC1__&m6a=__MAC__&m11=__OAID__&mn=__ANAME__&o=https://iot4.midea.com.cn/downloads/app/index.html?pgfrom=maimai9'

app.open_url(url)