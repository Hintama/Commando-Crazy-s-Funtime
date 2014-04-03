package;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import flash.events.KeyboardEvent;
import haxe.rtti.CType.Platforms;


/**
 * ...
 * @author Trey Clark
 */
class Game extends Sprite
{ 
	public var com:Commando;
	public var runner:Runner;
	public var backgroundrunner:Runner;
	public var background:Background;
	public var backgrounds:List<Background>;
	public static var game:Game;
	public var tracks:List<Platform>;
	public var badguys:List<Enemy>;
	public var diff:Float;
	var backgroundcounter:Int;
	var keys:Array<Int>;
	var count:Int;
	var time:Int;
	var rand:Float;
	var v:Int;
	
	public function new() 
	{
		super();
		game = this;
		diff = .1;
		v = -100;
		count = 0;
		time = 0;
		runner = new Runner();
		this.addChild(runner);
		runner.y = 223;
		backgroundrunner = new Runner();
		backgrounds = new List<Background>();
		background = new Background();
		backgrounds.push(background);
		this.addChild(background);
		com = new Commando();
		this.addChild(com);
		tracks = new List<Platform>();
		badguys = new List<Enemy>();
		var track = new Platform(game.com.x -150, 375, 1300, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x - 150, 225, 1300, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x - 150, 75, 1300, 10);
		tracks.push(track);
		this.addChild(track);
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyCheck);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, act);
		keys = new Array<Int>();
	}
	
	public function act(e : Event) :Void
	{
		com.move();	
		runner.run();
		backgroundrunner.run();
		for (badguy in badguys)
		{
			badguy.hit();
		}
		time--;
		diffCount();
		this.x = - game.com.x + 150;
		background.x = this.x;
		rand = Math.random();
		
		if (!(runner.trackTest()))
		{
			for (track in tracks)
			{
				if (track.x < game.com.x - 1300)
				{
					game.tracks.remove(track);
				}
			}
			this.generateTracks();
		}
		
		if (!(backgroundrunner.backgroundTest()))
		{
			for (background in backgrounds)
			{
				if (background.x < game.com.x - 1300)
				{
					game.backgrounds.remove(background);
				}
				background = new Background();
				backgrounds.push(background);
				this.addChild(background);
			}
		}
		
		rand = rand * 100;
		if (rand > 98 - (diff * .65))
		{
			var badguy = new Enemy();
			badguys.push(badguy);
			this.addChild(badguy);
		}
		count++;
		
		for (badguy in badguys)
		{
			if (badguy.x < com.x - 300)
			{
				badguys.remove(badguy);
			}
		}
	}
	
	public function keyCheck(e : KeyboardEvent)
	{
		//trace(e.keyCode);
		//if (! keyCheck(e.keyCode)) keys.push(e.keyCode);
		if (e.keyCode == 65) game.com.moveLeft();
		if (e.keyCode == 68) game.com.moveRight();
		if (e.keyCode == 87) game.com.swtch();
		if (e.keyCode == 83) game.com.fall();
	}
	
	
	public function generateTracks()
	{
		var track = new Platform(game.com.x + 678, 375, 1300, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x + 678, 225, 1300, 10);
		tracks.push(track);
		this.addChild(track);
		/*var track = new Platform(game.com.x - 150, 175, 1800, 10);
		tracks.push(track);
		this.addChild(track);*/
		var track = new Platform(game.com.x + 678, 75, 1300, 10);
		tracks.push(track);
		this.addChild(track);
	}
	
	public function diffCount()
	{
		if (diff < 5.1)
		{
			diff += .00065;
			if (diff > 5.1)
			{
				diff = 5.1;
			}
		}
	}
}
