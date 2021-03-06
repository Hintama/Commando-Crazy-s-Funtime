package;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import openfl.Assets;

/**
 * ...
 * @author Trey Clark
 */
class Background extends Sprite
{
	var img:BitmapData;
	var sprite:Sprite;
	
	public function new() 
	{
		super();
		var img = new Bitmap(Assets.getBitmapData("img/Galaxy3.png"));
		sprite = new Sprite();
		sprite.width = 980;
		sprite.height = 485;
		sprite.addChild(img);
		this.addChild(sprite);
		this.height = 485;
		this.width = 980;
		this.x = Game.game.backgroundrunner.x;
		this.y = 200;
	}
	
}