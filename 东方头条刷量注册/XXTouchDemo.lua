----------------------------------------------------------------------
----------------------------------------------------------------------
--XXTouch语言Demo
--1.查询账号余额，2.上传图片识别，3.识别报错
----------------------------------------------------------------------
----------------------------------------------------------------------

--功能函数
function fmt(p, ...)
	if select('#', ...) == 0 then
		return p
	else return string.format(p, ...) end
end

--功能函数
function tprintf(t, p, ...)
	t[#t+1] = fmt(p, ...)
end

--功能函数
--添加数据
function append_data(r, k, data, extra)
	tprintf(r, "content-disposition: form-data; name=\"%s\"", k)
	if extra.filename then
		tprintf(r, "; filename=\"%s\"", extra.filename)
	end
	if extra.content_type then
		tprintf(r, "\r\ncontent-type: %s", extra.content_type)
	end
	if extra.content_transfer_encoding then
		tprintf(
			r, "\r\ncontent-transfer-encoding: %s",
			extra.content_transfer_encoding
		)
	end
	tprintf(r, "\r\n\r\n")
	tprintf(r, data)
	tprintf(r, "\r\n")
end

--功能函数
--生成封包边界
function gen_boundary()
	local t = {"BOUNDARY-"}
	for i=2,17 do t[i] = string.char(math.random(65, 90)) end
	t[18] = "-BOUNDARY"
	return table.concat(t)
end

--功能函数
--数据封包
function encode(t, boundary)
	boundary = boundary or gen_boundary()
	local r = {}
	local _t
	for k,v in pairs(t) do
		tprintf(r, "--%s\r\n", boundary)
		_t = type(v)
		if _t == "string" then
			append_data(r, k, v, {})
		elseif _t == "table" then
			assert(v.data, "invalid input")
			local extra = {
				filename = v.filename or v.name,
				content_type = v.content_type,
				--content_transfer_encoding = v.content_transfer_encoding or "binary",
			}
			append_data(r, k, v.data, extra)
		else
			error(string.format("unexpected type %s", _t))
		end
	end
	tprintf(r, "--%s--\r\n", boundary)
	return table.concat(r), boundary
end

--功能函数
--读取图片文件
function lzReadFileByte(file)
	local f = io.open(file,"rb")
	local retbyte = f:read("*all")
	f:close()
	return retbyte
end

--功能函数
--查询余额
function lzPoint(user, pwd)
	local http = require("socket.http")
	local ltn12 = require("ltn12")
	local response_body = {}
	local post_data = string.format("user_name=%s&user_pw=%s", user, pwd);
	res, code = http.request{
		url = "http://v1-http-api.jsdama.com/api.php?mod=php&act=point",
		method = "POST",
		headers =
		{
		  ["Connection"] = "keep-alive",
			["Content-Type"] = "application/x-www-form-urlencoded",
			["Content-Length"] = #post_data,
		},
		source = ltn12.source.string(post_data),
		sink = ltn12.sink.table(response_body)
	}

	--解析返回结果
	local strBody = table.concat(response_body);
	local obj = json.decode(strBody);
	return obj['data'];
end

--功能函数
--图片识别
function lzRecoginze(user, pwd, imagefile, yzmtype)
	local http = require("socket.http")
	local ltn12 = require("ltn12")
	local pBuffer = lzReadFileByte(imagefile);
	local rq = {
		user_name = user,
		user_pw = pwd,
		yzm_minlen = "4",
		yzm_maxlen = "5",
		yzmtype_mark = yzmtype,
		zztool_token = "18d4300563a5f2dfba5a63fb265a2f21",
		upload = { filename = "yzm.jpg", content_type = "image/jpeg", data = pBuffer }
	};

	local response_body = {};

	local boundary = gen_boundary();
	local post_data, bb = encode(rq, boundary);

	res, code = http.request{
		url = "http://v1-http-api.jsdama.com/api.php?mod=php&act=upload",
		method = "POST",
		headers =
		{
		  ["Connection"] = "keep-alive",
			["Content-Type"] = fmt("multipart/form-data; boundary=%s", boundary),
			["Content-Length"] = #post_data,
		},
		source = ltn12.source.string(post_data),
		sink = ltn12.sink.table(response_body)
	}

	--解析返回结果
	local strBody = table.concat(response_body);
	local obj = json.decode(strBody);
	local id = obj['data']['id'];
	local vcode = obj['data']['val'];
	if (id == nil or vcode == nil) then
		return false, id, vcode;
	else
		return true, id, vcode;
	end
end

--功能函数
--打码报错
function lzReportError(user, pwd, errorid)
	local ltn12 = require("ltn12")
	local http = require("socket.http")
	local response_body = {}
	local post_data = string.format("user_name=%s&user_pw=%s&yzm_id=%s", user, pwd, errorid);
	res, code = http.request{
		url = "http://v1-http-api.jsdama.com/api.php?mod=php&act=error",
		method = "POST",
		headers =
		{
		  ["Connection"] = "keep-alive",
			["Content-Type"] = "application/x-www-form-urlencoded",
			["Content-Length"] = #post_data,
		},
		source = ltn12.source.string(post_data),
		sink = ltn12.sink.table(response_body)
	}

	--解析返回结果
	local strBody = table.concat(response_body);
	local obj = json.decode(strBody);
	local strResult = obj['result'];
	if (strResult ~= nil) then
		return "报错成功";
	else
		return "报错失败";
	end
end

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--调用查询，识别，报错接口如下所示
--充值联系联众糖糖童鞋QQ：485926270
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
username = "ouwen000";		--联众打码账号
password = "whoami@520";		--联众打码密码
imgfile = "/var/mobile/Media/1ferver/lua/scripts/yzm.jpg";  	--验证码图片路径（注意这个手机上，要识别的图片文件所在路径）
yzmtype = "1001";				--验证码类型
yzmid = "";					--验证码ID(报错使用)
yzmjg = ''

--查询余额
local lzYE = lzPoint(username, password);
lzYE = "账号余额:" .. lzYE;
sys.alert(lzYE,3);

function lzyzmjg()
	--上传图片识别
	screen.image( 481, 537, 705, 615 ):save_to_png_file("/var/mobile/Media/1ferver/lua/scripts/yzm.jpg")
	sys.msleep(300)
	local lzRe, yzmid, jiegou = lzRecoginze(username, password, imgfile, yzmtype);
	if (lzRe == true) then
		yzmjg = jiegou
		jiegou = "识别结果:" .. jiegou;
		--sys.alert(jiegou);
		return true
	else
		sys.alert('识别超时',3);
	end
end

--识别错误报错
--local lzRep = lzReportError(username, password, yzmid);
--sys.alert(lzRep);
