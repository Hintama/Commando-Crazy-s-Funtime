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
		diff = 0.1;
		v = -100;
		count = 0;
		time = 0;
		backgroundcounter = 0;
		backgrounds = new List<Background>();
		generateBackground(v);
		com = new Commando();
		this.addChild(com);
		tracks = new List<Platform>();
		badguys = new List<Enemy>();
		this.generateTracks();
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyCheck);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, act);
		keys = new Array<Int>();
	}
	
	public function act(e : Event) :Void
	{
		com.move();	
		for (badguy in badguys)
		{
			badguy.hit();
		}
		time--;
		diffCount();
		this.x = - game.com.x + 150;
		rand = Math.random();
		if ((count % 15 == 0) && (time < 0))
		{
			for (track in tracks)
			{
				game.removeChild(track);
			}
			tracks.clear();
			this.generateTracks();
			count = 0;
			time = 20;
		}
		
		rand = rand * 100;
		if (rand > 98 - (diff * .65))
		{
			var badguy = new Enemy();
			badguys.push(badguy);
			this.addChild(badguy);
			//trace(rand);
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
		var track = new Platform(game.com.x - 150, 375, 1800, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x - 150, 225, 1800, 10);
		tracks.push(track);
		this.addChild(track);
		/*var track = new Platform(game.com.x - 150, 175, 1800, 10);
		tracks.push(track);
		this.addChild(track);*/
		var track = new Platform(game.com.x - 150, 75, 1800, 10);
		tracks.push(track);
		this.addChild(track);
		//var track = new Platform(game.com.x + 150, 20, 100, 10);
		//tracks.push(track);
		//this.addChild(track);
	}
	
	public function backgroundSpawn()
	{
		if ((((com.x + 800) % 800 = 0) && (backgroundcounter < 0)) || (((Game.game.com.x + 801) % 800 = 0) && (backgroundcounter < 0)) || (((Game.game.com.x + 799 % 800) = 0) && (backgroundcounter < 0)))
		{
			v = com.x + 800;
			generateBackground(v);
			backgroundcounter = 25;
		}
		backgroundcounter--;
	}
	
	public function generateBackground(v:Int)
	{
		background = new Background();
		if (com.x == 0)
		{
			background.x = -100;
		}
		this.addChild(background);
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
