package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		
		
		#end
		
		#if flash
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		className.set ("assets/images/allshit/breathingoutin0001.png", __ASSET__assets_images_allshit_breathingoutin0001_png);
		type.set ("assets/images/allshit/breathingoutin0001.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0002.png", __ASSET__assets_images_allshit_breathingoutin0002_png);
		type.set ("assets/images/allshit/breathingoutin0002.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0003.png", __ASSET__assets_images_allshit_breathingoutin0003_png);
		type.set ("assets/images/allshit/breathingoutin0003.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0004.png", __ASSET__assets_images_allshit_breathingoutin0004_png);
		type.set ("assets/images/allshit/breathingoutin0004.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0005.png", __ASSET__assets_images_allshit_breathingoutin0005_png);
		type.set ("assets/images/allshit/breathingoutin0005.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0006.png", __ASSET__assets_images_allshit_breathingoutin0006_png);
		type.set ("assets/images/allshit/breathingoutin0006.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0007.png", __ASSET__assets_images_allshit_breathingoutin0007_png);
		type.set ("assets/images/allshit/breathingoutin0007.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0008.png", __ASSET__assets_images_allshit_breathingoutin0008_png);
		type.set ("assets/images/allshit/breathingoutin0008.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0009.png", __ASSET__assets_images_allshit_breathingoutin0009_png);
		type.set ("assets/images/allshit/breathingoutin0009.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0010.png", __ASSET__assets_images_allshit_breathingoutin0010_png);
		type.set ("assets/images/allshit/breathingoutin0010.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0011.png", __ASSET__assets_images_allshit_breathingoutin0011_png);
		type.set ("assets/images/allshit/breathingoutin0011.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0012.png", __ASSET__assets_images_allshit_breathingoutin0012_png);
		type.set ("assets/images/allshit/breathingoutin0012.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0013.png", __ASSET__assets_images_allshit_breathingoutin0013_png);
		type.set ("assets/images/allshit/breathingoutin0013.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0014.png", __ASSET__assets_images_allshit_breathingoutin0014_png);
		type.set ("assets/images/allshit/breathingoutin0014.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0015.png", __ASSET__assets_images_allshit_breathingoutin0015_png);
		type.set ("assets/images/allshit/breathingoutin0015.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0016.png", __ASSET__assets_images_allshit_breathingoutin0016_png);
		type.set ("assets/images/allshit/breathingoutin0016.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0017.png", __ASSET__assets_images_allshit_breathingoutin0017_png);
		type.set ("assets/images/allshit/breathingoutin0017.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0018.png", __ASSET__assets_images_allshit_breathingoutin0018_png);
		type.set ("assets/images/allshit/breathingoutin0018.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0019.png", __ASSET__assets_images_allshit_breathingoutin0019_png);
		type.set ("assets/images/allshit/breathingoutin0019.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0020.png", __ASSET__assets_images_allshit_breathingoutin0020_png);
		type.set ("assets/images/allshit/breathingoutin0020.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0021.png", __ASSET__assets_images_allshit_breathingoutin0021_png);
		type.set ("assets/images/allshit/breathingoutin0021.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0022.png", __ASSET__assets_images_allshit_breathingoutin0022_png);
		type.set ("assets/images/allshit/breathingoutin0022.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0023.png", __ASSET__assets_images_allshit_breathingoutin0023_png);
		type.set ("assets/images/allshit/breathingoutin0023.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0024.png", __ASSET__assets_images_allshit_breathingoutin0024_png);
		type.set ("assets/images/allshit/breathingoutin0024.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0025.png", __ASSET__assets_images_allshit_breathingoutin0025_png);
		type.set ("assets/images/allshit/breathingoutin0025.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0026.png", __ASSET__assets_images_allshit_breathingoutin0026_png);
		type.set ("assets/images/allshit/breathingoutin0026.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0027.png", __ASSET__assets_images_allshit_breathingoutin0027_png);
		type.set ("assets/images/allshit/breathingoutin0027.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0028.png", __ASSET__assets_images_allshit_breathingoutin0028_png);
		type.set ("assets/images/allshit/breathingoutin0028.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0029.png", __ASSET__assets_images_allshit_breathingoutin0029_png);
		type.set ("assets/images/allshit/breathingoutin0029.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0030.png", __ASSET__assets_images_allshit_breathingoutin0030_png);
		type.set ("assets/images/allshit/breathingoutin0030.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0031.png", __ASSET__assets_images_allshit_breathingoutin0031_png);
		type.set ("assets/images/allshit/breathingoutin0031.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0032.png", __ASSET__assets_images_allshit_breathingoutin0032_png);
		type.set ("assets/images/allshit/breathingoutin0032.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0033.png", __ASSET__assets_images_allshit_breathingoutin0033_png);
		type.set ("assets/images/allshit/breathingoutin0033.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0034.png", __ASSET__assets_images_allshit_breathingoutin0034_png);
		type.set ("assets/images/allshit/breathingoutin0034.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0035.png", __ASSET__assets_images_allshit_breathingoutin0035_png);
		type.set ("assets/images/allshit/breathingoutin0035.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0036.png", __ASSET__assets_images_allshit_breathingoutin0036_png);
		type.set ("assets/images/allshit/breathingoutin0036.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0037.png", __ASSET__assets_images_allshit_breathingoutin0037_png);
		type.set ("assets/images/allshit/breathingoutin0037.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0038.png", __ASSET__assets_images_allshit_breathingoutin0038_png);
		type.set ("assets/images/allshit/breathingoutin0038.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0039.png", __ASSET__assets_images_allshit_breathingoutin0039_png);
		type.set ("assets/images/allshit/breathingoutin0039.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0040.png", __ASSET__assets_images_allshit_breathingoutin0040_png);
		type.set ("assets/images/allshit/breathingoutin0040.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0041.png", __ASSET__assets_images_allshit_breathingoutin0041_png);
		type.set ("assets/images/allshit/breathingoutin0041.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0042.png", __ASSET__assets_images_allshit_breathingoutin0042_png);
		type.set ("assets/images/allshit/breathingoutin0042.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0043.png", __ASSET__assets_images_allshit_breathingoutin0043_png);
		type.set ("assets/images/allshit/breathingoutin0043.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0044.png", __ASSET__assets_images_allshit_breathingoutin0044_png);
		type.set ("assets/images/allshit/breathingoutin0044.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0045.png", __ASSET__assets_images_allshit_breathingoutin0045_png);
		type.set ("assets/images/allshit/breathingoutin0045.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0046.png", __ASSET__assets_images_allshit_breathingoutin0046_png);
		type.set ("assets/images/allshit/breathingoutin0046.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0047.png", __ASSET__assets_images_allshit_breathingoutin0047_png);
		type.set ("assets/images/allshit/breathingoutin0047.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0048.png", __ASSET__assets_images_allshit_breathingoutin0048_png);
		type.set ("assets/images/allshit/breathingoutin0048.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0049.png", __ASSET__assets_images_allshit_breathingoutin0049_png);
		type.set ("assets/images/allshit/breathingoutin0049.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0050.png", __ASSET__assets_images_allshit_breathingoutin0050_png);
		type.set ("assets/images/allshit/breathingoutin0050.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0051.png", __ASSET__assets_images_allshit_breathingoutin0051_png);
		type.set ("assets/images/allshit/breathingoutin0051.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0052.png", __ASSET__assets_images_allshit_breathingoutin0052_png);
		type.set ("assets/images/allshit/breathingoutin0052.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0053.png", __ASSET__assets_images_allshit_breathingoutin0053_png);
		type.set ("assets/images/allshit/breathingoutin0053.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0054.png", __ASSET__assets_images_allshit_breathingoutin0054_png);
		type.set ("assets/images/allshit/breathingoutin0054.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0055.png", __ASSET__assets_images_allshit_breathingoutin0055_png);
		type.set ("assets/images/allshit/breathingoutin0055.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0056.png", __ASSET__assets_images_allshit_breathingoutin0056_png);
		type.set ("assets/images/allshit/breathingoutin0056.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0057.png", __ASSET__assets_images_allshit_breathingoutin0057_png);
		type.set ("assets/images/allshit/breathingoutin0057.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0058.png", __ASSET__assets_images_allshit_breathingoutin0058_png);
		type.set ("assets/images/allshit/breathingoutin0058.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0059.png", __ASSET__assets_images_allshit_breathingoutin0059_png);
		type.set ("assets/images/allshit/breathingoutin0059.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0060.png", __ASSET__assets_images_allshit_breathingoutin0060_png);
		type.set ("assets/images/allshit/breathingoutin0060.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0061.png", __ASSET__assets_images_allshit_breathingoutin0061_png);
		type.set ("assets/images/allshit/breathingoutin0061.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0062.png", __ASSET__assets_images_allshit_breathingoutin0062_png);
		type.set ("assets/images/allshit/breathingoutin0062.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0063.png", __ASSET__assets_images_allshit_breathingoutin0063_png);
		type.set ("assets/images/allshit/breathingoutin0063.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0064.png", __ASSET__assets_images_allshit_breathingoutin0064_png);
		type.set ("assets/images/allshit/breathingoutin0064.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0065.png", __ASSET__assets_images_allshit_breathingoutin0065_png);
		type.set ("assets/images/allshit/breathingoutin0065.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0066.png", __ASSET__assets_images_allshit_breathingoutin0066_png);
		type.set ("assets/images/allshit/breathingoutin0066.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0067.png", __ASSET__assets_images_allshit_breathingoutin0067_png);
		type.set ("assets/images/allshit/breathingoutin0067.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0068.png", __ASSET__assets_images_allshit_breathingoutin0068_png);
		type.set ("assets/images/allshit/breathingoutin0068.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0069.png", __ASSET__assets_images_allshit_breathingoutin0069_png);
		type.set ("assets/images/allshit/breathingoutin0069.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0070.png", __ASSET__assets_images_allshit_breathingoutin0070_png);
		type.set ("assets/images/allshit/breathingoutin0070.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0071.png", __ASSET__assets_images_allshit_breathingoutin0071_png);
		type.set ("assets/images/allshit/breathingoutin0071.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0072.png", __ASSET__assets_images_allshit_breathingoutin0072_png);
		type.set ("assets/images/allshit/breathingoutin0072.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0073.png", __ASSET__assets_images_allshit_breathingoutin0073_png);
		type.set ("assets/images/allshit/breathingoutin0073.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0074.png", __ASSET__assets_images_allshit_breathingoutin0074_png);
		type.set ("assets/images/allshit/breathingoutin0074.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0075.png", __ASSET__assets_images_allshit_breathingoutin0075_png);
		type.set ("assets/images/allshit/breathingoutin0075.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0076.png", __ASSET__assets_images_allshit_breathingoutin0076_png);
		type.set ("assets/images/allshit/breathingoutin0076.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0077.png", __ASSET__assets_images_allshit_breathingoutin0077_png);
		type.set ("assets/images/allshit/breathingoutin0077.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0078.png", __ASSET__assets_images_allshit_breathingoutin0078_png);
		type.set ("assets/images/allshit/breathingoutin0078.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0079.png", __ASSET__assets_images_allshit_breathingoutin0079_png);
		type.set ("assets/images/allshit/breathingoutin0079.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0080.png", __ASSET__assets_images_allshit_breathingoutin0080_png);
		type.set ("assets/images/allshit/breathingoutin0080.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0081.png", __ASSET__assets_images_allshit_breathingoutin0081_png);
		type.set ("assets/images/allshit/breathingoutin0081.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0082.png", __ASSET__assets_images_allshit_breathingoutin0082_png);
		type.set ("assets/images/allshit/breathingoutin0082.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0083.png", __ASSET__assets_images_allshit_breathingoutin0083_png);
		type.set ("assets/images/allshit/breathingoutin0083.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0084.png", __ASSET__assets_images_allshit_breathingoutin0084_png);
		type.set ("assets/images/allshit/breathingoutin0084.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0085.png", __ASSET__assets_images_allshit_breathingoutin0085_png);
		type.set ("assets/images/allshit/breathingoutin0085.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0086.png", __ASSET__assets_images_allshit_breathingoutin0086_png);
		type.set ("assets/images/allshit/breathingoutin0086.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0087.png", __ASSET__assets_images_allshit_breathingoutin0087_png);
		type.set ("assets/images/allshit/breathingoutin0087.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0088.png", __ASSET__assets_images_allshit_breathingoutin0088_png);
		type.set ("assets/images/allshit/breathingoutin0088.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0089.png", __ASSET__assets_images_allshit_breathingoutin0089_png);
		type.set ("assets/images/allshit/breathingoutin0089.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0090.png", __ASSET__assets_images_allshit_breathingoutin0090_png);
		type.set ("assets/images/allshit/breathingoutin0090.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0091.png", __ASSET__assets_images_allshit_breathingoutin0091_png);
		type.set ("assets/images/allshit/breathingoutin0091.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0092.png", __ASSET__assets_images_allshit_breathingoutin0092_png);
		type.set ("assets/images/allshit/breathingoutin0092.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0093.png", __ASSET__assets_images_allshit_breathingoutin0093_png);
		type.set ("assets/images/allshit/breathingoutin0093.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0094.png", __ASSET__assets_images_allshit_breathingoutin0094_png);
		type.set ("assets/images/allshit/breathingoutin0094.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0095.png", __ASSET__assets_images_allshit_breathingoutin0095_png);
		type.set ("assets/images/allshit/breathingoutin0095.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0096.png", __ASSET__assets_images_allshit_breathingoutin0096_png);
		type.set ("assets/images/allshit/breathingoutin0096.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0097.png", __ASSET__assets_images_allshit_breathingoutin0097_png);
		type.set ("assets/images/allshit/breathingoutin0097.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0098.png", __ASSET__assets_images_allshit_breathingoutin0098_png);
		type.set ("assets/images/allshit/breathingoutin0098.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0099.png", __ASSET__assets_images_allshit_breathingoutin0099_png);
		type.set ("assets/images/allshit/breathingoutin0099.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0100.png", __ASSET__assets_images_allshit_breathingoutin0100_png);
		type.set ("assets/images/allshit/breathingoutin0100.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0101.png", __ASSET__assets_images_allshit_breathingoutin0101_png);
		type.set ("assets/images/allshit/breathingoutin0101.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0102.png", __ASSET__assets_images_allshit_breathingoutin0102_png);
		type.set ("assets/images/allshit/breathingoutin0102.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0103.png", __ASSET__assets_images_allshit_breathingoutin0103_png);
		type.set ("assets/images/allshit/breathingoutin0103.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0104.png", __ASSET__assets_images_allshit_breathingoutin0104_png);
		type.set ("assets/images/allshit/breathingoutin0104.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0105.png", __ASSET__assets_images_allshit_breathingoutin0105_png);
		type.set ("assets/images/allshit/breathingoutin0105.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0106.png", __ASSET__assets_images_allshit_breathingoutin0106_png);
		type.set ("assets/images/allshit/breathingoutin0106.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0107.png", __ASSET__assets_images_allshit_breathingoutin0107_png);
		type.set ("assets/images/allshit/breathingoutin0107.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0108.png", __ASSET__assets_images_allshit_breathingoutin0108_png);
		type.set ("assets/images/allshit/breathingoutin0108.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0109.png", __ASSET__assets_images_allshit_breathingoutin0109_png);
		type.set ("assets/images/allshit/breathingoutin0109.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0110.png", __ASSET__assets_images_allshit_breathingoutin0110_png);
		type.set ("assets/images/allshit/breathingoutin0110.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0111.png", __ASSET__assets_images_allshit_breathingoutin0111_png);
		type.set ("assets/images/allshit/breathingoutin0111.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0112.png", __ASSET__assets_images_allshit_breathingoutin0112_png);
		type.set ("assets/images/allshit/breathingoutin0112.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0113.png", __ASSET__assets_images_allshit_breathingoutin0113_png);
		type.set ("assets/images/allshit/breathingoutin0113.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0114.png", __ASSET__assets_images_allshit_breathingoutin0114_png);
		type.set ("assets/images/allshit/breathingoutin0114.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0115.png", __ASSET__assets_images_allshit_breathingoutin0115_png);
		type.set ("assets/images/allshit/breathingoutin0115.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0116.png", __ASSET__assets_images_allshit_breathingoutin0116_png);
		type.set ("assets/images/allshit/breathingoutin0116.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0117.png", __ASSET__assets_images_allshit_breathingoutin0117_png);
		type.set ("assets/images/allshit/breathingoutin0117.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0118.png", __ASSET__assets_images_allshit_breathingoutin0118_png);
		type.set ("assets/images/allshit/breathingoutin0118.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0119.png", __ASSET__assets_images_allshit_breathingoutin0119_png);
		type.set ("assets/images/allshit/breathingoutin0119.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0120.png", __ASSET__assets_images_allshit_breathingoutin0120_png);
		type.set ("assets/images/allshit/breathingoutin0120.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0121.png", __ASSET__assets_images_allshit_breathingoutin0121_png);
		type.set ("assets/images/allshit/breathingoutin0121.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0122.png", __ASSET__assets_images_allshit_breathingoutin0122_png);
		type.set ("assets/images/allshit/breathingoutin0122.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0123.png", __ASSET__assets_images_allshit_breathingoutin0123_png);
		type.set ("assets/images/allshit/breathingoutin0123.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0124.png", __ASSET__assets_images_allshit_breathingoutin0124_png);
		type.set ("assets/images/allshit/breathingoutin0124.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0125.png", __ASSET__assets_images_allshit_breathingoutin0125_png);
		type.set ("assets/images/allshit/breathingoutin0125.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0126.png", __ASSET__assets_images_allshit_breathingoutin0126_png);
		type.set ("assets/images/allshit/breathingoutin0126.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0127.png", __ASSET__assets_images_allshit_breathingoutin0127_png);
		type.set ("assets/images/allshit/breathingoutin0127.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0128.png", __ASSET__assets_images_allshit_breathingoutin0128_png);
		type.set ("assets/images/allshit/breathingoutin0128.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0129.png", __ASSET__assets_images_allshit_breathingoutin0129_png);
		type.set ("assets/images/allshit/breathingoutin0129.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0130.png", __ASSET__assets_images_allshit_breathingoutin0130_png);
		type.set ("assets/images/allshit/breathingoutin0130.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0131.png", __ASSET__assets_images_allshit_breathingoutin0131_png);
		type.set ("assets/images/allshit/breathingoutin0131.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0132.png", __ASSET__assets_images_allshit_breathingoutin0132_png);
		type.set ("assets/images/allshit/breathingoutin0132.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0133.png", __ASSET__assets_images_allshit_breathingoutin0133_png);
		type.set ("assets/images/allshit/breathingoutin0133.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0134.png", __ASSET__assets_images_allshit_breathingoutin0134_png);
		type.set ("assets/images/allshit/breathingoutin0134.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0135.png", __ASSET__assets_images_allshit_breathingoutin0135_png);
		type.set ("assets/images/allshit/breathingoutin0135.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0136.png", __ASSET__assets_images_allshit_breathingoutin0136_png);
		type.set ("assets/images/allshit/breathingoutin0136.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0137.png", __ASSET__assets_images_allshit_breathingoutin0137_png);
		type.set ("assets/images/allshit/breathingoutin0137.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0138.png", __ASSET__assets_images_allshit_breathingoutin0138_png);
		type.set ("assets/images/allshit/breathingoutin0138.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0139.png", __ASSET__assets_images_allshit_breathingoutin0139_png);
		type.set ("assets/images/allshit/breathingoutin0139.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0140.png", __ASSET__assets_images_allshit_breathingoutin0140_png);
		type.set ("assets/images/allshit/breathingoutin0140.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0141.png", __ASSET__assets_images_allshit_breathingoutin0141_png);
		type.set ("assets/images/allshit/breathingoutin0141.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0142.png", __ASSET__assets_images_allshit_breathingoutin0142_png);
		type.set ("assets/images/allshit/breathingoutin0142.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0143.png", __ASSET__assets_images_allshit_breathingoutin0143_png);
		type.set ("assets/images/allshit/breathingoutin0143.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0144.png", __ASSET__assets_images_allshit_breathingoutin0144_png);
		type.set ("assets/images/allshit/breathingoutin0144.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0145.png", __ASSET__assets_images_allshit_breathingoutin0145_png);
		type.set ("assets/images/allshit/breathingoutin0145.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0146.png", __ASSET__assets_images_allshit_breathingoutin0146_png);
		type.set ("assets/images/allshit/breathingoutin0146.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0147.png", __ASSET__assets_images_allshit_breathingoutin0147_png);
		type.set ("assets/images/allshit/breathingoutin0147.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0148.png", __ASSET__assets_images_allshit_breathingoutin0148_png);
		type.set ("assets/images/allshit/breathingoutin0148.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0149.png", __ASSET__assets_images_allshit_breathingoutin0149_png);
		type.set ("assets/images/allshit/breathingoutin0149.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0150.png", __ASSET__assets_images_allshit_breathingoutin0150_png);
		type.set ("assets/images/allshit/breathingoutin0150.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0151.png", __ASSET__assets_images_allshit_breathingoutin0151_png);
		type.set ("assets/images/allshit/breathingoutin0151.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0152.png", __ASSET__assets_images_allshit_breathingoutin0152_png);
		type.set ("assets/images/allshit/breathingoutin0152.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0153.png", __ASSET__assets_images_allshit_breathingoutin0153_png);
		type.set ("assets/images/allshit/breathingoutin0153.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0154.png", __ASSET__assets_images_allshit_breathingoutin0154_png);
		type.set ("assets/images/allshit/breathingoutin0154.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0155.png", __ASSET__assets_images_allshit_breathingoutin0155_png);
		type.set ("assets/images/allshit/breathingoutin0155.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0156.png", __ASSET__assets_images_allshit_breathingoutin0156_png);
		type.set ("assets/images/allshit/breathingoutin0156.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0157.png", __ASSET__assets_images_allshit_breathingoutin0157_png);
		type.set ("assets/images/allshit/breathingoutin0157.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0158.png", __ASSET__assets_images_allshit_breathingoutin0158_png);
		type.set ("assets/images/allshit/breathingoutin0158.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0159.png", __ASSET__assets_images_allshit_breathingoutin0159_png);
		type.set ("assets/images/allshit/breathingoutin0159.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0160.png", __ASSET__assets_images_allshit_breathingoutin0160_png);
		type.set ("assets/images/allshit/breathingoutin0160.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0161.png", __ASSET__assets_images_allshit_breathingoutin0161_png);
		type.set ("assets/images/allshit/breathingoutin0161.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0162.png", __ASSET__assets_images_allshit_breathingoutin0162_png);
		type.set ("assets/images/allshit/breathingoutin0162.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0163.png", __ASSET__assets_images_allshit_breathingoutin0163_png);
		type.set ("assets/images/allshit/breathingoutin0163.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0164.png", __ASSET__assets_images_allshit_breathingoutin0164_png);
		type.set ("assets/images/allshit/breathingoutin0164.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0165.png", __ASSET__assets_images_allshit_breathingoutin0165_png);
		type.set ("assets/images/allshit/breathingoutin0165.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0166.png", __ASSET__assets_images_allshit_breathingoutin0166_png);
		type.set ("assets/images/allshit/breathingoutin0166.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0167.png", __ASSET__assets_images_allshit_breathingoutin0167_png);
		type.set ("assets/images/allshit/breathingoutin0167.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0168.png", __ASSET__assets_images_allshit_breathingoutin0168_png);
		type.set ("assets/images/allshit/breathingoutin0168.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0169.png", __ASSET__assets_images_allshit_breathingoutin0169_png);
		type.set ("assets/images/allshit/breathingoutin0169.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0170.png", __ASSET__assets_images_allshit_breathingoutin0170_png);
		type.set ("assets/images/allshit/breathingoutin0170.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0171.png", __ASSET__assets_images_allshit_breathingoutin0171_png);
		type.set ("assets/images/allshit/breathingoutin0171.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0172.png", __ASSET__assets_images_allshit_breathingoutin0172_png);
		type.set ("assets/images/allshit/breathingoutin0172.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0173.png", __ASSET__assets_images_allshit_breathingoutin0173_png);
		type.set ("assets/images/allshit/breathingoutin0173.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0174.png", __ASSET__assets_images_allshit_breathingoutin0174_png);
		type.set ("assets/images/allshit/breathingoutin0174.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0175.png", __ASSET__assets_images_allshit_breathingoutin0175_png);
		type.set ("assets/images/allshit/breathingoutin0175.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0176.png", __ASSET__assets_images_allshit_breathingoutin0176_png);
		type.set ("assets/images/allshit/breathingoutin0176.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0177.png", __ASSET__assets_images_allshit_breathingoutin0177_png);
		type.set ("assets/images/allshit/breathingoutin0177.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0178.png", __ASSET__assets_images_allshit_breathingoutin0178_png);
		type.set ("assets/images/allshit/breathingoutin0178.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0179.png", __ASSET__assets_images_allshit_breathingoutin0179_png);
		type.set ("assets/images/allshit/breathingoutin0179.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0180.png", __ASSET__assets_images_allshit_breathingoutin0180_png);
		type.set ("assets/images/allshit/breathingoutin0180.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0181.png", __ASSET__assets_images_allshit_breathingoutin0181_png);
		type.set ("assets/images/allshit/breathingoutin0181.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0182.png", __ASSET__assets_images_allshit_breathingoutin0182_png);
		type.set ("assets/images/allshit/breathingoutin0182.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0183.png", __ASSET__assets_images_allshit_breathingoutin0183_png);
		type.set ("assets/images/allshit/breathingoutin0183.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0184.png", __ASSET__assets_images_allshit_breathingoutin0184_png);
		type.set ("assets/images/allshit/breathingoutin0184.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0185.png", __ASSET__assets_images_allshit_breathingoutin0185_png);
		type.set ("assets/images/allshit/breathingoutin0185.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0186.png", __ASSET__assets_images_allshit_breathingoutin0186_png);
		type.set ("assets/images/allshit/breathingoutin0186.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0187.png", __ASSET__assets_images_allshit_breathingoutin0187_png);
		type.set ("assets/images/allshit/breathingoutin0187.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0188.png", __ASSET__assets_images_allshit_breathingoutin0188_png);
		type.set ("assets/images/allshit/breathingoutin0188.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0189.png", __ASSET__assets_images_allshit_breathingoutin0189_png);
		type.set ("assets/images/allshit/breathingoutin0189.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0190.png", __ASSET__assets_images_allshit_breathingoutin0190_png);
		type.set ("assets/images/allshit/breathingoutin0190.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0191.png", __ASSET__assets_images_allshit_breathingoutin0191_png);
		type.set ("assets/images/allshit/breathingoutin0191.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0192.png", __ASSET__assets_images_allshit_breathingoutin0192_png);
		type.set ("assets/images/allshit/breathingoutin0192.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0193.png", __ASSET__assets_images_allshit_breathingoutin0193_png);
		type.set ("assets/images/allshit/breathingoutin0193.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0194.png", __ASSET__assets_images_allshit_breathingoutin0194_png);
		type.set ("assets/images/allshit/breathingoutin0194.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0195.png", __ASSET__assets_images_allshit_breathingoutin0195_png);
		type.set ("assets/images/allshit/breathingoutin0195.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0196.png", __ASSET__assets_images_allshit_breathingoutin0196_png);
		type.set ("assets/images/allshit/breathingoutin0196.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0197.png", __ASSET__assets_images_allshit_breathingoutin0197_png);
		type.set ("assets/images/allshit/breathingoutin0197.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0198.png", __ASSET__assets_images_allshit_breathingoutin0198_png);
		type.set ("assets/images/allshit/breathingoutin0198.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0199.png", __ASSET__assets_images_allshit_breathingoutin0199_png);
		type.set ("assets/images/allshit/breathingoutin0199.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0200.png", __ASSET__assets_images_allshit_breathingoutin0200_png);
		type.set ("assets/images/allshit/breathingoutin0200.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0201.png", __ASSET__assets_images_allshit_breathingoutin0201_png);
		type.set ("assets/images/allshit/breathingoutin0201.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0202.png", __ASSET__assets_images_allshit_breathingoutin0202_png);
		type.set ("assets/images/allshit/breathingoutin0202.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0203.png", __ASSET__assets_images_allshit_breathingoutin0203_png);
		type.set ("assets/images/allshit/breathingoutin0203.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0204.png", __ASSET__assets_images_allshit_breathingoutin0204_png);
		type.set ("assets/images/allshit/breathingoutin0204.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0205.png", __ASSET__assets_images_allshit_breathingoutin0205_png);
		type.set ("assets/images/allshit/breathingoutin0205.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0206.png", __ASSET__assets_images_allshit_breathingoutin0206_png);
		type.set ("assets/images/allshit/breathingoutin0206.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0207.png", __ASSET__assets_images_allshit_breathingoutin0207_png);
		type.set ("assets/images/allshit/breathingoutin0207.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0208.png", __ASSET__assets_images_allshit_breathingoutin0208_png);
		type.set ("assets/images/allshit/breathingoutin0208.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0209.png", __ASSET__assets_images_allshit_breathingoutin0209_png);
		type.set ("assets/images/allshit/breathingoutin0209.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0210.png", __ASSET__assets_images_allshit_breathingoutin0210_png);
		type.set ("assets/images/allshit/breathingoutin0210.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0211.png", __ASSET__assets_images_allshit_breathingoutin0211_png);
		type.set ("assets/images/allshit/breathingoutin0211.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0212.png", __ASSET__assets_images_allshit_breathingoutin0212_png);
		type.set ("assets/images/allshit/breathingoutin0212.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0213.png", __ASSET__assets_images_allshit_breathingoutin0213_png);
		type.set ("assets/images/allshit/breathingoutin0213.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0214.png", __ASSET__assets_images_allshit_breathingoutin0214_png);
		type.set ("assets/images/allshit/breathingoutin0214.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0215.png", __ASSET__assets_images_allshit_breathingoutin0215_png);
		type.set ("assets/images/allshit/breathingoutin0215.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0216.png", __ASSET__assets_images_allshit_breathingoutin0216_png);
		type.set ("assets/images/allshit/breathingoutin0216.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0217.png", __ASSET__assets_images_allshit_breathingoutin0217_png);
		type.set ("assets/images/allshit/breathingoutin0217.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0218.png", __ASSET__assets_images_allshit_breathingoutin0218_png);
		type.set ("assets/images/allshit/breathingoutin0218.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0219.png", __ASSET__assets_images_allshit_breathingoutin0219_png);
		type.set ("assets/images/allshit/breathingoutin0219.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0220.png", __ASSET__assets_images_allshit_breathingoutin0220_png);
		type.set ("assets/images/allshit/breathingoutin0220.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0221.png", __ASSET__assets_images_allshit_breathingoutin0221_png);
		type.set ("assets/images/allshit/breathingoutin0221.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0222.png", __ASSET__assets_images_allshit_breathingoutin0222_png);
		type.set ("assets/images/allshit/breathingoutin0222.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0223.png", __ASSET__assets_images_allshit_breathingoutin0223_png);
		type.set ("assets/images/allshit/breathingoutin0223.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0224.png", __ASSET__assets_images_allshit_breathingoutin0224_png);
		type.set ("assets/images/allshit/breathingoutin0224.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0225.png", __ASSET__assets_images_allshit_breathingoutin0225_png);
		type.set ("assets/images/allshit/breathingoutin0225.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0226.png", __ASSET__assets_images_allshit_breathingoutin0226_png);
		type.set ("assets/images/allshit/breathingoutin0226.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0227.png", __ASSET__assets_images_allshit_breathingoutin0227_png);
		type.set ("assets/images/allshit/breathingoutin0227.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0228.png", __ASSET__assets_images_allshit_breathingoutin0228_png);
		type.set ("assets/images/allshit/breathingoutin0228.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0229.png", __ASSET__assets_images_allshit_breathingoutin0229_png);
		type.set ("assets/images/allshit/breathingoutin0229.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0230.png", __ASSET__assets_images_allshit_breathingoutin0230_png);
		type.set ("assets/images/allshit/breathingoutin0230.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0231.png", __ASSET__assets_images_allshit_breathingoutin0231_png);
		type.set ("assets/images/allshit/breathingoutin0231.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0232.png", __ASSET__assets_images_allshit_breathingoutin0232_png);
		type.set ("assets/images/allshit/breathingoutin0232.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0233.png", __ASSET__assets_images_allshit_breathingoutin0233_png);
		type.set ("assets/images/allshit/breathingoutin0233.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0234.png", __ASSET__assets_images_allshit_breathingoutin0234_png);
		type.set ("assets/images/allshit/breathingoutin0234.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0235.png", __ASSET__assets_images_allshit_breathingoutin0235_png);
		type.set ("assets/images/allshit/breathingoutin0235.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0236.png", __ASSET__assets_images_allshit_breathingoutin0236_png);
		type.set ("assets/images/allshit/breathingoutin0236.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0237.png", __ASSET__assets_images_allshit_breathingoutin0237_png);
		type.set ("assets/images/allshit/breathingoutin0237.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0238.png", __ASSET__assets_images_allshit_breathingoutin0238_png);
		type.set ("assets/images/allshit/breathingoutin0238.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0239.png", __ASSET__assets_images_allshit_breathingoutin0239_png);
		type.set ("assets/images/allshit/breathingoutin0239.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0240.png", __ASSET__assets_images_allshit_breathingoutin0240_png);
		type.set ("assets/images/allshit/breathingoutin0240.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0241.png", __ASSET__assets_images_allshit_breathingoutin0241_png);
		type.set ("assets/images/allshit/breathingoutin0241.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0242.png", __ASSET__assets_images_allshit_breathingoutin0242_png);
		type.set ("assets/images/allshit/breathingoutin0242.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0243.png", __ASSET__assets_images_allshit_breathingoutin0243_png);
		type.set ("assets/images/allshit/breathingoutin0243.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0244.png", __ASSET__assets_images_allshit_breathingoutin0244_png);
		type.set ("assets/images/allshit/breathingoutin0244.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0245.png", __ASSET__assets_images_allshit_breathingoutin0245_png);
		type.set ("assets/images/allshit/breathingoutin0245.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0246.png", __ASSET__assets_images_allshit_breathingoutin0246_png);
		type.set ("assets/images/allshit/breathingoutin0246.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0247.png", __ASSET__assets_images_allshit_breathingoutin0247_png);
		type.set ("assets/images/allshit/breathingoutin0247.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0248.png", __ASSET__assets_images_allshit_breathingoutin0248_png);
		type.set ("assets/images/allshit/breathingoutin0248.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0249.png", __ASSET__assets_images_allshit_breathingoutin0249_png);
		type.set ("assets/images/allshit/breathingoutin0249.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0250.png", __ASSET__assets_images_allshit_breathingoutin0250_png);
		type.set ("assets/images/allshit/breathingoutin0250.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0251.png", __ASSET__assets_images_allshit_breathingoutin0251_png);
		type.set ("assets/images/allshit/breathingoutin0251.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0252.png", __ASSET__assets_images_allshit_breathingoutin0252_png);
		type.set ("assets/images/allshit/breathingoutin0252.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0253.png", __ASSET__assets_images_allshit_breathingoutin0253_png);
		type.set ("assets/images/allshit/breathingoutin0253.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0254.png", __ASSET__assets_images_allshit_breathingoutin0254_png);
		type.set ("assets/images/allshit/breathingoutin0254.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0255.png", __ASSET__assets_images_allshit_breathingoutin0255_png);
		type.set ("assets/images/allshit/breathingoutin0255.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0256.png", __ASSET__assets_images_allshit_breathingoutin0256_png);
		type.set ("assets/images/allshit/breathingoutin0256.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0257.png", __ASSET__assets_images_allshit_breathingoutin0257_png);
		type.set ("assets/images/allshit/breathingoutin0257.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0258.png", __ASSET__assets_images_allshit_breathingoutin0258_png);
		type.set ("assets/images/allshit/breathingoutin0258.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0259.png", __ASSET__assets_images_allshit_breathingoutin0259_png);
		type.set ("assets/images/allshit/breathingoutin0259.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0260.png", __ASSET__assets_images_allshit_breathingoutin0260_png);
		type.set ("assets/images/allshit/breathingoutin0260.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0261.png", __ASSET__assets_images_allshit_breathingoutin0261_png);
		type.set ("assets/images/allshit/breathingoutin0261.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0262.png", __ASSET__assets_images_allshit_breathingoutin0262_png);
		type.set ("assets/images/allshit/breathingoutin0262.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0263.png", __ASSET__assets_images_allshit_breathingoutin0263_png);
		type.set ("assets/images/allshit/breathingoutin0263.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0264.png", __ASSET__assets_images_allshit_breathingoutin0264_png);
		type.set ("assets/images/allshit/breathingoutin0264.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0265.png", __ASSET__assets_images_allshit_breathingoutin0265_png);
		type.set ("assets/images/allshit/breathingoutin0265.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0266.png", __ASSET__assets_images_allshit_breathingoutin0266_png);
		type.set ("assets/images/allshit/breathingoutin0266.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0267.png", __ASSET__assets_images_allshit_breathingoutin0267_png);
		type.set ("assets/images/allshit/breathingoutin0267.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0268.png", __ASSET__assets_images_allshit_breathingoutin0268_png);
		type.set ("assets/images/allshit/breathingoutin0268.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0269.png", __ASSET__assets_images_allshit_breathingoutin0269_png);
		type.set ("assets/images/allshit/breathingoutin0269.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0270.png", __ASSET__assets_images_allshit_breathingoutin0270_png);
		type.set ("assets/images/allshit/breathingoutin0270.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0271.png", __ASSET__assets_images_allshit_breathingoutin0271_png);
		type.set ("assets/images/allshit/breathingoutin0271.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0272.png", __ASSET__assets_images_allshit_breathingoutin0272_png);
		type.set ("assets/images/allshit/breathingoutin0272.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0273.png", __ASSET__assets_images_allshit_breathingoutin0273_png);
		type.set ("assets/images/allshit/breathingoutin0273.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0274.png", __ASSET__assets_images_allshit_breathingoutin0274_png);
		type.set ("assets/images/allshit/breathingoutin0274.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0275.png", __ASSET__assets_images_allshit_breathingoutin0275_png);
		type.set ("assets/images/allshit/breathingoutin0275.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0276.png", __ASSET__assets_images_allshit_breathingoutin0276_png);
		type.set ("assets/images/allshit/breathingoutin0276.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0277.png", __ASSET__assets_images_allshit_breathingoutin0277_png);
		type.set ("assets/images/allshit/breathingoutin0277.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0278.png", __ASSET__assets_images_allshit_breathingoutin0278_png);
		type.set ("assets/images/allshit/breathingoutin0278.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0279.png", __ASSET__assets_images_allshit_breathingoutin0279_png);
		type.set ("assets/images/allshit/breathingoutin0279.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0280.png", __ASSET__assets_images_allshit_breathingoutin0280_png);
		type.set ("assets/images/allshit/breathingoutin0280.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0281.png", __ASSET__assets_images_allshit_breathingoutin0281_png);
		type.set ("assets/images/allshit/breathingoutin0281.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0282.png", __ASSET__assets_images_allshit_breathingoutin0282_png);
		type.set ("assets/images/allshit/breathingoutin0282.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0283.png", __ASSET__assets_images_allshit_breathingoutin0283_png);
		type.set ("assets/images/allshit/breathingoutin0283.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0284.png", __ASSET__assets_images_allshit_breathingoutin0284_png);
		type.set ("assets/images/allshit/breathingoutin0284.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0285.png", __ASSET__assets_images_allshit_breathingoutin0285_png);
		type.set ("assets/images/allshit/breathingoutin0285.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0286.png", __ASSET__assets_images_allshit_breathingoutin0286_png);
		type.set ("assets/images/allshit/breathingoutin0286.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0287.png", __ASSET__assets_images_allshit_breathingoutin0287_png);
		type.set ("assets/images/allshit/breathingoutin0287.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0288.png", __ASSET__assets_images_allshit_breathingoutin0288_png);
		type.set ("assets/images/allshit/breathingoutin0288.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0289.png", __ASSET__assets_images_allshit_breathingoutin0289_png);
		type.set ("assets/images/allshit/breathingoutin0289.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0290.png", __ASSET__assets_images_allshit_breathingoutin0290_png);
		type.set ("assets/images/allshit/breathingoutin0290.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0291.png", __ASSET__assets_images_allshit_breathingoutin0291_png);
		type.set ("assets/images/allshit/breathingoutin0291.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0292.png", __ASSET__assets_images_allshit_breathingoutin0292_png);
		type.set ("assets/images/allshit/breathingoutin0292.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0293.png", __ASSET__assets_images_allshit_breathingoutin0293_png);
		type.set ("assets/images/allshit/breathingoutin0293.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0294.png", __ASSET__assets_images_allshit_breathingoutin0294_png);
		type.set ("assets/images/allshit/breathingoutin0294.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0295.png", __ASSET__assets_images_allshit_breathingoutin0295_png);
		type.set ("assets/images/allshit/breathingoutin0295.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0296.png", __ASSET__assets_images_allshit_breathingoutin0296_png);
		type.set ("assets/images/allshit/breathingoutin0296.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0297.png", __ASSET__assets_images_allshit_breathingoutin0297_png);
		type.set ("assets/images/allshit/breathingoutin0297.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0298.png", __ASSET__assets_images_allshit_breathingoutin0298_png);
		type.set ("assets/images/allshit/breathingoutin0298.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0299.png", __ASSET__assets_images_allshit_breathingoutin0299_png);
		type.set ("assets/images/allshit/breathingoutin0299.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0300.png", __ASSET__assets_images_allshit_breathingoutin0300_png);
		type.set ("assets/images/allshit/breathingoutin0300.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0301.png", __ASSET__assets_images_allshit_breathingoutin0301_png);
		type.set ("assets/images/allshit/breathingoutin0301.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0302.png", __ASSET__assets_images_allshit_breathingoutin0302_png);
		type.set ("assets/images/allshit/breathingoutin0302.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0303.png", __ASSET__assets_images_allshit_breathingoutin0303_png);
		type.set ("assets/images/allshit/breathingoutin0303.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0304.png", __ASSET__assets_images_allshit_breathingoutin0304_png);
		type.set ("assets/images/allshit/breathingoutin0304.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0305.png", __ASSET__assets_images_allshit_breathingoutin0305_png);
		type.set ("assets/images/allshit/breathingoutin0305.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0306.png", __ASSET__assets_images_allshit_breathingoutin0306_png);
		type.set ("assets/images/allshit/breathingoutin0306.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0307.png", __ASSET__assets_images_allshit_breathingoutin0307_png);
		type.set ("assets/images/allshit/breathingoutin0307.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0308.png", __ASSET__assets_images_allshit_breathingoutin0308_png);
		type.set ("assets/images/allshit/breathingoutin0308.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0309.png", __ASSET__assets_images_allshit_breathingoutin0309_png);
		type.set ("assets/images/allshit/breathingoutin0309.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0310.png", __ASSET__assets_images_allshit_breathingoutin0310_png);
		type.set ("assets/images/allshit/breathingoutin0310.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0311.png", __ASSET__assets_images_allshit_breathingoutin0311_png);
		type.set ("assets/images/allshit/breathingoutin0311.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0312.png", __ASSET__assets_images_allshit_breathingoutin0312_png);
		type.set ("assets/images/allshit/breathingoutin0312.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0313.png", __ASSET__assets_images_allshit_breathingoutin0313_png);
		type.set ("assets/images/allshit/breathingoutin0313.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0314.png", __ASSET__assets_images_allshit_breathingoutin0314_png);
		type.set ("assets/images/allshit/breathingoutin0314.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0315.png", __ASSET__assets_images_allshit_breathingoutin0315_png);
		type.set ("assets/images/allshit/breathingoutin0315.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0316.png", __ASSET__assets_images_allshit_breathingoutin0316_png);
		type.set ("assets/images/allshit/breathingoutin0316.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0317.png", __ASSET__assets_images_allshit_breathingoutin0317_png);
		type.set ("assets/images/allshit/breathingoutin0317.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0318.png", __ASSET__assets_images_allshit_breathingoutin0318_png);
		type.set ("assets/images/allshit/breathingoutin0318.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0319.png", __ASSET__assets_images_allshit_breathingoutin0319_png);
		type.set ("assets/images/allshit/breathingoutin0319.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0320.png", __ASSET__assets_images_allshit_breathingoutin0320_png);
		type.set ("assets/images/allshit/breathingoutin0320.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0321.png", __ASSET__assets_images_allshit_breathingoutin0321_png);
		type.set ("assets/images/allshit/breathingoutin0321.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0322.png", __ASSET__assets_images_allshit_breathingoutin0322_png);
		type.set ("assets/images/allshit/breathingoutin0322.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0323.png", __ASSET__assets_images_allshit_breathingoutin0323_png);
		type.set ("assets/images/allshit/breathingoutin0323.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0324.png", __ASSET__assets_images_allshit_breathingoutin0324_png);
		type.set ("assets/images/allshit/breathingoutin0324.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0325.png", __ASSET__assets_images_allshit_breathingoutin0325_png);
		type.set ("assets/images/allshit/breathingoutin0325.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0326.png", __ASSET__assets_images_allshit_breathingoutin0326_png);
		type.set ("assets/images/allshit/breathingoutin0326.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0327.png", __ASSET__assets_images_allshit_breathingoutin0327_png);
		type.set ("assets/images/allshit/breathingoutin0327.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0328.png", __ASSET__assets_images_allshit_breathingoutin0328_png);
		type.set ("assets/images/allshit/breathingoutin0328.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0329.png", __ASSET__assets_images_allshit_breathingoutin0329_png);
		type.set ("assets/images/allshit/breathingoutin0329.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0330.png", __ASSET__assets_images_allshit_breathingoutin0330_png);
		type.set ("assets/images/allshit/breathingoutin0330.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0331.png", __ASSET__assets_images_allshit_breathingoutin0331_png);
		type.set ("assets/images/allshit/breathingoutin0331.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0332.png", __ASSET__assets_images_allshit_breathingoutin0332_png);
		type.set ("assets/images/allshit/breathingoutin0332.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0333.png", __ASSET__assets_images_allshit_breathingoutin0333_png);
		type.set ("assets/images/allshit/breathingoutin0333.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0334.png", __ASSET__assets_images_allshit_breathingoutin0334_png);
		type.set ("assets/images/allshit/breathingoutin0334.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0335.png", __ASSET__assets_images_allshit_breathingoutin0335_png);
		type.set ("assets/images/allshit/breathingoutin0335.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0336.png", __ASSET__assets_images_allshit_breathingoutin0336_png);
		type.set ("assets/images/allshit/breathingoutin0336.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0337.png", __ASSET__assets_images_allshit_breathingoutin0337_png);
		type.set ("assets/images/allshit/breathingoutin0337.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0338.png", __ASSET__assets_images_allshit_breathingoutin0338_png);
		type.set ("assets/images/allshit/breathingoutin0338.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0339.png", __ASSET__assets_images_allshit_breathingoutin0339_png);
		type.set ("assets/images/allshit/breathingoutin0339.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0340.png", __ASSET__assets_images_allshit_breathingoutin0340_png);
		type.set ("assets/images/allshit/breathingoutin0340.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0341.png", __ASSET__assets_images_allshit_breathingoutin0341_png);
		type.set ("assets/images/allshit/breathingoutin0341.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0342.png", __ASSET__assets_images_allshit_breathingoutin0342_png);
		type.set ("assets/images/allshit/breathingoutin0342.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0343.png", __ASSET__assets_images_allshit_breathingoutin0343_png);
		type.set ("assets/images/allshit/breathingoutin0343.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0344.png", __ASSET__assets_images_allshit_breathingoutin0344_png);
		type.set ("assets/images/allshit/breathingoutin0344.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0345.png", __ASSET__assets_images_allshit_breathingoutin0345_png);
		type.set ("assets/images/allshit/breathingoutin0345.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0346.png", __ASSET__assets_images_allshit_breathingoutin0346_png);
		type.set ("assets/images/allshit/breathingoutin0346.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0347.png", __ASSET__assets_images_allshit_breathingoutin0347_png);
		type.set ("assets/images/allshit/breathingoutin0347.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0348.png", __ASSET__assets_images_allshit_breathingoutin0348_png);
		type.set ("assets/images/allshit/breathingoutin0348.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0349.png", __ASSET__assets_images_allshit_breathingoutin0349_png);
		type.set ("assets/images/allshit/breathingoutin0349.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0350.png", __ASSET__assets_images_allshit_breathingoutin0350_png);
		type.set ("assets/images/allshit/breathingoutin0350.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0351.png", __ASSET__assets_images_allshit_breathingoutin0351_png);
		type.set ("assets/images/allshit/breathingoutin0351.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0352.png", __ASSET__assets_images_allshit_breathingoutin0352_png);
		type.set ("assets/images/allshit/breathingoutin0352.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0353.png", __ASSET__assets_images_allshit_breathingoutin0353_png);
		type.set ("assets/images/allshit/breathingoutin0353.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0354.png", __ASSET__assets_images_allshit_breathingoutin0354_png);
		type.set ("assets/images/allshit/breathingoutin0354.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0355.png", __ASSET__assets_images_allshit_breathingoutin0355_png);
		type.set ("assets/images/allshit/breathingoutin0355.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0356.png", __ASSET__assets_images_allshit_breathingoutin0356_png);
		type.set ("assets/images/allshit/breathingoutin0356.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0357.png", __ASSET__assets_images_allshit_breathingoutin0357_png);
		type.set ("assets/images/allshit/breathingoutin0357.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0358.png", __ASSET__assets_images_allshit_breathingoutin0358_png);
		type.set ("assets/images/allshit/breathingoutin0358.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0359.png", __ASSET__assets_images_allshit_breathingoutin0359_png);
		type.set ("assets/images/allshit/breathingoutin0359.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0360.png", __ASSET__assets_images_allshit_breathingoutin0360_png);
		type.set ("assets/images/allshit/breathingoutin0360.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0361.png", __ASSET__assets_images_allshit_breathingoutin0361_png);
		type.set ("assets/images/allshit/breathingoutin0361.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0362.png", __ASSET__assets_images_allshit_breathingoutin0362_png);
		type.set ("assets/images/allshit/breathingoutin0362.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0363.png", __ASSET__assets_images_allshit_breathingoutin0363_png);
		type.set ("assets/images/allshit/breathingoutin0363.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0364.png", __ASSET__assets_images_allshit_breathingoutin0364_png);
		type.set ("assets/images/allshit/breathingoutin0364.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0365.png", __ASSET__assets_images_allshit_breathingoutin0365_png);
		type.set ("assets/images/allshit/breathingoutin0365.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0366.png", __ASSET__assets_images_allshit_breathingoutin0366_png);
		type.set ("assets/images/allshit/breathingoutin0366.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0367.png", __ASSET__assets_images_allshit_breathingoutin0367_png);
		type.set ("assets/images/allshit/breathingoutin0367.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0368.png", __ASSET__assets_images_allshit_breathingoutin0368_png);
		type.set ("assets/images/allshit/breathingoutin0368.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0369.png", __ASSET__assets_images_allshit_breathingoutin0369_png);
		type.set ("assets/images/allshit/breathingoutin0369.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0370.png", __ASSET__assets_images_allshit_breathingoutin0370_png);
		type.set ("assets/images/allshit/breathingoutin0370.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0371.png", __ASSET__assets_images_allshit_breathingoutin0371_png);
		type.set ("assets/images/allshit/breathingoutin0371.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0372.png", __ASSET__assets_images_allshit_breathingoutin0372_png);
		type.set ("assets/images/allshit/breathingoutin0372.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0373.png", __ASSET__assets_images_allshit_breathingoutin0373_png);
		type.set ("assets/images/allshit/breathingoutin0373.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0374.png", __ASSET__assets_images_allshit_breathingoutin0374_png);
		type.set ("assets/images/allshit/breathingoutin0374.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0375.png", __ASSET__assets_images_allshit_breathingoutin0375_png);
		type.set ("assets/images/allshit/breathingoutin0375.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0376.png", __ASSET__assets_images_allshit_breathingoutin0376_png);
		type.set ("assets/images/allshit/breathingoutin0376.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0377.png", __ASSET__assets_images_allshit_breathingoutin0377_png);
		type.set ("assets/images/allshit/breathingoutin0377.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0378.png", __ASSET__assets_images_allshit_breathingoutin0378_png);
		type.set ("assets/images/allshit/breathingoutin0378.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0379.png", __ASSET__assets_images_allshit_breathingoutin0379_png);
		type.set ("assets/images/allshit/breathingoutin0379.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0380.png", __ASSET__assets_images_allshit_breathingoutin0380_png);
		type.set ("assets/images/allshit/breathingoutin0380.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0381.png", __ASSET__assets_images_allshit_breathingoutin0381_png);
		type.set ("assets/images/allshit/breathingoutin0381.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0382.png", __ASSET__assets_images_allshit_breathingoutin0382_png);
		type.set ("assets/images/allshit/breathingoutin0382.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0383.png", __ASSET__assets_images_allshit_breathingoutin0383_png);
		type.set ("assets/images/allshit/breathingoutin0383.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0384.png", __ASSET__assets_images_allshit_breathingoutin0384_png);
		type.set ("assets/images/allshit/breathingoutin0384.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0385.png", __ASSET__assets_images_allshit_breathingoutin0385_png);
		type.set ("assets/images/allshit/breathingoutin0385.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0386.png", __ASSET__assets_images_allshit_breathingoutin0386_png);
		type.set ("assets/images/allshit/breathingoutin0386.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0387.png", __ASSET__assets_images_allshit_breathingoutin0387_png);
		type.set ("assets/images/allshit/breathingoutin0387.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0388.png", __ASSET__assets_images_allshit_breathingoutin0388_png);
		type.set ("assets/images/allshit/breathingoutin0388.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0389.png", __ASSET__assets_images_allshit_breathingoutin0389_png);
		type.set ("assets/images/allshit/breathingoutin0389.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0390.png", __ASSET__assets_images_allshit_breathingoutin0390_png);
		type.set ("assets/images/allshit/breathingoutin0390.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0391.png", __ASSET__assets_images_allshit_breathingoutin0391_png);
		type.set ("assets/images/allshit/breathingoutin0391.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0392.png", __ASSET__assets_images_allshit_breathingoutin0392_png);
		type.set ("assets/images/allshit/breathingoutin0392.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0393.png", __ASSET__assets_images_allshit_breathingoutin0393_png);
		type.set ("assets/images/allshit/breathingoutin0393.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0394.png", __ASSET__assets_images_allshit_breathingoutin0394_png);
		type.set ("assets/images/allshit/breathingoutin0394.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0395.png", __ASSET__assets_images_allshit_breathingoutin0395_png);
		type.set ("assets/images/allshit/breathingoutin0395.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0396.png", __ASSET__assets_images_allshit_breathingoutin0396_png);
		type.set ("assets/images/allshit/breathingoutin0396.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0397.png", __ASSET__assets_images_allshit_breathingoutin0397_png);
		type.set ("assets/images/allshit/breathingoutin0397.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0398.png", __ASSET__assets_images_allshit_breathingoutin0398_png);
		type.set ("assets/images/allshit/breathingoutin0398.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0399.png", __ASSET__assets_images_allshit_breathingoutin0399_png);
		type.set ("assets/images/allshit/breathingoutin0399.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0400.png", __ASSET__assets_images_allshit_breathingoutin0400_png);
		type.set ("assets/images/allshit/breathingoutin0400.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0401.png", __ASSET__assets_images_allshit_breathingoutin0401_png);
		type.set ("assets/images/allshit/breathingoutin0401.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0402.png", __ASSET__assets_images_allshit_breathingoutin0402_png);
		type.set ("assets/images/allshit/breathingoutin0402.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0403.png", __ASSET__assets_images_allshit_breathingoutin0403_png);
		type.set ("assets/images/allshit/breathingoutin0403.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0404.png", __ASSET__assets_images_allshit_breathingoutin0404_png);
		type.set ("assets/images/allshit/breathingoutin0404.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0405.png", __ASSET__assets_images_allshit_breathingoutin0405_png);
		type.set ("assets/images/allshit/breathingoutin0405.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0406.png", __ASSET__assets_images_allshit_breathingoutin0406_png);
		type.set ("assets/images/allshit/breathingoutin0406.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0407.png", __ASSET__assets_images_allshit_breathingoutin0407_png);
		type.set ("assets/images/allshit/breathingoutin0407.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0408.png", __ASSET__assets_images_allshit_breathingoutin0408_png);
		type.set ("assets/images/allshit/breathingoutin0408.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0409.png", __ASSET__assets_images_allshit_breathingoutin0409_png);
		type.set ("assets/images/allshit/breathingoutin0409.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0410.png", __ASSET__assets_images_allshit_breathingoutin0410_png);
		type.set ("assets/images/allshit/breathingoutin0410.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0411.png", __ASSET__assets_images_allshit_breathingoutin0411_png);
		type.set ("assets/images/allshit/breathingoutin0411.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0412.png", __ASSET__assets_images_allshit_breathingoutin0412_png);
		type.set ("assets/images/allshit/breathingoutin0412.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0413.png", __ASSET__assets_images_allshit_breathingoutin0413_png);
		type.set ("assets/images/allshit/breathingoutin0413.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0414.png", __ASSET__assets_images_allshit_breathingoutin0414_png);
		type.set ("assets/images/allshit/breathingoutin0414.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0415.png", __ASSET__assets_images_allshit_breathingoutin0415_png);
		type.set ("assets/images/allshit/breathingoutin0415.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0416.png", __ASSET__assets_images_allshit_breathingoutin0416_png);
		type.set ("assets/images/allshit/breathingoutin0416.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0417.png", __ASSET__assets_images_allshit_breathingoutin0417_png);
		type.set ("assets/images/allshit/breathingoutin0417.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0418.png", __ASSET__assets_images_allshit_breathingoutin0418_png);
		type.set ("assets/images/allshit/breathingoutin0418.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0419.png", __ASSET__assets_images_allshit_breathingoutin0419_png);
		type.set ("assets/images/allshit/breathingoutin0419.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0420.png", __ASSET__assets_images_allshit_breathingoutin0420_png);
		type.set ("assets/images/allshit/breathingoutin0420.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0421.png", __ASSET__assets_images_allshit_breathingoutin0421_png);
		type.set ("assets/images/allshit/breathingoutin0421.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0422.png", __ASSET__assets_images_allshit_breathingoutin0422_png);
		type.set ("assets/images/allshit/breathingoutin0422.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0423.png", __ASSET__assets_images_allshit_breathingoutin0423_png);
		type.set ("assets/images/allshit/breathingoutin0423.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0424.png", __ASSET__assets_images_allshit_breathingoutin0424_png);
		type.set ("assets/images/allshit/breathingoutin0424.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0425.png", __ASSET__assets_images_allshit_breathingoutin0425_png);
		type.set ("assets/images/allshit/breathingoutin0425.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0426.png", __ASSET__assets_images_allshit_breathingoutin0426_png);
		type.set ("assets/images/allshit/breathingoutin0426.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0427.png", __ASSET__assets_images_allshit_breathingoutin0427_png);
		type.set ("assets/images/allshit/breathingoutin0427.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0428.png", __ASSET__assets_images_allshit_breathingoutin0428_png);
		type.set ("assets/images/allshit/breathingoutin0428.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0429.png", __ASSET__assets_images_allshit_breathingoutin0429_png);
		type.set ("assets/images/allshit/breathingoutin0429.png", AssetType.IMAGE);
		className.set ("assets/images/allshit/breathingoutin0430.png", __ASSET__assets_images_allshit_breathingoutin0430_png);
		type.set ("assets/images/allshit/breathingoutin0430.png", AssetType.IMAGE);
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		className.set ("assets/images/ninja_cam_breathing_sim.html", __ASSET__assets_images_ninja_cam_breathing_sim_html);
		type.set ("assets/images/ninja_cam_breathing_sim.html", AssetType.TEXT);
		className.set ("assets/images/ninja_cam_breathing_sim.js", __ASSET__assets_images_ninja_cam_breathing_sim_js);
		type.set ("assets/images/ninja_cam_breathing_sim.js", AssetType.TEXT);
		className.set ("assets/music/I-Am.mp3", __ASSET__assets_music_i_am_mp3);
		type.set ("assets/music/I-Am.mp3", AssetType.MUSIC);
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		className.set ("flixel/sounds/beep.mp3", __ASSET__flixel_sounds_beep_mp3);
		type.set ("flixel/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("flixel/sounds/flixel.mp3", __ASSET__flixel_sounds_flixel_mp3);
		type.set ("flixel/sounds/flixel.mp3", AssetType.MUSIC);
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/data-goes-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/allshit/breathingoutin0001.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0002.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0003.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0004.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0005.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0006.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0007.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0008.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0009.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0010.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0011.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0012.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0013.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0014.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0015.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0016.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0017.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0018.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0019.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0020.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0021.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0022.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0023.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0024.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0025.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0026.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0027.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0028.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0029.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0030.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0031.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0032.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0033.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0034.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0035.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0036.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0037.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0038.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0039.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0040.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0041.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0042.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0043.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0044.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0045.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0046.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0047.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0048.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0049.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0050.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0051.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0052.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0053.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0054.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0055.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0056.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0057.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0058.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0059.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0060.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0061.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0062.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0063.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0064.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0065.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0066.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0067.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0068.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0069.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0070.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0071.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0072.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0073.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0074.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0075.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0076.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0077.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0078.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0079.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0080.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0081.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0082.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0083.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0084.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0085.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0086.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0087.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0088.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0089.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0090.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0091.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0092.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0093.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0094.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0095.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0096.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0097.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0098.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0099.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0100.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0101.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0102.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0103.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0104.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0105.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0106.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0107.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0108.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0109.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0110.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0111.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0112.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0113.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0114.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0115.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0116.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0117.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0118.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0119.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0120.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0121.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0122.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0123.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0124.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0125.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0126.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0127.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0128.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0129.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0130.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0131.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0132.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0133.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0134.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0135.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0136.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0137.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0138.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0139.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0140.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0141.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0142.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0143.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0144.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0145.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0146.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0147.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0148.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0149.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0150.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0151.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0152.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0153.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0154.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0155.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0156.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0157.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0158.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0159.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0160.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0161.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0162.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0163.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0164.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0165.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0166.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0167.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0168.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0169.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0170.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0171.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0172.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0173.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0174.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0175.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0176.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0177.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0178.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0179.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0180.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0181.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0182.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0183.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0184.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0185.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0186.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0187.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0188.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0189.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0190.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0191.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0192.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0193.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0194.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0195.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0196.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0197.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0198.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0199.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0200.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0201.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0202.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0203.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0204.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0205.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0206.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0207.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0208.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0209.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0210.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0211.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0212.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0213.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0214.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0215.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0216.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0217.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0218.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0219.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0220.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0221.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0222.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0223.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0224.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0225.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0226.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0227.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0228.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0229.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0230.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0231.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0232.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0233.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0234.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0235.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0236.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0237.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0238.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0239.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0240.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0241.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0242.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0243.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0244.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0245.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0246.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0247.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0248.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0249.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0250.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0251.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0252.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0253.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0254.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0255.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0256.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0257.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0258.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0259.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0260.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0261.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0262.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0263.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0264.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0265.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0266.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0267.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0268.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0269.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0270.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0271.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0272.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0273.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0274.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0275.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0276.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0277.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0278.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0279.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0280.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0281.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0282.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0283.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0284.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0285.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0286.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0287.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0288.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0289.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0290.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0291.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0292.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0293.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0294.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0295.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0296.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0297.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0298.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0299.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0300.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0301.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0302.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0303.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0304.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0305.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0306.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0307.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0308.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0309.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0310.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0311.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0312.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0313.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0314.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0315.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0316.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0317.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0318.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0319.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0320.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0321.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0322.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0323.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0324.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0325.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0326.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0327.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0328.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0329.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0330.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0331.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0332.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0333.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0334.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0335.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0336.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0337.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0338.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0339.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0340.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0341.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0342.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0343.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0344.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0345.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0346.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0347.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0348.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0349.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0350.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0351.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0352.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0353.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0354.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0355.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0356.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0357.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0358.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0359.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0360.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0361.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0362.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0363.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0364.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0365.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0366.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0367.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0368.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0369.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0370.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0371.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0372.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0373.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0374.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0375.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0376.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0377.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0378.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0379.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0380.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0381.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0382.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0383.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0384.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0385.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0386.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0387.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0388.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0389.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0390.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0391.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0392.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0393.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0394.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0395.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0396.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0397.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0398.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0399.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0400.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0401.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0402.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0403.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0404.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0405.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0406.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0407.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0408.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0409.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0410.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0411.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0412.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0413.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0414.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0415.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0416.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0417.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0418.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0419.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0420.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0421.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0422.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0423.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0424.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0425.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0426.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0427.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0428.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0429.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/allshit/breathingoutin0430.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/images-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/ninja_cam_breathing_sim.html";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/ninja_cam_breathing_sim.js";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/music/I-Am.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/music/music-goes-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/sounds/sounds-go-here.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "flixel/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "flixel/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__flixel_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/fonts/monsterrat.ttf";
		className.set (id, __ASSET__flixel_fonts_monsterrat_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/images/ui/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/images/logo/default.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/data/data-goes-here.txt", __ASSET__assets_data_data_goes_here_txt);
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/images/allshit/breathingoutin0001.png", __ASSET__assets_images_allshit_breathingoutin0001_png);
		type.set ("assets/images/allshit/breathingoutin0001.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0002.png", __ASSET__assets_images_allshit_breathingoutin0002_png);
		type.set ("assets/images/allshit/breathingoutin0002.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0003.png", __ASSET__assets_images_allshit_breathingoutin0003_png);
		type.set ("assets/images/allshit/breathingoutin0003.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0004.png", __ASSET__assets_images_allshit_breathingoutin0004_png);
		type.set ("assets/images/allshit/breathingoutin0004.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0005.png", __ASSET__assets_images_allshit_breathingoutin0005_png);
		type.set ("assets/images/allshit/breathingoutin0005.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0006.png", __ASSET__assets_images_allshit_breathingoutin0006_png);
		type.set ("assets/images/allshit/breathingoutin0006.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0007.png", __ASSET__assets_images_allshit_breathingoutin0007_png);
		type.set ("assets/images/allshit/breathingoutin0007.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0008.png", __ASSET__assets_images_allshit_breathingoutin0008_png);
		type.set ("assets/images/allshit/breathingoutin0008.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0009.png", __ASSET__assets_images_allshit_breathingoutin0009_png);
		type.set ("assets/images/allshit/breathingoutin0009.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0010.png", __ASSET__assets_images_allshit_breathingoutin0010_png);
		type.set ("assets/images/allshit/breathingoutin0010.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0011.png", __ASSET__assets_images_allshit_breathingoutin0011_png);
		type.set ("assets/images/allshit/breathingoutin0011.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0012.png", __ASSET__assets_images_allshit_breathingoutin0012_png);
		type.set ("assets/images/allshit/breathingoutin0012.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0013.png", __ASSET__assets_images_allshit_breathingoutin0013_png);
		type.set ("assets/images/allshit/breathingoutin0013.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0014.png", __ASSET__assets_images_allshit_breathingoutin0014_png);
		type.set ("assets/images/allshit/breathingoutin0014.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0015.png", __ASSET__assets_images_allshit_breathingoutin0015_png);
		type.set ("assets/images/allshit/breathingoutin0015.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0016.png", __ASSET__assets_images_allshit_breathingoutin0016_png);
		type.set ("assets/images/allshit/breathingoutin0016.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0017.png", __ASSET__assets_images_allshit_breathingoutin0017_png);
		type.set ("assets/images/allshit/breathingoutin0017.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0018.png", __ASSET__assets_images_allshit_breathingoutin0018_png);
		type.set ("assets/images/allshit/breathingoutin0018.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0019.png", __ASSET__assets_images_allshit_breathingoutin0019_png);
		type.set ("assets/images/allshit/breathingoutin0019.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0020.png", __ASSET__assets_images_allshit_breathingoutin0020_png);
		type.set ("assets/images/allshit/breathingoutin0020.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0021.png", __ASSET__assets_images_allshit_breathingoutin0021_png);
		type.set ("assets/images/allshit/breathingoutin0021.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0022.png", __ASSET__assets_images_allshit_breathingoutin0022_png);
		type.set ("assets/images/allshit/breathingoutin0022.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0023.png", __ASSET__assets_images_allshit_breathingoutin0023_png);
		type.set ("assets/images/allshit/breathingoutin0023.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0024.png", __ASSET__assets_images_allshit_breathingoutin0024_png);
		type.set ("assets/images/allshit/breathingoutin0024.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0025.png", __ASSET__assets_images_allshit_breathingoutin0025_png);
		type.set ("assets/images/allshit/breathingoutin0025.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0026.png", __ASSET__assets_images_allshit_breathingoutin0026_png);
		type.set ("assets/images/allshit/breathingoutin0026.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0027.png", __ASSET__assets_images_allshit_breathingoutin0027_png);
		type.set ("assets/images/allshit/breathingoutin0027.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0028.png", __ASSET__assets_images_allshit_breathingoutin0028_png);
		type.set ("assets/images/allshit/breathingoutin0028.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0029.png", __ASSET__assets_images_allshit_breathingoutin0029_png);
		type.set ("assets/images/allshit/breathingoutin0029.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0030.png", __ASSET__assets_images_allshit_breathingoutin0030_png);
		type.set ("assets/images/allshit/breathingoutin0030.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0031.png", __ASSET__assets_images_allshit_breathingoutin0031_png);
		type.set ("assets/images/allshit/breathingoutin0031.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0032.png", __ASSET__assets_images_allshit_breathingoutin0032_png);
		type.set ("assets/images/allshit/breathingoutin0032.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0033.png", __ASSET__assets_images_allshit_breathingoutin0033_png);
		type.set ("assets/images/allshit/breathingoutin0033.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0034.png", __ASSET__assets_images_allshit_breathingoutin0034_png);
		type.set ("assets/images/allshit/breathingoutin0034.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0035.png", __ASSET__assets_images_allshit_breathingoutin0035_png);
		type.set ("assets/images/allshit/breathingoutin0035.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0036.png", __ASSET__assets_images_allshit_breathingoutin0036_png);
		type.set ("assets/images/allshit/breathingoutin0036.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0037.png", __ASSET__assets_images_allshit_breathingoutin0037_png);
		type.set ("assets/images/allshit/breathingoutin0037.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0038.png", __ASSET__assets_images_allshit_breathingoutin0038_png);
		type.set ("assets/images/allshit/breathingoutin0038.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0039.png", __ASSET__assets_images_allshit_breathingoutin0039_png);
		type.set ("assets/images/allshit/breathingoutin0039.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0040.png", __ASSET__assets_images_allshit_breathingoutin0040_png);
		type.set ("assets/images/allshit/breathingoutin0040.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0041.png", __ASSET__assets_images_allshit_breathingoutin0041_png);
		type.set ("assets/images/allshit/breathingoutin0041.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0042.png", __ASSET__assets_images_allshit_breathingoutin0042_png);
		type.set ("assets/images/allshit/breathingoutin0042.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0043.png", __ASSET__assets_images_allshit_breathingoutin0043_png);
		type.set ("assets/images/allshit/breathingoutin0043.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0044.png", __ASSET__assets_images_allshit_breathingoutin0044_png);
		type.set ("assets/images/allshit/breathingoutin0044.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0045.png", __ASSET__assets_images_allshit_breathingoutin0045_png);
		type.set ("assets/images/allshit/breathingoutin0045.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0046.png", __ASSET__assets_images_allshit_breathingoutin0046_png);
		type.set ("assets/images/allshit/breathingoutin0046.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0047.png", __ASSET__assets_images_allshit_breathingoutin0047_png);
		type.set ("assets/images/allshit/breathingoutin0047.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0048.png", __ASSET__assets_images_allshit_breathingoutin0048_png);
		type.set ("assets/images/allshit/breathingoutin0048.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0049.png", __ASSET__assets_images_allshit_breathingoutin0049_png);
		type.set ("assets/images/allshit/breathingoutin0049.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0050.png", __ASSET__assets_images_allshit_breathingoutin0050_png);
		type.set ("assets/images/allshit/breathingoutin0050.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0051.png", __ASSET__assets_images_allshit_breathingoutin0051_png);
		type.set ("assets/images/allshit/breathingoutin0051.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0052.png", __ASSET__assets_images_allshit_breathingoutin0052_png);
		type.set ("assets/images/allshit/breathingoutin0052.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0053.png", __ASSET__assets_images_allshit_breathingoutin0053_png);
		type.set ("assets/images/allshit/breathingoutin0053.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0054.png", __ASSET__assets_images_allshit_breathingoutin0054_png);
		type.set ("assets/images/allshit/breathingoutin0054.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0055.png", __ASSET__assets_images_allshit_breathingoutin0055_png);
		type.set ("assets/images/allshit/breathingoutin0055.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0056.png", __ASSET__assets_images_allshit_breathingoutin0056_png);
		type.set ("assets/images/allshit/breathingoutin0056.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0057.png", __ASSET__assets_images_allshit_breathingoutin0057_png);
		type.set ("assets/images/allshit/breathingoutin0057.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0058.png", __ASSET__assets_images_allshit_breathingoutin0058_png);
		type.set ("assets/images/allshit/breathingoutin0058.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0059.png", __ASSET__assets_images_allshit_breathingoutin0059_png);
		type.set ("assets/images/allshit/breathingoutin0059.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0060.png", __ASSET__assets_images_allshit_breathingoutin0060_png);
		type.set ("assets/images/allshit/breathingoutin0060.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0061.png", __ASSET__assets_images_allshit_breathingoutin0061_png);
		type.set ("assets/images/allshit/breathingoutin0061.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0062.png", __ASSET__assets_images_allshit_breathingoutin0062_png);
		type.set ("assets/images/allshit/breathingoutin0062.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0063.png", __ASSET__assets_images_allshit_breathingoutin0063_png);
		type.set ("assets/images/allshit/breathingoutin0063.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0064.png", __ASSET__assets_images_allshit_breathingoutin0064_png);
		type.set ("assets/images/allshit/breathingoutin0064.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0065.png", __ASSET__assets_images_allshit_breathingoutin0065_png);
		type.set ("assets/images/allshit/breathingoutin0065.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0066.png", __ASSET__assets_images_allshit_breathingoutin0066_png);
		type.set ("assets/images/allshit/breathingoutin0066.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0067.png", __ASSET__assets_images_allshit_breathingoutin0067_png);
		type.set ("assets/images/allshit/breathingoutin0067.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0068.png", __ASSET__assets_images_allshit_breathingoutin0068_png);
		type.set ("assets/images/allshit/breathingoutin0068.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0069.png", __ASSET__assets_images_allshit_breathingoutin0069_png);
		type.set ("assets/images/allshit/breathingoutin0069.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0070.png", __ASSET__assets_images_allshit_breathingoutin0070_png);
		type.set ("assets/images/allshit/breathingoutin0070.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0071.png", __ASSET__assets_images_allshit_breathingoutin0071_png);
		type.set ("assets/images/allshit/breathingoutin0071.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0072.png", __ASSET__assets_images_allshit_breathingoutin0072_png);
		type.set ("assets/images/allshit/breathingoutin0072.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0073.png", __ASSET__assets_images_allshit_breathingoutin0073_png);
		type.set ("assets/images/allshit/breathingoutin0073.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0074.png", __ASSET__assets_images_allshit_breathingoutin0074_png);
		type.set ("assets/images/allshit/breathingoutin0074.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0075.png", __ASSET__assets_images_allshit_breathingoutin0075_png);
		type.set ("assets/images/allshit/breathingoutin0075.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0076.png", __ASSET__assets_images_allshit_breathingoutin0076_png);
		type.set ("assets/images/allshit/breathingoutin0076.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0077.png", __ASSET__assets_images_allshit_breathingoutin0077_png);
		type.set ("assets/images/allshit/breathingoutin0077.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0078.png", __ASSET__assets_images_allshit_breathingoutin0078_png);
		type.set ("assets/images/allshit/breathingoutin0078.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0079.png", __ASSET__assets_images_allshit_breathingoutin0079_png);
		type.set ("assets/images/allshit/breathingoutin0079.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0080.png", __ASSET__assets_images_allshit_breathingoutin0080_png);
		type.set ("assets/images/allshit/breathingoutin0080.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0081.png", __ASSET__assets_images_allshit_breathingoutin0081_png);
		type.set ("assets/images/allshit/breathingoutin0081.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0082.png", __ASSET__assets_images_allshit_breathingoutin0082_png);
		type.set ("assets/images/allshit/breathingoutin0082.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0083.png", __ASSET__assets_images_allshit_breathingoutin0083_png);
		type.set ("assets/images/allshit/breathingoutin0083.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0084.png", __ASSET__assets_images_allshit_breathingoutin0084_png);
		type.set ("assets/images/allshit/breathingoutin0084.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0085.png", __ASSET__assets_images_allshit_breathingoutin0085_png);
		type.set ("assets/images/allshit/breathingoutin0085.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0086.png", __ASSET__assets_images_allshit_breathingoutin0086_png);
		type.set ("assets/images/allshit/breathingoutin0086.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0087.png", __ASSET__assets_images_allshit_breathingoutin0087_png);
		type.set ("assets/images/allshit/breathingoutin0087.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0088.png", __ASSET__assets_images_allshit_breathingoutin0088_png);
		type.set ("assets/images/allshit/breathingoutin0088.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0089.png", __ASSET__assets_images_allshit_breathingoutin0089_png);
		type.set ("assets/images/allshit/breathingoutin0089.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0090.png", __ASSET__assets_images_allshit_breathingoutin0090_png);
		type.set ("assets/images/allshit/breathingoutin0090.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0091.png", __ASSET__assets_images_allshit_breathingoutin0091_png);
		type.set ("assets/images/allshit/breathingoutin0091.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0092.png", __ASSET__assets_images_allshit_breathingoutin0092_png);
		type.set ("assets/images/allshit/breathingoutin0092.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0093.png", __ASSET__assets_images_allshit_breathingoutin0093_png);
		type.set ("assets/images/allshit/breathingoutin0093.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0094.png", __ASSET__assets_images_allshit_breathingoutin0094_png);
		type.set ("assets/images/allshit/breathingoutin0094.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0095.png", __ASSET__assets_images_allshit_breathingoutin0095_png);
		type.set ("assets/images/allshit/breathingoutin0095.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0096.png", __ASSET__assets_images_allshit_breathingoutin0096_png);
		type.set ("assets/images/allshit/breathingoutin0096.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0097.png", __ASSET__assets_images_allshit_breathingoutin0097_png);
		type.set ("assets/images/allshit/breathingoutin0097.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0098.png", __ASSET__assets_images_allshit_breathingoutin0098_png);
		type.set ("assets/images/allshit/breathingoutin0098.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0099.png", __ASSET__assets_images_allshit_breathingoutin0099_png);
		type.set ("assets/images/allshit/breathingoutin0099.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0100.png", __ASSET__assets_images_allshit_breathingoutin0100_png);
		type.set ("assets/images/allshit/breathingoutin0100.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0101.png", __ASSET__assets_images_allshit_breathingoutin0101_png);
		type.set ("assets/images/allshit/breathingoutin0101.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0102.png", __ASSET__assets_images_allshit_breathingoutin0102_png);
		type.set ("assets/images/allshit/breathingoutin0102.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0103.png", __ASSET__assets_images_allshit_breathingoutin0103_png);
		type.set ("assets/images/allshit/breathingoutin0103.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0104.png", __ASSET__assets_images_allshit_breathingoutin0104_png);
		type.set ("assets/images/allshit/breathingoutin0104.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0105.png", __ASSET__assets_images_allshit_breathingoutin0105_png);
		type.set ("assets/images/allshit/breathingoutin0105.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0106.png", __ASSET__assets_images_allshit_breathingoutin0106_png);
		type.set ("assets/images/allshit/breathingoutin0106.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0107.png", __ASSET__assets_images_allshit_breathingoutin0107_png);
		type.set ("assets/images/allshit/breathingoutin0107.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0108.png", __ASSET__assets_images_allshit_breathingoutin0108_png);
		type.set ("assets/images/allshit/breathingoutin0108.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0109.png", __ASSET__assets_images_allshit_breathingoutin0109_png);
		type.set ("assets/images/allshit/breathingoutin0109.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0110.png", __ASSET__assets_images_allshit_breathingoutin0110_png);
		type.set ("assets/images/allshit/breathingoutin0110.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0111.png", __ASSET__assets_images_allshit_breathingoutin0111_png);
		type.set ("assets/images/allshit/breathingoutin0111.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0112.png", __ASSET__assets_images_allshit_breathingoutin0112_png);
		type.set ("assets/images/allshit/breathingoutin0112.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0113.png", __ASSET__assets_images_allshit_breathingoutin0113_png);
		type.set ("assets/images/allshit/breathingoutin0113.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0114.png", __ASSET__assets_images_allshit_breathingoutin0114_png);
		type.set ("assets/images/allshit/breathingoutin0114.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0115.png", __ASSET__assets_images_allshit_breathingoutin0115_png);
		type.set ("assets/images/allshit/breathingoutin0115.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0116.png", __ASSET__assets_images_allshit_breathingoutin0116_png);
		type.set ("assets/images/allshit/breathingoutin0116.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0117.png", __ASSET__assets_images_allshit_breathingoutin0117_png);
		type.set ("assets/images/allshit/breathingoutin0117.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0118.png", __ASSET__assets_images_allshit_breathingoutin0118_png);
		type.set ("assets/images/allshit/breathingoutin0118.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0119.png", __ASSET__assets_images_allshit_breathingoutin0119_png);
		type.set ("assets/images/allshit/breathingoutin0119.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0120.png", __ASSET__assets_images_allshit_breathingoutin0120_png);
		type.set ("assets/images/allshit/breathingoutin0120.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0121.png", __ASSET__assets_images_allshit_breathingoutin0121_png);
		type.set ("assets/images/allshit/breathingoutin0121.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0122.png", __ASSET__assets_images_allshit_breathingoutin0122_png);
		type.set ("assets/images/allshit/breathingoutin0122.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0123.png", __ASSET__assets_images_allshit_breathingoutin0123_png);
		type.set ("assets/images/allshit/breathingoutin0123.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0124.png", __ASSET__assets_images_allshit_breathingoutin0124_png);
		type.set ("assets/images/allshit/breathingoutin0124.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0125.png", __ASSET__assets_images_allshit_breathingoutin0125_png);
		type.set ("assets/images/allshit/breathingoutin0125.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0126.png", __ASSET__assets_images_allshit_breathingoutin0126_png);
		type.set ("assets/images/allshit/breathingoutin0126.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0127.png", __ASSET__assets_images_allshit_breathingoutin0127_png);
		type.set ("assets/images/allshit/breathingoutin0127.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0128.png", __ASSET__assets_images_allshit_breathingoutin0128_png);
		type.set ("assets/images/allshit/breathingoutin0128.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0129.png", __ASSET__assets_images_allshit_breathingoutin0129_png);
		type.set ("assets/images/allshit/breathingoutin0129.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0130.png", __ASSET__assets_images_allshit_breathingoutin0130_png);
		type.set ("assets/images/allshit/breathingoutin0130.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0131.png", __ASSET__assets_images_allshit_breathingoutin0131_png);
		type.set ("assets/images/allshit/breathingoutin0131.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0132.png", __ASSET__assets_images_allshit_breathingoutin0132_png);
		type.set ("assets/images/allshit/breathingoutin0132.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0133.png", __ASSET__assets_images_allshit_breathingoutin0133_png);
		type.set ("assets/images/allshit/breathingoutin0133.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0134.png", __ASSET__assets_images_allshit_breathingoutin0134_png);
		type.set ("assets/images/allshit/breathingoutin0134.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0135.png", __ASSET__assets_images_allshit_breathingoutin0135_png);
		type.set ("assets/images/allshit/breathingoutin0135.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0136.png", __ASSET__assets_images_allshit_breathingoutin0136_png);
		type.set ("assets/images/allshit/breathingoutin0136.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0137.png", __ASSET__assets_images_allshit_breathingoutin0137_png);
		type.set ("assets/images/allshit/breathingoutin0137.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0138.png", __ASSET__assets_images_allshit_breathingoutin0138_png);
		type.set ("assets/images/allshit/breathingoutin0138.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0139.png", __ASSET__assets_images_allshit_breathingoutin0139_png);
		type.set ("assets/images/allshit/breathingoutin0139.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0140.png", __ASSET__assets_images_allshit_breathingoutin0140_png);
		type.set ("assets/images/allshit/breathingoutin0140.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0141.png", __ASSET__assets_images_allshit_breathingoutin0141_png);
		type.set ("assets/images/allshit/breathingoutin0141.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0142.png", __ASSET__assets_images_allshit_breathingoutin0142_png);
		type.set ("assets/images/allshit/breathingoutin0142.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0143.png", __ASSET__assets_images_allshit_breathingoutin0143_png);
		type.set ("assets/images/allshit/breathingoutin0143.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0144.png", __ASSET__assets_images_allshit_breathingoutin0144_png);
		type.set ("assets/images/allshit/breathingoutin0144.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0145.png", __ASSET__assets_images_allshit_breathingoutin0145_png);
		type.set ("assets/images/allshit/breathingoutin0145.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0146.png", __ASSET__assets_images_allshit_breathingoutin0146_png);
		type.set ("assets/images/allshit/breathingoutin0146.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0147.png", __ASSET__assets_images_allshit_breathingoutin0147_png);
		type.set ("assets/images/allshit/breathingoutin0147.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0148.png", __ASSET__assets_images_allshit_breathingoutin0148_png);
		type.set ("assets/images/allshit/breathingoutin0148.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0149.png", __ASSET__assets_images_allshit_breathingoutin0149_png);
		type.set ("assets/images/allshit/breathingoutin0149.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0150.png", __ASSET__assets_images_allshit_breathingoutin0150_png);
		type.set ("assets/images/allshit/breathingoutin0150.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0151.png", __ASSET__assets_images_allshit_breathingoutin0151_png);
		type.set ("assets/images/allshit/breathingoutin0151.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0152.png", __ASSET__assets_images_allshit_breathingoutin0152_png);
		type.set ("assets/images/allshit/breathingoutin0152.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0153.png", __ASSET__assets_images_allshit_breathingoutin0153_png);
		type.set ("assets/images/allshit/breathingoutin0153.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0154.png", __ASSET__assets_images_allshit_breathingoutin0154_png);
		type.set ("assets/images/allshit/breathingoutin0154.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0155.png", __ASSET__assets_images_allshit_breathingoutin0155_png);
		type.set ("assets/images/allshit/breathingoutin0155.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0156.png", __ASSET__assets_images_allshit_breathingoutin0156_png);
		type.set ("assets/images/allshit/breathingoutin0156.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0157.png", __ASSET__assets_images_allshit_breathingoutin0157_png);
		type.set ("assets/images/allshit/breathingoutin0157.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0158.png", __ASSET__assets_images_allshit_breathingoutin0158_png);
		type.set ("assets/images/allshit/breathingoutin0158.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0159.png", __ASSET__assets_images_allshit_breathingoutin0159_png);
		type.set ("assets/images/allshit/breathingoutin0159.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0160.png", __ASSET__assets_images_allshit_breathingoutin0160_png);
		type.set ("assets/images/allshit/breathingoutin0160.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0161.png", __ASSET__assets_images_allshit_breathingoutin0161_png);
		type.set ("assets/images/allshit/breathingoutin0161.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0162.png", __ASSET__assets_images_allshit_breathingoutin0162_png);
		type.set ("assets/images/allshit/breathingoutin0162.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0163.png", __ASSET__assets_images_allshit_breathingoutin0163_png);
		type.set ("assets/images/allshit/breathingoutin0163.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0164.png", __ASSET__assets_images_allshit_breathingoutin0164_png);
		type.set ("assets/images/allshit/breathingoutin0164.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0165.png", __ASSET__assets_images_allshit_breathingoutin0165_png);
		type.set ("assets/images/allshit/breathingoutin0165.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0166.png", __ASSET__assets_images_allshit_breathingoutin0166_png);
		type.set ("assets/images/allshit/breathingoutin0166.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0167.png", __ASSET__assets_images_allshit_breathingoutin0167_png);
		type.set ("assets/images/allshit/breathingoutin0167.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0168.png", __ASSET__assets_images_allshit_breathingoutin0168_png);
		type.set ("assets/images/allshit/breathingoutin0168.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0169.png", __ASSET__assets_images_allshit_breathingoutin0169_png);
		type.set ("assets/images/allshit/breathingoutin0169.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0170.png", __ASSET__assets_images_allshit_breathingoutin0170_png);
		type.set ("assets/images/allshit/breathingoutin0170.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0171.png", __ASSET__assets_images_allshit_breathingoutin0171_png);
		type.set ("assets/images/allshit/breathingoutin0171.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0172.png", __ASSET__assets_images_allshit_breathingoutin0172_png);
		type.set ("assets/images/allshit/breathingoutin0172.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0173.png", __ASSET__assets_images_allshit_breathingoutin0173_png);
		type.set ("assets/images/allshit/breathingoutin0173.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0174.png", __ASSET__assets_images_allshit_breathingoutin0174_png);
		type.set ("assets/images/allshit/breathingoutin0174.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0175.png", __ASSET__assets_images_allshit_breathingoutin0175_png);
		type.set ("assets/images/allshit/breathingoutin0175.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0176.png", __ASSET__assets_images_allshit_breathingoutin0176_png);
		type.set ("assets/images/allshit/breathingoutin0176.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0177.png", __ASSET__assets_images_allshit_breathingoutin0177_png);
		type.set ("assets/images/allshit/breathingoutin0177.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0178.png", __ASSET__assets_images_allshit_breathingoutin0178_png);
		type.set ("assets/images/allshit/breathingoutin0178.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0179.png", __ASSET__assets_images_allshit_breathingoutin0179_png);
		type.set ("assets/images/allshit/breathingoutin0179.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0180.png", __ASSET__assets_images_allshit_breathingoutin0180_png);
		type.set ("assets/images/allshit/breathingoutin0180.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0181.png", __ASSET__assets_images_allshit_breathingoutin0181_png);
		type.set ("assets/images/allshit/breathingoutin0181.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0182.png", __ASSET__assets_images_allshit_breathingoutin0182_png);
		type.set ("assets/images/allshit/breathingoutin0182.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0183.png", __ASSET__assets_images_allshit_breathingoutin0183_png);
		type.set ("assets/images/allshit/breathingoutin0183.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0184.png", __ASSET__assets_images_allshit_breathingoutin0184_png);
		type.set ("assets/images/allshit/breathingoutin0184.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0185.png", __ASSET__assets_images_allshit_breathingoutin0185_png);
		type.set ("assets/images/allshit/breathingoutin0185.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0186.png", __ASSET__assets_images_allshit_breathingoutin0186_png);
		type.set ("assets/images/allshit/breathingoutin0186.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0187.png", __ASSET__assets_images_allshit_breathingoutin0187_png);
		type.set ("assets/images/allshit/breathingoutin0187.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0188.png", __ASSET__assets_images_allshit_breathingoutin0188_png);
		type.set ("assets/images/allshit/breathingoutin0188.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0189.png", __ASSET__assets_images_allshit_breathingoutin0189_png);
		type.set ("assets/images/allshit/breathingoutin0189.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0190.png", __ASSET__assets_images_allshit_breathingoutin0190_png);
		type.set ("assets/images/allshit/breathingoutin0190.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0191.png", __ASSET__assets_images_allshit_breathingoutin0191_png);
		type.set ("assets/images/allshit/breathingoutin0191.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0192.png", __ASSET__assets_images_allshit_breathingoutin0192_png);
		type.set ("assets/images/allshit/breathingoutin0192.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0193.png", __ASSET__assets_images_allshit_breathingoutin0193_png);
		type.set ("assets/images/allshit/breathingoutin0193.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0194.png", __ASSET__assets_images_allshit_breathingoutin0194_png);
		type.set ("assets/images/allshit/breathingoutin0194.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0195.png", __ASSET__assets_images_allshit_breathingoutin0195_png);
		type.set ("assets/images/allshit/breathingoutin0195.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0196.png", __ASSET__assets_images_allshit_breathingoutin0196_png);
		type.set ("assets/images/allshit/breathingoutin0196.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0197.png", __ASSET__assets_images_allshit_breathingoutin0197_png);
		type.set ("assets/images/allshit/breathingoutin0197.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0198.png", __ASSET__assets_images_allshit_breathingoutin0198_png);
		type.set ("assets/images/allshit/breathingoutin0198.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0199.png", __ASSET__assets_images_allshit_breathingoutin0199_png);
		type.set ("assets/images/allshit/breathingoutin0199.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0200.png", __ASSET__assets_images_allshit_breathingoutin0200_png);
		type.set ("assets/images/allshit/breathingoutin0200.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0201.png", __ASSET__assets_images_allshit_breathingoutin0201_png);
		type.set ("assets/images/allshit/breathingoutin0201.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0202.png", __ASSET__assets_images_allshit_breathingoutin0202_png);
		type.set ("assets/images/allshit/breathingoutin0202.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0203.png", __ASSET__assets_images_allshit_breathingoutin0203_png);
		type.set ("assets/images/allshit/breathingoutin0203.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0204.png", __ASSET__assets_images_allshit_breathingoutin0204_png);
		type.set ("assets/images/allshit/breathingoutin0204.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0205.png", __ASSET__assets_images_allshit_breathingoutin0205_png);
		type.set ("assets/images/allshit/breathingoutin0205.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0206.png", __ASSET__assets_images_allshit_breathingoutin0206_png);
		type.set ("assets/images/allshit/breathingoutin0206.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0207.png", __ASSET__assets_images_allshit_breathingoutin0207_png);
		type.set ("assets/images/allshit/breathingoutin0207.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0208.png", __ASSET__assets_images_allshit_breathingoutin0208_png);
		type.set ("assets/images/allshit/breathingoutin0208.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0209.png", __ASSET__assets_images_allshit_breathingoutin0209_png);
		type.set ("assets/images/allshit/breathingoutin0209.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0210.png", __ASSET__assets_images_allshit_breathingoutin0210_png);
		type.set ("assets/images/allshit/breathingoutin0210.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0211.png", __ASSET__assets_images_allshit_breathingoutin0211_png);
		type.set ("assets/images/allshit/breathingoutin0211.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0212.png", __ASSET__assets_images_allshit_breathingoutin0212_png);
		type.set ("assets/images/allshit/breathingoutin0212.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0213.png", __ASSET__assets_images_allshit_breathingoutin0213_png);
		type.set ("assets/images/allshit/breathingoutin0213.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0214.png", __ASSET__assets_images_allshit_breathingoutin0214_png);
		type.set ("assets/images/allshit/breathingoutin0214.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0215.png", __ASSET__assets_images_allshit_breathingoutin0215_png);
		type.set ("assets/images/allshit/breathingoutin0215.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0216.png", __ASSET__assets_images_allshit_breathingoutin0216_png);
		type.set ("assets/images/allshit/breathingoutin0216.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0217.png", __ASSET__assets_images_allshit_breathingoutin0217_png);
		type.set ("assets/images/allshit/breathingoutin0217.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0218.png", __ASSET__assets_images_allshit_breathingoutin0218_png);
		type.set ("assets/images/allshit/breathingoutin0218.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0219.png", __ASSET__assets_images_allshit_breathingoutin0219_png);
		type.set ("assets/images/allshit/breathingoutin0219.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0220.png", __ASSET__assets_images_allshit_breathingoutin0220_png);
		type.set ("assets/images/allshit/breathingoutin0220.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0221.png", __ASSET__assets_images_allshit_breathingoutin0221_png);
		type.set ("assets/images/allshit/breathingoutin0221.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0222.png", __ASSET__assets_images_allshit_breathingoutin0222_png);
		type.set ("assets/images/allshit/breathingoutin0222.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0223.png", __ASSET__assets_images_allshit_breathingoutin0223_png);
		type.set ("assets/images/allshit/breathingoutin0223.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0224.png", __ASSET__assets_images_allshit_breathingoutin0224_png);
		type.set ("assets/images/allshit/breathingoutin0224.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0225.png", __ASSET__assets_images_allshit_breathingoutin0225_png);
		type.set ("assets/images/allshit/breathingoutin0225.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0226.png", __ASSET__assets_images_allshit_breathingoutin0226_png);
		type.set ("assets/images/allshit/breathingoutin0226.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0227.png", __ASSET__assets_images_allshit_breathingoutin0227_png);
		type.set ("assets/images/allshit/breathingoutin0227.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0228.png", __ASSET__assets_images_allshit_breathingoutin0228_png);
		type.set ("assets/images/allshit/breathingoutin0228.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0229.png", __ASSET__assets_images_allshit_breathingoutin0229_png);
		type.set ("assets/images/allshit/breathingoutin0229.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0230.png", __ASSET__assets_images_allshit_breathingoutin0230_png);
		type.set ("assets/images/allshit/breathingoutin0230.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0231.png", __ASSET__assets_images_allshit_breathingoutin0231_png);
		type.set ("assets/images/allshit/breathingoutin0231.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0232.png", __ASSET__assets_images_allshit_breathingoutin0232_png);
		type.set ("assets/images/allshit/breathingoutin0232.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0233.png", __ASSET__assets_images_allshit_breathingoutin0233_png);
		type.set ("assets/images/allshit/breathingoutin0233.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0234.png", __ASSET__assets_images_allshit_breathingoutin0234_png);
		type.set ("assets/images/allshit/breathingoutin0234.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0235.png", __ASSET__assets_images_allshit_breathingoutin0235_png);
		type.set ("assets/images/allshit/breathingoutin0235.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0236.png", __ASSET__assets_images_allshit_breathingoutin0236_png);
		type.set ("assets/images/allshit/breathingoutin0236.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0237.png", __ASSET__assets_images_allshit_breathingoutin0237_png);
		type.set ("assets/images/allshit/breathingoutin0237.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0238.png", __ASSET__assets_images_allshit_breathingoutin0238_png);
		type.set ("assets/images/allshit/breathingoutin0238.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0239.png", __ASSET__assets_images_allshit_breathingoutin0239_png);
		type.set ("assets/images/allshit/breathingoutin0239.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0240.png", __ASSET__assets_images_allshit_breathingoutin0240_png);
		type.set ("assets/images/allshit/breathingoutin0240.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0241.png", __ASSET__assets_images_allshit_breathingoutin0241_png);
		type.set ("assets/images/allshit/breathingoutin0241.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0242.png", __ASSET__assets_images_allshit_breathingoutin0242_png);
		type.set ("assets/images/allshit/breathingoutin0242.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0243.png", __ASSET__assets_images_allshit_breathingoutin0243_png);
		type.set ("assets/images/allshit/breathingoutin0243.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0244.png", __ASSET__assets_images_allshit_breathingoutin0244_png);
		type.set ("assets/images/allshit/breathingoutin0244.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0245.png", __ASSET__assets_images_allshit_breathingoutin0245_png);
		type.set ("assets/images/allshit/breathingoutin0245.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0246.png", __ASSET__assets_images_allshit_breathingoutin0246_png);
		type.set ("assets/images/allshit/breathingoutin0246.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0247.png", __ASSET__assets_images_allshit_breathingoutin0247_png);
		type.set ("assets/images/allshit/breathingoutin0247.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0248.png", __ASSET__assets_images_allshit_breathingoutin0248_png);
		type.set ("assets/images/allshit/breathingoutin0248.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0249.png", __ASSET__assets_images_allshit_breathingoutin0249_png);
		type.set ("assets/images/allshit/breathingoutin0249.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0250.png", __ASSET__assets_images_allshit_breathingoutin0250_png);
		type.set ("assets/images/allshit/breathingoutin0250.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0251.png", __ASSET__assets_images_allshit_breathingoutin0251_png);
		type.set ("assets/images/allshit/breathingoutin0251.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0252.png", __ASSET__assets_images_allshit_breathingoutin0252_png);
		type.set ("assets/images/allshit/breathingoutin0252.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0253.png", __ASSET__assets_images_allshit_breathingoutin0253_png);
		type.set ("assets/images/allshit/breathingoutin0253.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0254.png", __ASSET__assets_images_allshit_breathingoutin0254_png);
		type.set ("assets/images/allshit/breathingoutin0254.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0255.png", __ASSET__assets_images_allshit_breathingoutin0255_png);
		type.set ("assets/images/allshit/breathingoutin0255.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0256.png", __ASSET__assets_images_allshit_breathingoutin0256_png);
		type.set ("assets/images/allshit/breathingoutin0256.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0257.png", __ASSET__assets_images_allshit_breathingoutin0257_png);
		type.set ("assets/images/allshit/breathingoutin0257.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0258.png", __ASSET__assets_images_allshit_breathingoutin0258_png);
		type.set ("assets/images/allshit/breathingoutin0258.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0259.png", __ASSET__assets_images_allshit_breathingoutin0259_png);
		type.set ("assets/images/allshit/breathingoutin0259.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0260.png", __ASSET__assets_images_allshit_breathingoutin0260_png);
		type.set ("assets/images/allshit/breathingoutin0260.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0261.png", __ASSET__assets_images_allshit_breathingoutin0261_png);
		type.set ("assets/images/allshit/breathingoutin0261.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0262.png", __ASSET__assets_images_allshit_breathingoutin0262_png);
		type.set ("assets/images/allshit/breathingoutin0262.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0263.png", __ASSET__assets_images_allshit_breathingoutin0263_png);
		type.set ("assets/images/allshit/breathingoutin0263.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0264.png", __ASSET__assets_images_allshit_breathingoutin0264_png);
		type.set ("assets/images/allshit/breathingoutin0264.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0265.png", __ASSET__assets_images_allshit_breathingoutin0265_png);
		type.set ("assets/images/allshit/breathingoutin0265.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0266.png", __ASSET__assets_images_allshit_breathingoutin0266_png);
		type.set ("assets/images/allshit/breathingoutin0266.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0267.png", __ASSET__assets_images_allshit_breathingoutin0267_png);
		type.set ("assets/images/allshit/breathingoutin0267.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0268.png", __ASSET__assets_images_allshit_breathingoutin0268_png);
		type.set ("assets/images/allshit/breathingoutin0268.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0269.png", __ASSET__assets_images_allshit_breathingoutin0269_png);
		type.set ("assets/images/allshit/breathingoutin0269.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0270.png", __ASSET__assets_images_allshit_breathingoutin0270_png);
		type.set ("assets/images/allshit/breathingoutin0270.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0271.png", __ASSET__assets_images_allshit_breathingoutin0271_png);
		type.set ("assets/images/allshit/breathingoutin0271.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0272.png", __ASSET__assets_images_allshit_breathingoutin0272_png);
		type.set ("assets/images/allshit/breathingoutin0272.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0273.png", __ASSET__assets_images_allshit_breathingoutin0273_png);
		type.set ("assets/images/allshit/breathingoutin0273.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0274.png", __ASSET__assets_images_allshit_breathingoutin0274_png);
		type.set ("assets/images/allshit/breathingoutin0274.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0275.png", __ASSET__assets_images_allshit_breathingoutin0275_png);
		type.set ("assets/images/allshit/breathingoutin0275.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0276.png", __ASSET__assets_images_allshit_breathingoutin0276_png);
		type.set ("assets/images/allshit/breathingoutin0276.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0277.png", __ASSET__assets_images_allshit_breathingoutin0277_png);
		type.set ("assets/images/allshit/breathingoutin0277.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0278.png", __ASSET__assets_images_allshit_breathingoutin0278_png);
		type.set ("assets/images/allshit/breathingoutin0278.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0279.png", __ASSET__assets_images_allshit_breathingoutin0279_png);
		type.set ("assets/images/allshit/breathingoutin0279.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0280.png", __ASSET__assets_images_allshit_breathingoutin0280_png);
		type.set ("assets/images/allshit/breathingoutin0280.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0281.png", __ASSET__assets_images_allshit_breathingoutin0281_png);
		type.set ("assets/images/allshit/breathingoutin0281.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0282.png", __ASSET__assets_images_allshit_breathingoutin0282_png);
		type.set ("assets/images/allshit/breathingoutin0282.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0283.png", __ASSET__assets_images_allshit_breathingoutin0283_png);
		type.set ("assets/images/allshit/breathingoutin0283.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0284.png", __ASSET__assets_images_allshit_breathingoutin0284_png);
		type.set ("assets/images/allshit/breathingoutin0284.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0285.png", __ASSET__assets_images_allshit_breathingoutin0285_png);
		type.set ("assets/images/allshit/breathingoutin0285.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0286.png", __ASSET__assets_images_allshit_breathingoutin0286_png);
		type.set ("assets/images/allshit/breathingoutin0286.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0287.png", __ASSET__assets_images_allshit_breathingoutin0287_png);
		type.set ("assets/images/allshit/breathingoutin0287.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0288.png", __ASSET__assets_images_allshit_breathingoutin0288_png);
		type.set ("assets/images/allshit/breathingoutin0288.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0289.png", __ASSET__assets_images_allshit_breathingoutin0289_png);
		type.set ("assets/images/allshit/breathingoutin0289.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0290.png", __ASSET__assets_images_allshit_breathingoutin0290_png);
		type.set ("assets/images/allshit/breathingoutin0290.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0291.png", __ASSET__assets_images_allshit_breathingoutin0291_png);
		type.set ("assets/images/allshit/breathingoutin0291.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0292.png", __ASSET__assets_images_allshit_breathingoutin0292_png);
		type.set ("assets/images/allshit/breathingoutin0292.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0293.png", __ASSET__assets_images_allshit_breathingoutin0293_png);
		type.set ("assets/images/allshit/breathingoutin0293.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0294.png", __ASSET__assets_images_allshit_breathingoutin0294_png);
		type.set ("assets/images/allshit/breathingoutin0294.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0295.png", __ASSET__assets_images_allshit_breathingoutin0295_png);
		type.set ("assets/images/allshit/breathingoutin0295.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0296.png", __ASSET__assets_images_allshit_breathingoutin0296_png);
		type.set ("assets/images/allshit/breathingoutin0296.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0297.png", __ASSET__assets_images_allshit_breathingoutin0297_png);
		type.set ("assets/images/allshit/breathingoutin0297.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0298.png", __ASSET__assets_images_allshit_breathingoutin0298_png);
		type.set ("assets/images/allshit/breathingoutin0298.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0299.png", __ASSET__assets_images_allshit_breathingoutin0299_png);
		type.set ("assets/images/allshit/breathingoutin0299.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0300.png", __ASSET__assets_images_allshit_breathingoutin0300_png);
		type.set ("assets/images/allshit/breathingoutin0300.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0301.png", __ASSET__assets_images_allshit_breathingoutin0301_png);
		type.set ("assets/images/allshit/breathingoutin0301.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0302.png", __ASSET__assets_images_allshit_breathingoutin0302_png);
		type.set ("assets/images/allshit/breathingoutin0302.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0303.png", __ASSET__assets_images_allshit_breathingoutin0303_png);
		type.set ("assets/images/allshit/breathingoutin0303.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0304.png", __ASSET__assets_images_allshit_breathingoutin0304_png);
		type.set ("assets/images/allshit/breathingoutin0304.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0305.png", __ASSET__assets_images_allshit_breathingoutin0305_png);
		type.set ("assets/images/allshit/breathingoutin0305.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0306.png", __ASSET__assets_images_allshit_breathingoutin0306_png);
		type.set ("assets/images/allshit/breathingoutin0306.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0307.png", __ASSET__assets_images_allshit_breathingoutin0307_png);
		type.set ("assets/images/allshit/breathingoutin0307.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0308.png", __ASSET__assets_images_allshit_breathingoutin0308_png);
		type.set ("assets/images/allshit/breathingoutin0308.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0309.png", __ASSET__assets_images_allshit_breathingoutin0309_png);
		type.set ("assets/images/allshit/breathingoutin0309.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0310.png", __ASSET__assets_images_allshit_breathingoutin0310_png);
		type.set ("assets/images/allshit/breathingoutin0310.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0311.png", __ASSET__assets_images_allshit_breathingoutin0311_png);
		type.set ("assets/images/allshit/breathingoutin0311.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0312.png", __ASSET__assets_images_allshit_breathingoutin0312_png);
		type.set ("assets/images/allshit/breathingoutin0312.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0313.png", __ASSET__assets_images_allshit_breathingoutin0313_png);
		type.set ("assets/images/allshit/breathingoutin0313.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0314.png", __ASSET__assets_images_allshit_breathingoutin0314_png);
		type.set ("assets/images/allshit/breathingoutin0314.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0315.png", __ASSET__assets_images_allshit_breathingoutin0315_png);
		type.set ("assets/images/allshit/breathingoutin0315.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0316.png", __ASSET__assets_images_allshit_breathingoutin0316_png);
		type.set ("assets/images/allshit/breathingoutin0316.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0317.png", __ASSET__assets_images_allshit_breathingoutin0317_png);
		type.set ("assets/images/allshit/breathingoutin0317.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0318.png", __ASSET__assets_images_allshit_breathingoutin0318_png);
		type.set ("assets/images/allshit/breathingoutin0318.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0319.png", __ASSET__assets_images_allshit_breathingoutin0319_png);
		type.set ("assets/images/allshit/breathingoutin0319.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0320.png", __ASSET__assets_images_allshit_breathingoutin0320_png);
		type.set ("assets/images/allshit/breathingoutin0320.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0321.png", __ASSET__assets_images_allshit_breathingoutin0321_png);
		type.set ("assets/images/allshit/breathingoutin0321.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0322.png", __ASSET__assets_images_allshit_breathingoutin0322_png);
		type.set ("assets/images/allshit/breathingoutin0322.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0323.png", __ASSET__assets_images_allshit_breathingoutin0323_png);
		type.set ("assets/images/allshit/breathingoutin0323.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0324.png", __ASSET__assets_images_allshit_breathingoutin0324_png);
		type.set ("assets/images/allshit/breathingoutin0324.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0325.png", __ASSET__assets_images_allshit_breathingoutin0325_png);
		type.set ("assets/images/allshit/breathingoutin0325.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0326.png", __ASSET__assets_images_allshit_breathingoutin0326_png);
		type.set ("assets/images/allshit/breathingoutin0326.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0327.png", __ASSET__assets_images_allshit_breathingoutin0327_png);
		type.set ("assets/images/allshit/breathingoutin0327.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0328.png", __ASSET__assets_images_allshit_breathingoutin0328_png);
		type.set ("assets/images/allshit/breathingoutin0328.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0329.png", __ASSET__assets_images_allshit_breathingoutin0329_png);
		type.set ("assets/images/allshit/breathingoutin0329.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0330.png", __ASSET__assets_images_allshit_breathingoutin0330_png);
		type.set ("assets/images/allshit/breathingoutin0330.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0331.png", __ASSET__assets_images_allshit_breathingoutin0331_png);
		type.set ("assets/images/allshit/breathingoutin0331.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0332.png", __ASSET__assets_images_allshit_breathingoutin0332_png);
		type.set ("assets/images/allshit/breathingoutin0332.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0333.png", __ASSET__assets_images_allshit_breathingoutin0333_png);
		type.set ("assets/images/allshit/breathingoutin0333.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0334.png", __ASSET__assets_images_allshit_breathingoutin0334_png);
		type.set ("assets/images/allshit/breathingoutin0334.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0335.png", __ASSET__assets_images_allshit_breathingoutin0335_png);
		type.set ("assets/images/allshit/breathingoutin0335.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0336.png", __ASSET__assets_images_allshit_breathingoutin0336_png);
		type.set ("assets/images/allshit/breathingoutin0336.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0337.png", __ASSET__assets_images_allshit_breathingoutin0337_png);
		type.set ("assets/images/allshit/breathingoutin0337.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0338.png", __ASSET__assets_images_allshit_breathingoutin0338_png);
		type.set ("assets/images/allshit/breathingoutin0338.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0339.png", __ASSET__assets_images_allshit_breathingoutin0339_png);
		type.set ("assets/images/allshit/breathingoutin0339.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0340.png", __ASSET__assets_images_allshit_breathingoutin0340_png);
		type.set ("assets/images/allshit/breathingoutin0340.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0341.png", __ASSET__assets_images_allshit_breathingoutin0341_png);
		type.set ("assets/images/allshit/breathingoutin0341.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0342.png", __ASSET__assets_images_allshit_breathingoutin0342_png);
		type.set ("assets/images/allshit/breathingoutin0342.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0343.png", __ASSET__assets_images_allshit_breathingoutin0343_png);
		type.set ("assets/images/allshit/breathingoutin0343.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0344.png", __ASSET__assets_images_allshit_breathingoutin0344_png);
		type.set ("assets/images/allshit/breathingoutin0344.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0345.png", __ASSET__assets_images_allshit_breathingoutin0345_png);
		type.set ("assets/images/allshit/breathingoutin0345.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0346.png", __ASSET__assets_images_allshit_breathingoutin0346_png);
		type.set ("assets/images/allshit/breathingoutin0346.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0347.png", __ASSET__assets_images_allshit_breathingoutin0347_png);
		type.set ("assets/images/allshit/breathingoutin0347.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0348.png", __ASSET__assets_images_allshit_breathingoutin0348_png);
		type.set ("assets/images/allshit/breathingoutin0348.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0349.png", __ASSET__assets_images_allshit_breathingoutin0349_png);
		type.set ("assets/images/allshit/breathingoutin0349.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0350.png", __ASSET__assets_images_allshit_breathingoutin0350_png);
		type.set ("assets/images/allshit/breathingoutin0350.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0351.png", __ASSET__assets_images_allshit_breathingoutin0351_png);
		type.set ("assets/images/allshit/breathingoutin0351.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0352.png", __ASSET__assets_images_allshit_breathingoutin0352_png);
		type.set ("assets/images/allshit/breathingoutin0352.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0353.png", __ASSET__assets_images_allshit_breathingoutin0353_png);
		type.set ("assets/images/allshit/breathingoutin0353.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0354.png", __ASSET__assets_images_allshit_breathingoutin0354_png);
		type.set ("assets/images/allshit/breathingoutin0354.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0355.png", __ASSET__assets_images_allshit_breathingoutin0355_png);
		type.set ("assets/images/allshit/breathingoutin0355.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0356.png", __ASSET__assets_images_allshit_breathingoutin0356_png);
		type.set ("assets/images/allshit/breathingoutin0356.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0357.png", __ASSET__assets_images_allshit_breathingoutin0357_png);
		type.set ("assets/images/allshit/breathingoutin0357.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0358.png", __ASSET__assets_images_allshit_breathingoutin0358_png);
		type.set ("assets/images/allshit/breathingoutin0358.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0359.png", __ASSET__assets_images_allshit_breathingoutin0359_png);
		type.set ("assets/images/allshit/breathingoutin0359.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0360.png", __ASSET__assets_images_allshit_breathingoutin0360_png);
		type.set ("assets/images/allshit/breathingoutin0360.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0361.png", __ASSET__assets_images_allshit_breathingoutin0361_png);
		type.set ("assets/images/allshit/breathingoutin0361.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0362.png", __ASSET__assets_images_allshit_breathingoutin0362_png);
		type.set ("assets/images/allshit/breathingoutin0362.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0363.png", __ASSET__assets_images_allshit_breathingoutin0363_png);
		type.set ("assets/images/allshit/breathingoutin0363.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0364.png", __ASSET__assets_images_allshit_breathingoutin0364_png);
		type.set ("assets/images/allshit/breathingoutin0364.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0365.png", __ASSET__assets_images_allshit_breathingoutin0365_png);
		type.set ("assets/images/allshit/breathingoutin0365.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0366.png", __ASSET__assets_images_allshit_breathingoutin0366_png);
		type.set ("assets/images/allshit/breathingoutin0366.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0367.png", __ASSET__assets_images_allshit_breathingoutin0367_png);
		type.set ("assets/images/allshit/breathingoutin0367.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0368.png", __ASSET__assets_images_allshit_breathingoutin0368_png);
		type.set ("assets/images/allshit/breathingoutin0368.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0369.png", __ASSET__assets_images_allshit_breathingoutin0369_png);
		type.set ("assets/images/allshit/breathingoutin0369.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0370.png", __ASSET__assets_images_allshit_breathingoutin0370_png);
		type.set ("assets/images/allshit/breathingoutin0370.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0371.png", __ASSET__assets_images_allshit_breathingoutin0371_png);
		type.set ("assets/images/allshit/breathingoutin0371.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0372.png", __ASSET__assets_images_allshit_breathingoutin0372_png);
		type.set ("assets/images/allshit/breathingoutin0372.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0373.png", __ASSET__assets_images_allshit_breathingoutin0373_png);
		type.set ("assets/images/allshit/breathingoutin0373.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0374.png", __ASSET__assets_images_allshit_breathingoutin0374_png);
		type.set ("assets/images/allshit/breathingoutin0374.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0375.png", __ASSET__assets_images_allshit_breathingoutin0375_png);
		type.set ("assets/images/allshit/breathingoutin0375.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0376.png", __ASSET__assets_images_allshit_breathingoutin0376_png);
		type.set ("assets/images/allshit/breathingoutin0376.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0377.png", __ASSET__assets_images_allshit_breathingoutin0377_png);
		type.set ("assets/images/allshit/breathingoutin0377.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0378.png", __ASSET__assets_images_allshit_breathingoutin0378_png);
		type.set ("assets/images/allshit/breathingoutin0378.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0379.png", __ASSET__assets_images_allshit_breathingoutin0379_png);
		type.set ("assets/images/allshit/breathingoutin0379.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0380.png", __ASSET__assets_images_allshit_breathingoutin0380_png);
		type.set ("assets/images/allshit/breathingoutin0380.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0381.png", __ASSET__assets_images_allshit_breathingoutin0381_png);
		type.set ("assets/images/allshit/breathingoutin0381.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0382.png", __ASSET__assets_images_allshit_breathingoutin0382_png);
		type.set ("assets/images/allshit/breathingoutin0382.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0383.png", __ASSET__assets_images_allshit_breathingoutin0383_png);
		type.set ("assets/images/allshit/breathingoutin0383.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0384.png", __ASSET__assets_images_allshit_breathingoutin0384_png);
		type.set ("assets/images/allshit/breathingoutin0384.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0385.png", __ASSET__assets_images_allshit_breathingoutin0385_png);
		type.set ("assets/images/allshit/breathingoutin0385.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0386.png", __ASSET__assets_images_allshit_breathingoutin0386_png);
		type.set ("assets/images/allshit/breathingoutin0386.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0387.png", __ASSET__assets_images_allshit_breathingoutin0387_png);
		type.set ("assets/images/allshit/breathingoutin0387.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0388.png", __ASSET__assets_images_allshit_breathingoutin0388_png);
		type.set ("assets/images/allshit/breathingoutin0388.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0389.png", __ASSET__assets_images_allshit_breathingoutin0389_png);
		type.set ("assets/images/allshit/breathingoutin0389.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0390.png", __ASSET__assets_images_allshit_breathingoutin0390_png);
		type.set ("assets/images/allshit/breathingoutin0390.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0391.png", __ASSET__assets_images_allshit_breathingoutin0391_png);
		type.set ("assets/images/allshit/breathingoutin0391.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0392.png", __ASSET__assets_images_allshit_breathingoutin0392_png);
		type.set ("assets/images/allshit/breathingoutin0392.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0393.png", __ASSET__assets_images_allshit_breathingoutin0393_png);
		type.set ("assets/images/allshit/breathingoutin0393.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0394.png", __ASSET__assets_images_allshit_breathingoutin0394_png);
		type.set ("assets/images/allshit/breathingoutin0394.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0395.png", __ASSET__assets_images_allshit_breathingoutin0395_png);
		type.set ("assets/images/allshit/breathingoutin0395.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0396.png", __ASSET__assets_images_allshit_breathingoutin0396_png);
		type.set ("assets/images/allshit/breathingoutin0396.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0397.png", __ASSET__assets_images_allshit_breathingoutin0397_png);
		type.set ("assets/images/allshit/breathingoutin0397.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0398.png", __ASSET__assets_images_allshit_breathingoutin0398_png);
		type.set ("assets/images/allshit/breathingoutin0398.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0399.png", __ASSET__assets_images_allshit_breathingoutin0399_png);
		type.set ("assets/images/allshit/breathingoutin0399.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0400.png", __ASSET__assets_images_allshit_breathingoutin0400_png);
		type.set ("assets/images/allshit/breathingoutin0400.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0401.png", __ASSET__assets_images_allshit_breathingoutin0401_png);
		type.set ("assets/images/allshit/breathingoutin0401.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0402.png", __ASSET__assets_images_allshit_breathingoutin0402_png);
		type.set ("assets/images/allshit/breathingoutin0402.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0403.png", __ASSET__assets_images_allshit_breathingoutin0403_png);
		type.set ("assets/images/allshit/breathingoutin0403.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0404.png", __ASSET__assets_images_allshit_breathingoutin0404_png);
		type.set ("assets/images/allshit/breathingoutin0404.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0405.png", __ASSET__assets_images_allshit_breathingoutin0405_png);
		type.set ("assets/images/allshit/breathingoutin0405.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0406.png", __ASSET__assets_images_allshit_breathingoutin0406_png);
		type.set ("assets/images/allshit/breathingoutin0406.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0407.png", __ASSET__assets_images_allshit_breathingoutin0407_png);
		type.set ("assets/images/allshit/breathingoutin0407.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0408.png", __ASSET__assets_images_allshit_breathingoutin0408_png);
		type.set ("assets/images/allshit/breathingoutin0408.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0409.png", __ASSET__assets_images_allshit_breathingoutin0409_png);
		type.set ("assets/images/allshit/breathingoutin0409.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0410.png", __ASSET__assets_images_allshit_breathingoutin0410_png);
		type.set ("assets/images/allshit/breathingoutin0410.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0411.png", __ASSET__assets_images_allshit_breathingoutin0411_png);
		type.set ("assets/images/allshit/breathingoutin0411.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0412.png", __ASSET__assets_images_allshit_breathingoutin0412_png);
		type.set ("assets/images/allshit/breathingoutin0412.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0413.png", __ASSET__assets_images_allshit_breathingoutin0413_png);
		type.set ("assets/images/allshit/breathingoutin0413.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0414.png", __ASSET__assets_images_allshit_breathingoutin0414_png);
		type.set ("assets/images/allshit/breathingoutin0414.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0415.png", __ASSET__assets_images_allshit_breathingoutin0415_png);
		type.set ("assets/images/allshit/breathingoutin0415.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0416.png", __ASSET__assets_images_allshit_breathingoutin0416_png);
		type.set ("assets/images/allshit/breathingoutin0416.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0417.png", __ASSET__assets_images_allshit_breathingoutin0417_png);
		type.set ("assets/images/allshit/breathingoutin0417.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0418.png", __ASSET__assets_images_allshit_breathingoutin0418_png);
		type.set ("assets/images/allshit/breathingoutin0418.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0419.png", __ASSET__assets_images_allshit_breathingoutin0419_png);
		type.set ("assets/images/allshit/breathingoutin0419.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0420.png", __ASSET__assets_images_allshit_breathingoutin0420_png);
		type.set ("assets/images/allshit/breathingoutin0420.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0421.png", __ASSET__assets_images_allshit_breathingoutin0421_png);
		type.set ("assets/images/allshit/breathingoutin0421.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0422.png", __ASSET__assets_images_allshit_breathingoutin0422_png);
		type.set ("assets/images/allshit/breathingoutin0422.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0423.png", __ASSET__assets_images_allshit_breathingoutin0423_png);
		type.set ("assets/images/allshit/breathingoutin0423.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0424.png", __ASSET__assets_images_allshit_breathingoutin0424_png);
		type.set ("assets/images/allshit/breathingoutin0424.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0425.png", __ASSET__assets_images_allshit_breathingoutin0425_png);
		type.set ("assets/images/allshit/breathingoutin0425.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0426.png", __ASSET__assets_images_allshit_breathingoutin0426_png);
		type.set ("assets/images/allshit/breathingoutin0426.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0427.png", __ASSET__assets_images_allshit_breathingoutin0427_png);
		type.set ("assets/images/allshit/breathingoutin0427.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0428.png", __ASSET__assets_images_allshit_breathingoutin0428_png);
		type.set ("assets/images/allshit/breathingoutin0428.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0429.png", __ASSET__assets_images_allshit_breathingoutin0429_png);
		type.set ("assets/images/allshit/breathingoutin0429.png", AssetType.IMAGE);
		
		className.set ("assets/images/allshit/breathingoutin0430.png", __ASSET__assets_images_allshit_breathingoutin0430_png);
		type.set ("assets/images/allshit/breathingoutin0430.png", AssetType.IMAGE);
		
		className.set ("assets/images/images-go-here.txt", __ASSET__assets_images_images_go_here_txt);
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		
		className.set ("assets/images/ninja_cam_breathing_sim.html", __ASSET__assets_images_ninja_cam_breathing_sim_html);
		type.set ("assets/images/ninja_cam_breathing_sim.html", AssetType.TEXT);
		
		className.set ("assets/images/ninja_cam_breathing_sim.js", __ASSET__assets_images_ninja_cam_breathing_sim_js);
		type.set ("assets/images/ninja_cam_breathing_sim.js", AssetType.TEXT);
		
		className.set ("assets/music/I-Am.mp3", __ASSET__assets_music_i_am_mp3);
		type.set ("assets/music/I-Am.mp3", AssetType.MUSIC);
		
		className.set ("assets/music/music-goes-here.txt", __ASSET__assets_music_music_goes_here_txt);
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		
		className.set ("assets/sounds/sounds-go-here.txt", __ASSET__assets_sounds_sounds_go_here_txt);
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		
		className.set ("flixel/sounds/beep.mp3", __ASSET__flixel_sounds_beep_mp3);
		type.set ("flixel/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("flixel/sounds/flixel.mp3", __ASSET__flixel_sounds_flixel_mp3);
		type.set ("flixel/sounds/flixel.mp3", AssetType.MUSIC);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.dataFormat = flash.net.URLLoaderDataFormat.BINARY;
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofData (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_data_data_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0003_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0004_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0005_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0006_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0007_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0008_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0009_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0010_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0011_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0012_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0013_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0014_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0015_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0016_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0017_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0018_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0019_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0020_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0021_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0022_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0023_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0024_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0025_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0026_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0027_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0028_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0029_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0030_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0031_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0032_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0033_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0034_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0035_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0036_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0037_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0038_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0039_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0040_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0041_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0042_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0043_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0044_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0045_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0046_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0047_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0048_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0049_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0050_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0051_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0052_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0053_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0054_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0055_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0056_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0057_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0058_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0059_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0060_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0061_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0062_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0063_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0064_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0065_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0066_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0067_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0068_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0069_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0070_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0071_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0072_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0073_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0074_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0075_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0076_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0077_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0078_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0079_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0080_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0081_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0082_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0083_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0084_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0085_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0086_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0087_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0088_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0089_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0090_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0091_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0092_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0093_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0094_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0095_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0096_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0097_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0098_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0099_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0100_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0101_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0102_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0103_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0104_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0105_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0106_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0107_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0108_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0109_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0110_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0111_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0112_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0113_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0114_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0115_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0116_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0117_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0118_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0119_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0120_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0121_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0122_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0123_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0124_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0125_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0126_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0127_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0128_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0129_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0130_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0131_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0132_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0133_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0134_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0135_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0136_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0137_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0138_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0139_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0140_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0141_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0142_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0143_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0144_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0145_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0146_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0147_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0148_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0149_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0150_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0151_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0152_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0153_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0154_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0155_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0156_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0157_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0158_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0159_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0160_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0161_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0162_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0163_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0164_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0165_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0166_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0167_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0168_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0169_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0170_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0171_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0172_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0173_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0174_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0175_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0176_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0177_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0178_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0179_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0180_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0181_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0182_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0183_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0184_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0185_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0186_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0187_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0188_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0189_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0190_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0191_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0192_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0193_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0194_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0195_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0196_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0197_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0198_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0199_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0200_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0201_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0202_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0203_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0204_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0205_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0206_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0207_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0208_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0209_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0210_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0211_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0212_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0213_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0214_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0215_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0216_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0217_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0218_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0219_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0220_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0221_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0222_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0223_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0224_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0225_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0226_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0227_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0228_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0229_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0230_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0231_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0232_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0233_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0234_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0235_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0236_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0237_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0238_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0239_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0240_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0241_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0242_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0243_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0244_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0245_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0246_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0247_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0248_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0249_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0250_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0251_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0252_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0253_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0254_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0255_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0256_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0257_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0258_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0259_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0260_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0261_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0262_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0263_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0264_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0265_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0266_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0267_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0268_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0269_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0270_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0271_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0272_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0273_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0274_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0275_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0276_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0277_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0278_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0279_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0280_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0281_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0282_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0283_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0284_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0285_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0286_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0287_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0288_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0289_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0290_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0291_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0292_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0293_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0294_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0295_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0296_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0297_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0298_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0299_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0300_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0301_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0302_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0303_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0304_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0305_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0306_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0307_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0308_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0309_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0310_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0311_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0312_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0313_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0314_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0315_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0316_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0317_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0318_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0319_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0320_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0321_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0322_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0323_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0324_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0325_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0326_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0327_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0328_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0329_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0330_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0331_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0332_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0333_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0334_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0335_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0336_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0337_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0338_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0339_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0340_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0341_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0342_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0343_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0344_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0345_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0346_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0347_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0348_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0349_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0350_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0351_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0352_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0353_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0354_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0355_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0356_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0357_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0358_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0359_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0360_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0361_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0362_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0363_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0364_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0365_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0366_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0367_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0368_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0369_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0370_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0371_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0372_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0373_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0374_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0375_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0376_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0377_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0378_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0379_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0380_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0381_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0382_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0383_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0384_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0385_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0386_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0387_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0388_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0389_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0390_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0391_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0392_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0393_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0394_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0395_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0396_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0397_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0398_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0399_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0400_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0401_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0402_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0403_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0404_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0405_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0406_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0407_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0408_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0409_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0410_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0411_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0412_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0413_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0414_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0415_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0416_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0417_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0418_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0419_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0420_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0421_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0422_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0423_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0424_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0425_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0426_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0427_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0428_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0429_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_allshit_breathingoutin0430_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_images_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_ninja_cam_breathing_sim_html extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_ninja_cam_breathing_sim_js extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_music_i_am_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_music_music_goes_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }


#elseif html5
























































































































































































































































































































































































































































@:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { super (); name = "Nokia Cellphone FC Small"; } } 
@:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { super (); name = "Monsterrat"; } } 




#else



#if (windows || mac || linux || cpp)


@:file("assets/data/data-goes-here.txt") #if display private #end class __ASSET__assets_data_data_goes_here_txt extends lime.utils.Bytes {}
@:image("assets/images/allshit/breathingoutin0001.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0001_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0002.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0002_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0003.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0003_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0004.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0004_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0005.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0005_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0006.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0006_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0007.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0007_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0008.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0008_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0009.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0009_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0010.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0010_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0011.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0011_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0012.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0012_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0013.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0013_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0014.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0014_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0015.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0015_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0016.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0016_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0017.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0017_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0018.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0018_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0019.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0019_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0020.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0020_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0021.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0021_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0022.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0022_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0023.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0023_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0024.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0024_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0025.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0025_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0026.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0026_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0027.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0027_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0028.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0028_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0029.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0029_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0030.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0030_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0031.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0031_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0032.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0032_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0033.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0033_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0034.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0034_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0035.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0035_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0036.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0036_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0037.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0037_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0038.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0038_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0039.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0039_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0040.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0040_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0041.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0041_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0042.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0042_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0043.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0043_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0044.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0044_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0045.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0045_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0046.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0046_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0047.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0047_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0048.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0048_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0049.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0049_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0050.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0050_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0051.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0051_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0052.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0052_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0053.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0053_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0054.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0054_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0055.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0055_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0056.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0056_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0057.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0057_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0058.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0058_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0059.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0059_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0060.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0060_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0061.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0061_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0062.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0062_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0063.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0063_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0064.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0064_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0065.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0065_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0066.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0066_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0067.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0067_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0068.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0068_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0069.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0069_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0070.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0070_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0071.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0071_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0072.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0072_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0073.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0073_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0074.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0074_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0075.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0075_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0076.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0076_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0077.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0077_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0078.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0078_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0079.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0079_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0080.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0080_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0081.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0081_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0082.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0082_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0083.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0083_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0084.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0084_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0085.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0085_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0086.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0086_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0087.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0087_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0088.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0088_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0089.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0089_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0090.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0090_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0091.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0091_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0092.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0092_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0093.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0093_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0094.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0094_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0095.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0095_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0096.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0096_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0097.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0097_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0098.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0098_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0099.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0099_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0100.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0100_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0101.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0101_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0102.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0102_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0103.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0103_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0104.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0104_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0105.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0105_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0106.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0106_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0107.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0107_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0108.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0108_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0109.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0109_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0110.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0110_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0111.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0111_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0112.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0112_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0113.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0113_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0114.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0114_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0115.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0115_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0116.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0116_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0117.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0117_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0118.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0118_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0119.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0119_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0120.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0120_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0121.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0121_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0122.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0122_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0123.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0123_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0124.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0124_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0125.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0125_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0126.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0126_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0127.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0127_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0128.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0128_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0129.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0129_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0130.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0130_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0131.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0131_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0132.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0132_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0133.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0133_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0134.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0134_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0135.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0135_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0136.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0136_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0137.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0137_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0138.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0138_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0139.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0139_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0140.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0140_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0141.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0141_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0142.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0142_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0143.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0143_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0144.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0144_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0145.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0145_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0146.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0146_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0147.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0147_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0148.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0148_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0149.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0149_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0150.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0150_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0151.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0151_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0152.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0152_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0153.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0153_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0154.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0154_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0155.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0155_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0156.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0156_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0157.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0157_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0158.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0158_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0159.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0159_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0160.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0160_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0161.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0161_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0162.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0162_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0163.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0163_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0164.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0164_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0165.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0165_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0166.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0166_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0167.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0167_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0168.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0168_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0169.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0169_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0170.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0170_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0171.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0171_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0172.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0172_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0173.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0173_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0174.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0174_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0175.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0175_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0176.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0176_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0177.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0177_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0178.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0178_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0179.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0179_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0180.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0180_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0181.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0181_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0182.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0182_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0183.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0183_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0184.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0184_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0185.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0185_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0186.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0186_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0187.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0187_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0188.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0188_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0189.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0189_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0190.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0190_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0191.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0191_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0192.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0192_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0193.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0193_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0194.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0194_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0195.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0195_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0196.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0196_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0197.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0197_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0198.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0198_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0199.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0199_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0200.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0200_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0201.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0201_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0202.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0202_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0203.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0203_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0204.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0204_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0205.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0205_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0206.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0206_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0207.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0207_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0208.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0208_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0209.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0209_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0210.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0210_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0211.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0211_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0212.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0212_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0213.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0213_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0214.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0214_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0215.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0215_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0216.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0216_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0217.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0217_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0218.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0218_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0219.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0219_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0220.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0220_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0221.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0221_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0222.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0222_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0223.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0223_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0224.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0224_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0225.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0225_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0226.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0226_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0227.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0227_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0228.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0228_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0229.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0229_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0230.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0230_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0231.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0231_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0232.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0232_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0233.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0233_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0234.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0234_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0235.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0235_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0236.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0236_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0237.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0237_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0238.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0238_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0239.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0239_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0240.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0240_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0241.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0241_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0242.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0242_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0243.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0243_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0244.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0244_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0245.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0245_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0246.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0246_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0247.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0247_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0248.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0248_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0249.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0249_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0250.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0250_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0251.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0251_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0252.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0252_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0253.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0253_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0254.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0254_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0255.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0255_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0256.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0256_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0257.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0257_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0258.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0258_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0259.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0259_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0260.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0260_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0261.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0261_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0262.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0262_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0263.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0263_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0264.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0264_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0265.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0265_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0266.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0266_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0267.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0267_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0268.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0268_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0269.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0269_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0270.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0270_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0271.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0271_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0272.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0272_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0273.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0273_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0274.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0274_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0275.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0275_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0276.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0276_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0277.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0277_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0278.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0278_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0279.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0279_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0280.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0280_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0281.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0281_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0282.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0282_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0283.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0283_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0284.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0284_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0285.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0285_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0286.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0286_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0287.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0287_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0288.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0288_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0289.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0289_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0290.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0290_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0291.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0291_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0292.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0292_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0293.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0293_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0294.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0294_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0295.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0295_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0296.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0296_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0297.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0297_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0298.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0298_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0299.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0299_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0300.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0300_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0301.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0301_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0302.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0302_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0303.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0303_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0304.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0304_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0305.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0305_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0306.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0306_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0307.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0307_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0308.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0308_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0309.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0309_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0310.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0310_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0311.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0311_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0312.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0312_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0313.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0313_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0314.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0314_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0315.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0315_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0316.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0316_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0317.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0317_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0318.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0318_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0319.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0319_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0320.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0320_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0321.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0321_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0322.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0322_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0323.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0323_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0324.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0324_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0325.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0325_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0326.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0326_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0327.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0327_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0328.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0328_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0329.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0329_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0330.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0330_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0331.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0331_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0332.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0332_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0333.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0333_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0334.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0334_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0335.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0335_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0336.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0336_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0337.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0337_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0338.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0338_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0339.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0339_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0340.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0340_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0341.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0341_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0342.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0342_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0343.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0343_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0344.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0344_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0345.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0345_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0346.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0346_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0347.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0347_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0348.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0348_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0349.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0349_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0350.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0350_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0351.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0351_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0352.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0352_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0353.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0353_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0354.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0354_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0355.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0355_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0356.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0356_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0357.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0357_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0358.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0358_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0359.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0359_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0360.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0360_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0361.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0361_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0362.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0362_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0363.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0363_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0364.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0364_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0365.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0365_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0366.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0366_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0367.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0367_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0368.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0368_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0369.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0369_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0370.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0370_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0371.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0371_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0372.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0372_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0373.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0373_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0374.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0374_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0375.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0375_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0376.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0376_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0377.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0377_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0378.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0378_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0379.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0379_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0380.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0380_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0381.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0381_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0382.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0382_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0383.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0383_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0384.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0384_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0385.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0385_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0386.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0386_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0387.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0387_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0388.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0388_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0389.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0389_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0390.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0390_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0391.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0391_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0392.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0392_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0393.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0393_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0394.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0394_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0395.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0395_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0396.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0396_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0397.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0397_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0398.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0398_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0399.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0399_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0400.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0400_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0401.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0401_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0402.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0402_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0403.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0403_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0404.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0404_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0405.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0405_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0406.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0406_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0407.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0407_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0408.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0408_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0409.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0409_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0410.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0410_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0411.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0411_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0412.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0412_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0413.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0413_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0414.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0414_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0415.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0415_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0416.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0416_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0417.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0417_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0418.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0418_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0419.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0419_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0420.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0420_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0421.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0421_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0422.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0422_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0423.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0423_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0424.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0424_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0425.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0425_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0426.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0426_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0427.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0427_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0428.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0428_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0429.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0429_png extends lime.graphics.Image {}
@:image("assets/images/allshit/breathingoutin0430.png") #if display private #end class __ASSET__assets_images_allshit_breathingoutin0430_png extends lime.graphics.Image {}
@:file("assets/images/images-go-here.txt") #if display private #end class __ASSET__assets_images_images_go_here_txt extends lime.utils.Bytes {}
@:file("assets/images/ninja_cam_breathing_sim.html") #if display private #end class __ASSET__assets_images_ninja_cam_breathing_sim_html extends lime.utils.Bytes {}
@:file("assets/images/ninja_cam_breathing_sim.js") #if display private #end class __ASSET__assets_images_ninja_cam_breathing_sim_js extends lime.utils.Bytes {}
@:file("assets/music/I-Am.mp3") #if display private #end class __ASSET__assets_music_i_am_mp3 extends lime.utils.Bytes {}
@:file("assets/music/music-goes-here.txt") #if display private #end class __ASSET__assets_music_music_goes_here_txt extends lime.utils.Bytes {}
@:file("assets/sounds/sounds-go-here.txt") #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/beep.mp3") #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/flixel.mp3") #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends lime.utils.Bytes {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_nokiafc22_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_monsterrat_ttf (); src = font.src; name = font.name; super (); }}

#end

#end