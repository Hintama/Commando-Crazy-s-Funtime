package;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import openfl.Assets;
/**
 * ...
 * @author ...
 */
class Runner extends Sprite 
{
	var img:BitmapData;
	var sprite:Sprite;

	public function new() 
	{
		super();
		var img = new Bitmap(Assets.getBitmapData("img/commando2.png"));
		sprite = new Sprite();
		sprite.addChild(img);
		this.addChild(sprite);
	}
	
	public function run()
	{
		this.x = Game.game.com.x + 680;
	}
	
	public function trackTest()
	{
		for (track in Game.game.tracks)
		{
			if (this.hitTestObject(track))
			{
				return true;
			}
		}
		return false;
	}
	
	public function backgroundTest()
	{
		//for (background in Game.game.backgrounds)
		//{
		//	if (this.hitTestObject(background))
		//	{
				return true;
		//	}
		//}
		
		//return false;
	}
	
}