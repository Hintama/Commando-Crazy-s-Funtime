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
		var img = new Bitmap(Assets.getBitmapData("img/Galaxy2.png"));
		sprite = new Sprite();
		sprite.addChild(img);
		this.addChild(sprite);
		this.height = 480;
		this.width = 980;
	}
	
}