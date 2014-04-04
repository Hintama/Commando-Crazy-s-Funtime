package;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.Lib;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.text.TextField;
import flash.text.TextFormat;
import openfl.Assets;

/**
 * ...
 * @author ...
 */
class Menu extends Sprite
{
	var play:Bool;
	var info:Bool;
	var controls:Bool;
	var background:BitmapData;
	var logosprite:Sprite;
	var img:BitmapData;
	var logo:BitmapData;
	var playbuttonsprite:Sprite;
	var playbutton:BitmapData;
	var storybuttonsprite:Sprite;
	var storybutton:BitmapData;
	var controlsbuttonsprite:Sprite;
	var controlsbutton:BitmapData;
	

	public function new() 
	{
		super();
		var background =  new Bitmap(Assets.getBitmapData("img/Galaxy2.png"));
		this.addChild(background);
		logosprite = new Sprite();
		var img = new Bitmap(Assets.getBitmapData("img/Logo.png"));
		logosprite.addChild(img);
		logosprite.x = 260;
		logosprite.y = 20;
		this.addChild(logosprite);
		playbuttonsprite = new Sprite();
		var img = new Bitmap(Assets.getBitmapData("img/PlayButton2.png"));
		playbuttonsprite.addChild(img);
		playbuttonsprite.x = 300;
		playbuttonsprite.y = 180;
		this.addChild(playbuttonsprite);
		storybuttonsprite = new Sprite();
		var img = new Bitmap(Assets.getBitmapData("img/StoryButton2.png"));
		storybuttonsprite.addChild(img);
		storybuttonsprite.x = 300;
		storybuttonsprite.y = 260;
		this.addChild(storybuttonsprite);
		controlsbuttonsprite = new Sprite();
		var img = new Bitmap(Assets.getBitmapData("img/ControlButton2.png"));
		controlsbuttonsprite.addChild(img);
		controlsbuttonsprite.x = 300;
		controlsbuttonsprite.y = 340;
		this.addChild(controlsbuttonsprite);
	}
	
}