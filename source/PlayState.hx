package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var _player:Player;
	
	
	private var song:FlxSound;
	private var lastBeat:Float;
	private var lastBar:Float;
	private var _totalBeats:Float = 0;
	private var _totalBars:Float = 0;
	
	/**
	 * What to multiply the crochet by to create a bar
	 */
	private var _barMulitplier:Float = 4;
	
	
	private var _inhale:Bool = true;
	private var _text:FlxText;
	
	
	override public function create():Void
	{
		FlxG.fixedTimestep = false;
		FlxG.camera.bgColor = FlxColor.WHITE;
		
		_player = new Player(0, 100);
		_player.screenCenter(X);
		add(_player);
		
		
		
		initSong();
		
		lastBeat = 0;
		lastBar = 0;
		
		_text = new FlxText(0, 0, 0, "Inhale", 30);
		_text.screenCenter();
		_text.color = FlxColor.BLACK;
		add(_text);
		
		textResize();
		
		super.create();
	}
	
	
	private function initSong():Void
	{
		song = new FlxSound();
		song.loadEmbedded("assets/music/I-Am.mp3");
		add(song);
		song.play();
	}

	override public function update(elapsed:Float):Void
	{	
		super.update(elapsed);
		
		Conductor.songPosition = song.time;
		
		positionCheck();
		
		if (_inhale)
		{
			_text.text = "Inhale";
		}
		else
		{
			_text.text = "Exhale";
		}
		
	}
	
	private function positionCheck():Void
	{
		//every beat
		if (Conductor.songPosition > lastBeat + Conductor.crochet)
		{
			lastBeat += Conductor.crochet;
			
			_totalBeats += 1;
			_totalBars = _totalBeats / 4;
			
			FlxG.log.add("BEEAT" + _totalBeats);
			
		}
		
		//Runs every bar
		if (Conductor.songPosition > lastBar + (Conductor.crochet * _barMulitplier))
		{
			lastBar += Conductor.crochet * _barMulitplier;
			
			_inhale = !_inhale;
			
			
			textResize();
			
			
			
			FlxG.log.add("BAR " + _totalBars);
		}
	}
	
	private function textResize():Void
	{
		if (_inhale)
		{
			FlxTween.tween(_text, {size: 50}, Conductor.crochet * _barMulitplier * 0.001);
		}
		else
		{
			FlxTween.tween(_text, {size: 30}, Conductor.crochet * _barMulitplier * 0.001);
		}
	}
}