#if !macro


@:access(lime.app.Application)
@:access(lime.Assets)
@:access(openfl.display.Stage)


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	
	public static function create ():Void {
		
		var app = new openfl.display.Application ();
		app.create (config);
		
		var display = new flixel.system.FlxPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		app.setPreloader (preloader);
		preloader.onComplete.add (init);
		preloader.create (config);
		
		#if (js && html5)
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/data/data-goes-here.txt");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/images/allshit/breathingoutin0001.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0002.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0003.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0004.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0005.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0006.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0007.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0008.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0009.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0010.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0011.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0012.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0013.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0014.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0015.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0016.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0017.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0018.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0019.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0020.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0021.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0022.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0023.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0024.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0025.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0026.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0027.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0028.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0029.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0030.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0031.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0032.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0033.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0034.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0035.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0036.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0037.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0038.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0039.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0040.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0041.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0042.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0043.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0044.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0045.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0046.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0047.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0048.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0049.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0050.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0051.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0052.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0053.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0054.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0055.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0056.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0057.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0058.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0059.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0060.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0061.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0062.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0063.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0064.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0065.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0066.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0067.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0068.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0069.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0070.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0071.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0072.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0073.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0074.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0075.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0076.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0077.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0078.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0079.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0080.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0081.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0082.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0083.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0084.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0085.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0086.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0087.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0088.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0089.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0090.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0091.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0092.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0093.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0094.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0095.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0096.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0097.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0098.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0099.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0100.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0101.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0102.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0103.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0104.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0105.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0106.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0107.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0108.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0109.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0110.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0111.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0112.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0113.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0114.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0115.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0116.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0117.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0118.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0119.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0120.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0121.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0122.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0123.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0124.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0125.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0126.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0127.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0128.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0129.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0130.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0131.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0132.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0133.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0134.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0135.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0136.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0137.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0138.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0139.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0140.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0141.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0142.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0143.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0144.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0145.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0146.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0147.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0148.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0149.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0150.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0151.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0152.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0153.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0154.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0155.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0156.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0157.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0158.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0159.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0160.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0161.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0162.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0163.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0164.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0165.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0166.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0167.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0168.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0169.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0170.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0171.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0172.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0173.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0174.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0175.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0176.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0177.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0178.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0179.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0180.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0181.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0182.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0183.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0184.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0185.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0186.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0187.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0188.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0189.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0190.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0191.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0192.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0193.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0194.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0195.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0196.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0197.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0198.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0199.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0200.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0201.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0202.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0203.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0204.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0205.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0206.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0207.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0208.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0209.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0210.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0211.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0212.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0213.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0214.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0215.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0216.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0217.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0218.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0219.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0220.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0221.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0222.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0223.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0224.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0225.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0226.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0227.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0228.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0229.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0230.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0231.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0232.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0233.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0234.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0235.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0236.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0237.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0238.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0239.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0240.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0241.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0242.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0243.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0244.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0245.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0246.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0247.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0248.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0249.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0250.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0251.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0252.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0253.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0254.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0255.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0256.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0257.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0258.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0259.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0260.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0261.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0262.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0263.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0264.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0265.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0266.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0267.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0268.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0269.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0270.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0271.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0272.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0273.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0274.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0275.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0276.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0277.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0278.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0279.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0280.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0281.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0282.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0283.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0284.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0285.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0286.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0287.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0288.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0289.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0290.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0291.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0292.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0293.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0294.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0295.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0296.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0297.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0298.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0299.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0300.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0301.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0302.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0303.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0304.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0305.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0306.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0307.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0308.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0309.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0310.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0311.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0312.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0313.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0314.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0315.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0316.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0317.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0318.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0319.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0320.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0321.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0322.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0323.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0324.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0325.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0326.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0327.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0328.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0329.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0330.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0331.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0332.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0333.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0334.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0335.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0336.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0337.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0338.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0339.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0340.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0341.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0342.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0343.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0344.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0345.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0346.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0347.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0348.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0349.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0350.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0351.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0352.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0353.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0354.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0355.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0356.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0357.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0358.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0359.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0360.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0361.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0362.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0363.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0364.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0365.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0366.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0367.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0368.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0369.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0370.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0371.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0372.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0373.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0374.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0375.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0376.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0377.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0378.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0379.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0380.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0381.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0382.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0383.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0384.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0385.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0386.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0387.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0388.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0389.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0390.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0391.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0392.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0393.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0394.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0395.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0396.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0397.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0398.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0399.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0400.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0401.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0402.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0403.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0404.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0405.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0406.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0407.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0408.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0409.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0410.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0411.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0412.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0413.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0414.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0415.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0416.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0417.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0418.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0419.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0420.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0421.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0422.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0423.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0424.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0425.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0426.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0427.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0428.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0429.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/allshit/breathingoutin0430.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/images-go-here.txt");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/images/ninja_cam_breathing_sim.html");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/images/ninja_cam_breathing_sim.js");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/music/I-Am.mp3");
		types.push (lime.Assets.AssetType.MUSIC);
		
		
		urls.push ("assets/music/music-goes-here.txt");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/sounds/sounds-go-here.txt");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("flixel/sounds/beep.mp3");
		types.push (lime.Assets.AssetType.MUSIC);
		
		
		urls.push ("flixel/sounds/flixel.mp3");
		types.push (lime.Assets.AssetType.MUSIC);
		
		
		urls.push ("Nokia Cellphone FC Small");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("Monsterrat");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("flixel/images/ui/button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("flixel/images/logo/default.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		
		if (config.assetsPrefix != null) {
			
			for (i in 0...urls.length) {
				
				if (types[i] != lime.Assets.AssetType.FONT) {
					
					urls[i] = config.assetsPrefix + urls[i];
					
				}
				
			}
			
		}
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if (sys && !nodejs && !emscripten)
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (__) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		
		if (total == 0) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			build: "17",
			company: "ninjaMuffin",
			file: "BreathingSim",
			fps: 60,
			name: "BreathingSim",
			orientation: "",
			packageName: "com.example.myapp",
			version: "0.0.1",
			windows: [
				
				{
					antialiasing: 0,
					background: 0,
					borderless: false,
					depthBuffer: false,
					display: 0,
					fullscreen: false,
					hardware: true,
					height: 480,
					parameters: "{}",
					resizable: true,
					stencilBuffer: true,
					title: "BreathingSim",
					vsync: true,
					width: 640,
					x: null,
					y: null
				},
			]
			
		};
		
		#if hxtelemetry
		var telemetry = new hxtelemetry.HxTelemetry.Config ();
		telemetry.allocations = true;
		telemetry.host = "localhost";
		telemetry.app_name = config.name;
		Reflect.setField (config, "telemetry", telemetry);
		#end
		
		#if (js && html5)
		#if (munit || utest)
		openfl.Lib.embed (null, 640, 480, "000000");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		var hasMain = false;
		var entryPoint = Type.resolveClass ("Main");
		
		for (methodName in Type.getClassFields (entryPoint)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		lime.Assets.initialize ();
		
		if (hasMain) {
			
			Reflect.callMethod (entryPoint, Reflect.field (entryPoint, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			/*if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}*/
			
		}
		
		#if !flash
		if (openfl.Lib.current.stage.window.fullscreen) {
			
			openfl.Lib.current.stage.dispatchEvent (new openfl.events.FullScreenEvent (openfl.events.FullScreenEvent.FULL_SCREEN, false, false, true, true));
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		#end
		
	}
	
	
	#if neko
	@:noCompletion @:dox(hide) public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


@:build(DocumentClass.build())
@:keep class DocumentClass extends Main {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					openfl.Lib.current.addChild (this);
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
