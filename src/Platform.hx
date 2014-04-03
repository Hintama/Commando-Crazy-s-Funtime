package;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import openfl.Assets;

/**
 * ...
 * @author Trey Clark
 */
class Platform extends Sprite
{
	var img:BitmapData;
	var sprite:Sprite;
	var tall:Int;
	public var wide:Int;

	public function new(x,y,w,h) 
	{
		super();
		this.graphics.beginFill(0x222222);
		this.graphics.drawRoundRect(0, 0, w, h, 4);
		var img = new Bitmap(Assets.getBitmapData("img/Asteriod3.png"));
		sprite = new Sprite();
		sprite.addChild(img);
		this.addChild(sprite);
		this.x = x;
		this.y = y;
		wide = Std.int(w);
		tall = Std.int(h);
		this.width = wide;
		this.height = tall;
	}
	
	public function disappear()
	{
		this.graphics.beginFill(0xFFCC33);
	}
	
}