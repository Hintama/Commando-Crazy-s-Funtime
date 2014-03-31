package;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import openfl.Assets;

/**
 * ...
 * @author Trey Clark
 */
class Enemy extends Sprite 
{
	var img:BitmapData;
	var random:Float;
	var sprite:Sprite;
	
	public function new() 
	{
		super();
		var img = new Bitmap(Assets.getBitmapData("img/commando.png"));
		sprite = new Sprite();
		sprite.addChild(img);
		this.addChild(sprite);
		this.x = Game.game.com.x + 1000;
		this.y = 70;
		//this.findY();
		//random = Math.random();
	}
	
	function findY()
	{
		random = random * 8;
		
		
		
	}
	
	
}