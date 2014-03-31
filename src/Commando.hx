package;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import openfl.Assets;

/**
 * ...
 * @author Trey Clark
 */
class Commando extends Sprite 
{
	var img:BitmapData;
	var vy:Float;
	var vx:Float;
	var grav:Float;
	var up:Bool;
	var sprite:Sprite;
	
	public function new() 
	{
		super();
		var img = new Bitmap(Assets.getBitmapData("img/commando.png"));
		sprite = new Sprite();
		sprite.addChild(img);
		this.addChild(sprite);
		//this.graphics.beginFill(0xFFFFFF);
		//this.graphics.drawEllipse(0, 0, 40, 35);
		this.x = 100;
		this.y = 125;
		vy = 0;
		vx = 2;
		grav = .22;
		up = false;
	}
	
	public function move()
	{

		if (up)
		{
			grav = -.22;
		}
		if (!(up))
		{
			grav = .22;
		}
		if (isColliding())
		{
			this.vy = 0;
			grav = 0;
		}
		this.vy += grav;
		this.y += this.vy;
		this.vy *= .98;
		this.x += this.vx;
		this.vx *= .98;
		if (vx < 1.5)
		{
			vx = 1.5;
		}
		//trace (vx);
		//trace (vy);
		//trace (up);
		//trace (grav);
		//trace (up);
		//trace (isColliding());
	}
	
	public function moveLeft()
	{
		this.vx -= 1.8;

	}
	
	public function moveRight()
	{
		this.vx += 1.8;
	}
	
	public function swtch()
	{
		if (!(up))
		{
			up = true;
		}
		else
		{
			up = false;
		}
	}
	
	public function fall()
	{
		if ((isColliding()) && !(up))
		{
			this.y = this.y + 50;
		}
		if ((isColliding()) && (up))
		{
			this.y = this.y - 50;
		}
		this.swtch();
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
	
/*	public function onGround()
	{
		//if (isColliding()) return false;
		this.y += .5;
		var hit = isColliding();
		this.y -= .5;
		return hit;
	}*/
}