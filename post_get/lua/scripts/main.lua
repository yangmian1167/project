


url = 'http://idfa888.com/Public/dyid/?service=dyid.savetext&text=&dyid=10000001&lun=10&mun=100&doway=2'
url_read = 'http://idfa888.com/Public/dyid/?service=dyid.readtext'


function get(url)
	code,sss,body = http.get(url,5)
	body = json.decode(body)
	nLog(body)
end



get(url)
get(url_read)
