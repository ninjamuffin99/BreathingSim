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
	
	private var _titleText:FlxText;
	private var _subText:FlxText;
	private var _textSucked:Bool = false;
	
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
		
		_titleText = new FlxText(0, FlxG.height * 0.07, 0, "Breathing Simulator", 40);
		_titleText.screenCenter(X);
		_titleText.color = FlxColor.BLACK;
		add(_titleText);
		
		_subText = new FlxText(0, FlxG.height * 0.16, 0, "A game by NinjaMuffin99 and BrandyBuizel \nPress and hold Space to breathe", 15);
		_subText.alignment = FlxTextAlign.CENTER;
		_subText.color = FlxColor.BLACK;
		_subText.screenCenter(X);
		add(_subText);
		
		initSong();
		
		lastBeat = 0;
		lastBar = 0;
		
		_text = new FlxText(0, FlxG.height * 0.07 , 0, "Inhale", 30);
		_text.screenCenter(X);
		_text.centerOrigin();
		_text.color = FlxColor.BLACK;
		_text.alpha = 0;
		add(_text);
		
		textResize();
		
		super.create();
	}
	
	
	private function initSong():Void
	{
		song = new FlxSound();
		song.loadEmbedded("assets/music/I-Am.mp3");
		add(song);
		
	}

	override public function update(elapsed:Float):Void
	{	
		super.update(elapsed);
		
		if (FlxG.keys.justPressed.SPACE && !_textSucked)
		{
			FlxTween.tween(_titleText, {x: FlxG.width / 2, y: FlxG.width / 2, size:1, angle: 360}, 2.25);
			FlxTween.tween(_subText, {x: FlxG.width / 2, y: FlxG.width / 2, size:1, angle: -460}, 2.5);
			FlxTween.tween(_text, {alpha: 1}, 3);
			_textSucked = true;
			song.play();
			song.fadeIn(3.5);
		}
		
		if (_titleText.size == 1)
		{
			_titleText.visible = false;
			_subText.visible = false;
		}
		
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