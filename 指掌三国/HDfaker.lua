					--触动精灵的扩展库文件,触摸精灵不需要
hd_bakPath = "/var/mobile/hdFaker/bak/"				--插件生成的备份文件存放位置

hd_resultFile = "/var/mobile/hdFaker/hdfaker_result.txt"	--插件操作结果的文件
function hd_Open() 						--打开插件

  app.run("com.workhard.hdfakerset")

  end
function hd_Close()  						--关闭插件

  app.close("com.workhard.hdfakerset")

  end
function hd_ChangeBakFileName(sOldFileName, sNewFileName)	--备份文件改名，传入原文件名，新文件名，需要后缀名, 如 hd_ChangeBakFileName("微信old.hdBak", "微信new.hdBak")

  os.execute("mv " .. hd_bakPath .. sOldFileName .. " " .. hd_bakPath .. sNewFileName)

  end
function hd_IsHaveBakFile(sPath)  				--判断备份文件是否存在,需要后缀名,如 hd_IsHaveBakFile("微信bak.hdBak")

  if isFileExist(hd_bakPath..sPath) then

  return true 

  else

  return false

  end

  end
function hd_DeleteBakFile(sFileName)				--删除备份文件, 需要后缀名, 如 hd_DeleteBakFile("微信bak.hdBak")

  os.execute("rm " .. hd_bakPath .. sFileName)

  end
function hd_getResult()  					--取伪装后的结果, 这个函数在3.0.2版本以后工作正常

  msleep(1500)

  local nIsOK = 0

  for i = 0 , 30 do

  if isFileExist(hd_resultFile) then

  local sJudgeInfo = readFileString(hd_resultFile);

  if sJudgeInfo ~= nil and sJudgeInfo ~= "" then

 sys.toast("日志内容:"..sJudgeInfo)

  if sJudgeInfo == "1" then

  nIsOK = 1

  break

  end

  end

  end

  --toast("操作执行中，稍等..")

  msleep(1000)

  end

  return nIsOK

  end
function hd_GetBakFileList()  					--取备份文件列表, 返回一个lua的表

  app.open_url("hdfaker://getBakFileList")

  local sJudgeInfo = ""

  for i = 0 , 30 do

 sys.toast("数据读取中")

  if isFileExist(hd_resultFile) then

  sJudgeInfo = readFileString(hd_resultFile);

  if string.find(sJudgeInfo,"hdBak") ~= nil then

  break

  end

  end

  msleep(1000)

  

  end

  local tBakFile = strSplit(sJudgeInfo,",")

  --将取到的文件列表以表的方式返回

  for i = 1 , #tBakFile do

  sys.toast(tBakFile[i])

  msleep(1000)

  end

  --dialog(tmp2.array, 0)

  end
function hd_SetAppEnabled(sAppID)  				--启用对APP的伪装，传入APPID

  app.open_url("hdfaker://setEnabled?"..sAppID)

  

  if hd_getResult() == 1 then

  sys.toast("设置伪装成功")

  else

 sys.toast("设置伪装失败，请重试")

  end

  end
function hd_SetAppDisabled(sAppID)  				--禁用对APP的伪装，传入APPID

  app.open_url("hdfaker://setDisabled?"..sAppID)

  if hd_getResult() == 1 then

 sys.toast("取消伪装成功")

  else

  sys.toast("取消伪装失败，请重试")

  end

  end
function hd_DoClear()  						--执行清理数据（对已启用伪装的APP进行清理）

  app.open_url("hdfaker://doClear")

  if hd_getResult() == 1 then

  sys.toast("数据清理执行成功")

  else

 sys.toast("数据清理执行失败")

  end

  end
function hd_DoNewConfig()  					--执行一键新机

  app.open_url("hdfaker://doNewConfig")

  if hd_getResult() == 1 then

 sys.toast("一键新机执行成功")

  else

  sys.toast("一键新机执行失败")

  end

  end
function hd_DoAutoBackup() 					--对上次备份过的APP数据直接进行备份

  app.open_url("hdfaker://doAutoBackup")

  if hd_getResult() == 1 then

sys.toast("自动备份完成")

  else

 sys.toast("自动备份失败")

  end

  end
function hd_DoBackupApp(sAppID,sFileName) 			--对指定的APP进行备份,传入APPID,以及要生成的备份文件名,需要后缀,如 hd_DoBackupApp("com.tencent.xin", "微信bak.hdBak")

  app.open_url("hdfaker://doBackup?com.workhard.hdfakerset,"..sAppID..","..sFileName)

  if hd_getResult() == 1 then

  sys.toast("指定备份完成")

  else

 sys.toast("指定备份失败")

  end

  end
function hd_DoRestore(sFileName) 				--传入文件名(需要后缀)，恢复该文件的备份内容, 如 hd_DoRestore("微信bak.hdBak")

  app.open_url("hdfaker://doRestore?"..sFileName)

  if hd_getResult() == 1 then

 sys.toast("恢复备份完成")

  else

  sys.toast("恢复备份失败")

  end

  end
function hd_SetConfig(sAppID,sPosX,sPosY)  			--修改指定APP伪装的地理位置，传入APPID，坐标X，坐标Y

  if sPosX == nil or sPosY == nil then

  sys.toast("参数不全，请设置正确的X,Y参数")

  return

  end

  app.open_url("hdfaker://setConfig?"..sAppID..",Location1,"..sPosX)

  msleep(1000)

  app.open_url("hdfaker://setConfig?"..sAppID..",Location2,"..sPosY)

  if hd_getResult() == 1 then

  sys.toast("修改地理位置坐标成功")

  else

  sys.toast("修改地理位置坐标失败")

  end

  end
function hd_SetAllConfig(sPosX,sPosY)  				--修改通用配置的伪装地理位置，坐标X，坐标Y

  if sPosX == nil or sPosY == nil then

  sys.toast("参数不全，请设置正确的X,Y参数")

  return

  end

  app.open_url("hdfaker://setConfig?Global"..",Location1,"..sPosX)

  msleep(1000)

  app.open_url("hdfaker://setConfig?Global"..",Location2,"..sPosY)

  if hd_getResult() == 1 then

  sys.toast("修改地理位置坐标成功")

  else

  sys.toast("修改地理位置坐标失败")

  end

  end
function hd_showRestoreUI()					--打开恢复备份文件界面, 该函数在3.0.2以上版本有效

  app.open_url("hdfaker://showRestoreUI")

  if hd_getResult() == 1 then

  sys.toast("打开恢复备份文件界面成功")

  else

  sys.toast("打开恢复备份文件界面失败")

  end

  end
function hd_showBackupUI()					--打开创建备份界面, 该函数在3.0.2以上版本有效

  app.open_url ("hdfaker://showBackupUI")

  if hd_getResult() == 1 then

  sys.toast("打开创建备份界面成功")

  else

  sys.toast("打开创建备份界面失败")

  end

  end
function hd_DoRestoreNext()					--执行"恢复下一条记录", 该函数在3.0.6以上版本有效

  app.open_url("hdfaker://doRestoreNext")

  if hd_getResult() == 1 then

  sys.toast("开始恢复下一条")

  else

  sys.toast("恢复下一条失败")

  end

end






