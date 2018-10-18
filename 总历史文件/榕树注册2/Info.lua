return {
	-- 包标识符
	BundleIdentifier = _config.bid; 	
	-- 配置界面
	MainInterfaceFile = "interface.xui";
	-- 名称
	BundleDisplayName = _config.name;
	-- 短名称
	BundleName = _config.name;
	-- 主脚本入口			
	Executable = "main.lua";
	-- 图标
	BundleIconFile = "appicon.png";
	-- 版本号
	BundleVersion = "0.2";
	-- 作者信息
	PackageControl = {
		AuthorName = "作者名";
		AuthorEmail = "作者电子邮件地址";
		Homepage = "网站地址";
		Description = "描述信息";
		Tags = "标签";
		Copyright = "版权信息";
	};
	-- 这里是固定的，不要改
	BundleInfoDictionaryVersion = "6.0";
}