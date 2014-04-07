package;
import flash.display.Sprite;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.events.Event;
import openfl.Assets;

/**
 * ...
 * @author Trey Clark
 */
class Canvas extends Sprite 
{

	var menu:Menu;
	var controlsmenu:Controlsmenu;
	
	public function new() 
	{
		super();
		menu = new Menu();
		this.addChild(menu);
		controlsmenu = new Controlsmenu();
		this.addChild(controlsmenu);
		controlsmenu.y = -480;
	}
	
	public function act(e : Event)
	{
		if (menu.controls = true)
		{
			controlssetup();
		}
		trace ("frame");
	}
	
	public function controlssetup()
	{
		menu.y = 480;
		controlsmenu.y = 0;
		menu.controls == false;
	}
	
}