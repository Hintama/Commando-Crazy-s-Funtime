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
	public static var game:Game;
	public var tracks:List<Platform>;
	public var badguys:List<Enemy>;
	var keys:Array<Int>;
	var count:Int;
	var rand:Float;
	//var comx:Float;
	
	public function new() 
	{
		super();
		game = this;
		count = 0;
		com = new Commando();
		this.addChild(com);
		tracks = new List<Platform>();
		badguys = new List<Enemy>();
		var track = new Platform(10, 400, 1400, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 300, 1400, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 200, 1400, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 100, 1400, 10);
		tracks.push(track);
		this.addChild(track);
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyCheck);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, act);
		keys = new Array<Int>();
	}
	
	public function act(e : Event) :Void
	{
		com.move();	
		this.x = - game.com.x + 150;
		rand = Math.random();
		//game.comx = game.com.x;
		//game.comx = game.comx - (game.comx % 1);
		if ((count % 15 == 0))
		{
			for (track in tracks)
			{
				game.removeChild(track);
			}
			tracks.clear();
			var track = new Platform(game.com.x - 150, 375, 1800, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x - 150, 275, 1800, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x - 150, 175, 1800, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x - 150, 75, 1800, 10);
			tracks.push(track);
			this.addChild(track);
			//var track = new Platform(game.com.x + 150, 20, 100, 10);
			//tracks.push(track);
			//this.addChild(track);
			count = 0;
			//trace (game.tracks.length);
		}
		
		rand = rand * 100;
		if (rand > 99)
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
				game.removeChild(badguy);
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
	
}
