package;
import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;
import flash.events.KeyboardEvent;


/**
 * ...
 * @author Trey Clark
 */
class Game extends Sprite
{ 
	public var com:Commando;
	public static var game:Game;
	public var tracks:List<Platform>;
	var keys:Array<Int>;
	var count:Int;
	
	public function new() 
	{
		super();
		game = this;
		count = 0;
		com = new Commando();
		this.addChild(com);
		tracks = new List<Platform>();
		var track = new Platform(10, 400, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 325, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 250, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 175, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyCheck);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, act);
		keys = new Array<Int>();
	}
	
	public function act(e : Event) :Void
	{
		com.move();	
		this.x = - game.com.x + 400;
		count ++;
		if (count % 45 == 0)
		{
			tracks.clear();
			var track = new Platform(game.com.x, 400, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x, 325, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x, 250, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x, 175, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			count = 0;
		}
		
	}
	
	public function keyCheck(e : KeyboardEvent)
	{
		trace(e.keyCode);
		//if (! keyCheck(e.keyCode)) keys.push(e.keyCode);
		if (e.keyCode == 70) game.com.moveLeft();
		if (e.keyCode == 72) game.com.moveRight();
		if (e.keyCode == 84) game.com.jump();
	}
	
}