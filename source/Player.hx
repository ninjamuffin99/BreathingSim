package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxMath;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ninjaMuffin
 */
class Player extends FlxSprite 
{
	private var midBreatheFrames:Int = 0;
	private var oldAnimFrames:Int = 0;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic(AssetPaths.breathIn__png, true, Std.int(48670 / 62), 1038);
		setGraphicSize(Std.int(width / 2));
		updateHitbox();
		
		animation.add("idle", [0]);
		
		//This is hell brandy why 60 fps ooof
		//shake frame 21 for a while
		animation.add("Inhale", [0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		1, 1, 1, 
		2, 2, 2, 2, 2, 2,
		3, 3, 3,
		4, 4, 4, 
		5, 5, 5, 
		6, 6, 6, 
		7, 7, 7, 
		8, 8, 8, 
		9, 9, 9, 9,
		10, 10, 10,
		11, 11, 
		12, 12, 
		13, 13,
		14, 14, 14,
		15, 15, 15,
		16, 16, 
		17, 17, 
		18, 18,
		19, 19,
		20, 20, 20,
		21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 
		22, 22, 22, 22, 22,
		23, 23, 23, 23, 23,
		24, 24, 24, 24, 24,
		25, 25, 25, 25, 25, 25, 25, 25,
		26, 26, 26, 26, 26,
		27, 27, 27, 27, 27,
		28, 28, 28, 28, 28, 
		29, 29, 29, 29, 29,
		30, 30, 30, 30, 30, 
		31, 31, 31, 31, 31,
		32, 32, 32, 32, 32], 45, false);
		
		//pause and shake frame 54
		animation.add("Exhale", [33, 33, 33,
		34, 34, 34,34, 34, 34,
		35, 35, 35,35, 35, 35,
		36, 36, 36,
		36, 36, 36,
		37, 37, 37, 
		37, 37, 37, 
		38, 38, 38, 
		38, 38, 38, 
		39, 39, 39, 
		39, 39, 39, 
		40, 40, 40, 40,
		41, 41, 41, 
		42, 42, 42, 
		43, 43, 43, 
		44, 44, 44, 
		45, 45, 45, 
		46, 46, 46, 
		47, 47, 47, 47, 
		48, 48, 48, 48, 
		49, 49, 49, 49, 
		50, 50, 50, 50, 
		51, 51, 51, 51, 
		52, 52, 52, 52, 
		53, 53, 53, 53, 
		54, 54, 54, 54, 54, 54, 54, 54, 54, 
		55, 55, 55, 
		56, 56, 56, 
		57, 57, 57, 
		58, 58, 58, 
		59, 59, 59, 
		60, 60, 60, 
		61, 61, 61], 50, false);
		
		
		
		
		animation.play("idle");
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		midBreatheFrames = Std.int(FlxMath.remapToRange(animation.curAnim.curFrame, animation.curAnim.numFrames, 0, oldAnimFrames, 0));
		
		if (FlxG.keys.justPressed.SPACE)
		{
			animation.play("Inhale");
			oldAnimFrames = 119;
			//136 frames
			FlxG.log.add(animation.curAnim.numFrames);
		}
		
		if (FlxG.keys.justReleased.SPACE)
		{
			animation.play("Exhale");
			oldAnimFrames = 136;
			//119 frames
			FlxG.log.add(animation.curAnim.numFrames);
		}
		
	}
	
}