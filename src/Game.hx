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
		var track = new Platform(game.com.x, 300, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 200, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		var track = new Platform(game.com.x, 100, 1000, 10);
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
		count ++;
		if (count % 6 == 0)
		{
			for (track in tracks)
			{
				game.removeChild(track);
			}
			tracks.clear();
			var track = new Platform(game.com.x - 150, 375, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x - 150, 275, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x - 150, 175, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x - 150, 75, 1000, 10);
			tracks.push(track);
			this.addChild(track);
			var track = new Platform(game.com.x + 150, 20, 100, 10);
			tracks.push(track);
			this.addChild(track);
			count = 0;
			//trace (game.tracks.length);
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
