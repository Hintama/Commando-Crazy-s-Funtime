package;
import flash.display.Sprite;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import openfl.Assets;

/**
 * ...
 * @author Trey Clark
 */
class Controlsmenu extends Sprite
{
	var img:BitmapData;

	public function new() 
	{
		super();
		var img = new Bitmap(Assets.getBitmapData("img/Menu2.png"));
		this.addChild(img);
	}
	
}