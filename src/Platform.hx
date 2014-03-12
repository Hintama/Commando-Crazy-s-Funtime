package;
import flash.display.Bitmap;
import flash.display.Sprite;

/**
 * ...
 * @author Trey Clark
 */
class Platform extends Sprite
{

	public function new(x,y,w,h) 
	{
		super();
		this.graphics.beginFill(0x4DBBA9);
		this.graphics.drawRoundRect(0, 0, w, h, 4);
		this.x = x;
		this.y = y;
	}
	
}