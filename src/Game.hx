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
	public var tracks:Array<Platform>;
	var keys:Array<Int>;
	
	public function new() 
	{
		super();
		com = new Commando();
		this.addChild(com);
		game = this;
		tracks = new Array<Platform>();
		var track = new Platform(10, 400, 1000, 10);
		tracks.push(track);
		this.addChild(track);
		Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyCheck);
		Lib.current.stage.addEventListener(Event.ENTER_FRAME, act);
		keys = new Array<Int>();
	}
	
	public function act(e : Event) :Void
	{
		com.move();
		if (keyCheck('A'.charCodeAt(0))) com.moveLeft;
		if (keyCheck('D'.charCodeAt(0))) com.moveRight;
	}
	
	public function keyCheck(v:Int) : Bool
	{
		for (item in keys)
		{
			if (item == v) return true;
		}
		return false;
	}
	
}