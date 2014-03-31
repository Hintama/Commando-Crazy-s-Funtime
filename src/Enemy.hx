package;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import openfl.Assets;
import Math;

/**
 * ...
 * @author Trey Clark
 */
class Enemy extends Sprite 
{
	var img:BitmapData;
	var ra:Float;
	var sprite:Sprite;
	var flip:Float;
	
	public function new() 
	{
		super();
		ra = 0;
		var img = new Bitmap(Assets.getBitmapData("img/commando.png"));
		sprite = new Sprite();
		sprite.addChild(img);
		this.addChild(sprite);
		this.x = Game.game.com.x + 1000;
		//this.y = 70;
		this.findY();
	}
	
	function findY()
	{
		ra = Math.random();
		ra = ra * 8;
		if (ra < 1)
		{
			this.y = 39;
		}
		if ((ra > 1) && (ra < 2))
		{
			this.y = 122;
		}
		if ((ra > 2) && (ra < 3))
		{
			this.y = 139;
		}
		if ((ra > 3) && (ra < 4))
		{
			this.y = 222;
		}
		if ((ra > 4) && (ra < 5))
		{
			this.y = 239;
		}
		if ((ra > 5) && (ra < 6))
		{
			this.y = 322;
		}
		if ((ra > 6) && (ra < 7))
		{
			this.y = 339;
		}
		if (ra > 7)
		{
			this.y = 422;
		}
		
		flip = ra - (ra % 1);
		flip = flip + 1;
		
		if (flip % 2 == 0)
		{
			this.rotation = 180;
		}
		
		
	}
	
	public function die()
	{
		this.removeChild(sprite);
	}
}