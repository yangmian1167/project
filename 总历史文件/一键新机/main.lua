-- 此处为nLog功能实现操作
nLog = require('nLog')()



--[[
        Created by vitik on 2017-08-17.
        Copyright (c) 2017年 vitik(804888631). All rights reserved.
--]]
--[[
功能说明:
 1.还原一个,按顺序还原
 2.还原选中,选中备份包还原
 3.清除当前记录,清空当前记录，并把泥沙盒文件放回来原来的备份包里
 4.一键新机，先设置应用的伪装信息
 5.备份新机，当你app有应用数据时，备份沙盒
 如有bug请自行修改,我只是做个例子而已
]]--
function fileList(path)
   local files={};
   local p = io.popen('ls -a "'..path..'"')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
   for v in p:lines() do
      if v~="." and v~=".." and v~="record.plist" then
        nLog(v);
        table.insert(files,#files+1,v);
      end
   end
   return files
end
function display_pack()
    local files="";
        local list = fileList("/var/mobile/Media/1ferver/wx.backups")
    return list;
end
local function sh_escape(path) -- XXTouch 原创函数，未经 XXTouch 许可，可以用于商业用途
    path = string.gsub(path, "([ \\()<>'"`#&*;?~$])", "\\%1")
    return path
end
function frename(from, to) -- 重命名（移动）一个文件或目录
    assert(type(from)=="string" and from~="", 'frename 参数 1 异常')
    assert(type(to)=="string" and to~="", 'frename 参数 2 异常')
    os.execute('mv -f '..sh_escape(from).." "..sh_escape(to))
end
function setFake(bids)
    clear.idfav();
    for _, bid in ipairs(bids) do
       clear.app_data(bid)
       local cfg = XXTFaker.random_config()    -- 获取随机配置
       XXTFaker.set_config(bid, cfg, true);
       DocumentsPath=app.data_path(bid).."/Documents/";
       os.execute(
            table.concat(
                {
                  string.format("mkdir -p %s", DocumentsPath),
                  string.format('chown -R mobile:mobile %s', DocumentsPath),
                  string.format('chmod -R 755 %s', DocumentsPath),
                },
                "\n"
            )
        )
       clear.keychain(bid);
    end
    clear.all_keychain()
    clear.cookies()
end
function backUps(bids,save_keychain,save_pboard,path)
    --local time = os.time()
    local cfgs = {}
    --local path = backups_path .. '/' .. time
    os.execute(
        string.format("mkdir -p %s", path)
    )
    for _, bid in ipairs(bids) do
        if type(bid) == "string" and app.bundle_path(bid) then
            local appdata_path = path .. '/' .. bid
            app.close(bid)
            sys.msleep(200)
            cfgs[bid] = XXTFaker.get_config(bid)
            nLog(cfgs);
            os.execute(
                table.concat(
                    {
                        string.format("mkdir -p %s", appdata_path),
                        string.format("mv -f %s/* %s", app.data_path(bid), appdata_path),
                    },
                    '\n'
                )
            )
        end
    end
    file.writes(path.."/t.cfg", json.encode(cfgs))
    file.writes(path.."/idfav.cfg", clear.idfav())
    if save_keychain then
        os.execute(
            table.concat(
                {
                    string.format("mkdir -p %s/keychain", path),
                    'killall -SIGSTOP SpringBoard',
                    "cp -f -r /private/var/Keychains/keychain-2.db " .. path .. "/keychain/keychain-2.db",
                    "cp -f -r /private/var/Keychains/keychain-2.db-shm " .. path .. "/keychain/keychain-2.db-shm",
                    "cp -f -r /private/var/Keychains/keychain-2.db-wal " .. path .. "/keychain/keychain-2.db-wal",
                    'killall -SIGCONT SpringBoard',
                },
                '\n'
            )
        )
    end
    if save_pboard then
        os.execute(
            table.concat(
                {
                    string.format("mkdir -p %s/ouid", path),
                    'cp -f -r /var/mobile/Library/Caches/com.apple.UIKit.pboard ' .. path .. '/ouid',
                },
                '\n'
            )
        )
    end
    clear.all_keychain()
    clear.pasteboard()
    clear.cookies()
    return path 
end
function reduction_apps(path_file)
    --local path_file = check_value(1, 'string', ...)
    local path = ""
    if file.exists(path_file) == "directory" then
        path = path_file
    elseif file.exists(path_file) == "file" then
        path = backups_path .. '/tmp'
        os.execute(
            table.concat(
                {
                    "mkdir -p " .. path,
                    "cp -f -r " .. path_file .. " " .. path,
                    "cd " .. path,
                    "tar xf " .. path_file,
                                        
                },
                "\n"
            )
        )
        
    else
        return false
    end
        if file.exists(path .. '/keychain') == "directory" then
                os.execute(
                        table.concat(
                                {
                                        "killall -SIGSTOP SpringBoard",
                                        "cp -f -r " .. sh_escape(path) .. "/keychain/keychain-2.db /private/var/Keychains/keychain-2.db",
                                        "cp -f -r " .. sh_escape(path) .. "/keychain/keychain-2.db-shm /private/var/Keychains/keychain-2.db-shm",
                                        "cp -f -r " .. sh_escape(path) .. "/keychain/keychain-2.db-wal /private/var/Keychains/keychain-2.db-wal",
                                        "killall -SIGCONT SpringBoard",
                                },
                                "\n"
                        )
                )
        end
        if file.exists(path .. '/ouid') == "directory" then
                os.execute(
                        table.concat(
                                {
                                        "cp -f -r " .. sh_escape(path).."/ouid/com.apple.UIKit.pboard /var/mobile/Library/Caches/",
                                },
                                "\n"
                        )
                )
        end

    if not file.exists(path .. "/t.cfg") then return false end
        if file.exists(path .. "/idfav.cfg") then
                clear.idfav(
                        file.reads(path.."/idfav.cfg")
                )
        end
    local cfgs = json.decode(file.reads(path .. "/t.cfg"))
    if type(cfgs) ~= "table" then return false end
    for bid, cfg in pairs(cfgs) do
        if type(bid) == "string" and app.bundle_path(bid) then
            local appdata_path = sh_escape(path .. '/' .. bid)
            app.close(bid)
            clear.app_data(bid)
            XXTFaker.set_config(bid, cfg, false)
            os.execute(
                table.concat(
                    {
                        string.format('mv -f %s/Documents %s', appdata_path, app.data_path(bid)),
                        string.format('mv -f %s/Library %s', appdata_path, app.data_path(bid)),
                        string.format('chown -R mobile:mobile %s', app.data_path(bid)),
                        string.format('chmod -R 755 %s', app.data_path(bid)),
                    },
                    "\n"
                )
            )
        end
    end
    local files=file.list(path_file);
    for i,v in ipairs(files) do
        local mypath=path_file.."/"..v
        nLog(mypath);
        os.execute( "rm -rf " .. sh_escape(mypath))
    end
    clear.cookies()
    return true
end
-----------------------取出下一个文件的路径
function getFileNameByIndex(index,isnext)----------------根据坐标找出文件名和坐标
    local list = fileList(backPath)
    if isnext==true then
       index=index+1;
    end
    local filename = ""
    for i,v in ipairs(list) do
        
        if i==index then
        nLog(i.." "..index.." "..filename);
            filename=v;
            break;
        end
    end
    return index,filename;
end

function getFileNameByName(name)----------------根据名字找出文件坐标位置
    local list = fileList(backPath)
   
    index=0;
   
    local filename = ""
    for i,v in ipairs(list) do
        
        if v==name then
        nLog(i.." "..index.." "..filename);
            filename=v;
            index=i;
            break;
        end
    end
    return index,filename;
end
function doReback(needReBackPath)
   if file.exists(needReBackPath) then
       if reduction_apps(needReBackPath) then
          sys.alert("还原成功,路径:"..needReBackPath)
        else
           sys.alert("还原失败,路径:"..needReBackPath)  
       end
     else
        sys.alert("路径不存在");
   end
end
function repack_order()---按顺序还原
  local plfilename = backPath.."/record.plist"
  if file.exists(plfilename) then-----如果存在备份记录
     local tmp2={};
     tmp2= plist.read(plfilename);
     

     nLog(backPath..tmp2.filename);
     backUps(selectApps,true,false,backPath..tmp2.filename)
     

     local index,filename=getFileNameByIndex(tmp2.index,true);
     if filename=="" then------判断是不是最后一个备份包,从第一个开始
       tmp2.index=1;
       local index,filename=getFileNameByIndex(tmp2.index,false);
       tmp2.filename=filename;
       plist.write(plfilename, tmp2);
       local needReBackPath=backPath..filename
       doReback(needReBackPath)
     else
       tmp2.index=index;
       tmp2.filename=filename;
       plist.write(plfilename, tmp2);
       local needReBackPath=backPath..filename
       doReback(needReBackPath)
     end
    

  else--------------------------如果没找到就从第一个开始
    local tmp2 ={};
    tmp2.index=1;
    local index,filename=getFileNameByIndex(tmp2.index,false);
    tmp2.filename=filename;
    plist.write(plfilename, tmp2);
    local needReBackPath=backPath..filename
    doReback(needReBackPath)
   
  end
end
----------------------------------------------
function selectReback(reFilename)
   local plfilename = backPath.."/record.plist"
  
   if file.exists(plfilename) then-----如果存在备份记录
    local tmp2 ={};
    tmp2 = plist.read(plfilename)
    if tmp2.filename==reFilename then
      sys.alert("当前备份包已经是这个，前不要重复还原");
      return;
    end
    local needReBackPath=backPath..tmp2.filename
    backUps(selectApps,true,false,backPath..tmp2.filename)
   end
   local tmp3={};
   index,filename=getFileNameByName(reFilename)
   tmp3.index=index;
   tmp3.filename=filename;
   plist.write(plfilename, tmp3);
   local needReBackPath=backPath..filename
   doReback(needReBackPath);

end
-----------------------------------------------
-----------------------------------------------
function clearRecord()
   local plfilename = backPath.."/record.plist"
   if file.exists(plfilename) then
     local tmp2 = plist.read(plfilename);
     if backUps(selectApps,true,false,backPath..tmp2.filename) then
     sys.alert("备份成功,并清除记录");
     end
     os.execute( "rm -rf " .. sh_escape(plfilename))
   else
      sys.alert("没有记录信息");
   end
 
end
-----------------------------------------------
plist = require("plist")
confirm, selects = dialog()
    :config('reback2') -- 配置保存ID
    :timeout(30)
    :add_label('xxtfaker还原备份 整合xtfaker例子 code by vitik QQ:804888631')
    :add_input('备份包路径', '/var/mobile/Media/1ferver/wx.backups/')
    :add_picker('所有备份包', display_pack(), '')
    :add_radio('功能',{'还原一个', '还原选中','清除当前记录',"一键新机","备份新机"}, '还原一个')
    :add_checkbox('要还原的app',app.bundles() )
    :show()

backPath=selects['备份包路径']
fuc=selects['功能'];
selectApps=selects["要还原的app"];

XXTFaker = require("XXTFaker")()
if not XXTFaker.exists() then
    XXTFaker.install()
end

if fuc=="还原一个" then
    repack_order();
end
if fuc=='还原选中' then
   nLog(selects['所有备份包']);
   selectReback(selects['所有备份包'])
end
if fuc=="清除当前记录" then
	clearRecord();
end
if fuc=="一键新机" then
	setFake(selectApps);
end
if fuc=="备份新机" then
    backUps(selectApps,true,false,backups_path..os.date("%Y-%m-%d-%H-%M-%S",os.time()))
end

