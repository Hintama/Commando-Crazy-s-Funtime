package;
import flash.display.Bitmap;
import flash.display.Sprite;

/**
 * ...
 * @author Trey Clark
 */
class Commando extends Sprite 
{
	var vy:Float;
	var vx:Float;
	
	public function new() 
	{
		super();
		//var img = new Bitmap(Assests.getBitmapData("img/));
		this.graphics.beginFill(0xFFFFFF);
		this.graphics.drawEllipse(0, 0, 40, 35);
		this.x = 300;
		this.y = 200;
		vy = 0;
		vx = 0;
		
	}
	
	public function move()
	{
		if (isColliding())
		{
			this.y -= this.vy;
			this.vy = 0;
		}
		this.y += this.vy;
		this.vy += .2;
		//this.vy *= .92;
		this.x += this.vx;
		//this.vx *= .8;
		trace (vx);
		//trace (vy);
	}
	
	public function moveLeft()
	{
		this.vx -= .4;
	}
	
	public function moveRight()
	{
		this.vx += .4;
	}
	
	public function jump()
	{
		this.vy = -4;
	}
	
	public function isColliding()
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
	
	public function onGround()
	{
		if (isColliding()) return false;
		this.y += 1;
		var hit = isColliding();
		this.y -= 1;
		return hit;
	}
}