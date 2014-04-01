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
	var alive:Bool;
	var sprite:Sprite;
	
	public function new() 
	{
		super();
		var img = new Bitmap(Assets.getBitmapData("img/commando2.png"));
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
		alive = true;
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
		if (vx < 1.6 + Game.game.diff)
		{
			vx = 1.6 + Game.game.diff;
		}
		if (vx > 3.2 + (Game.game.diff * 1.7))
		{
			vx = 3.2 + (Game.game.diff * 1.7);
		}
		if (this.y > 480)
		{
			this.y = 0;
		}
		if (this.y < 0)
		{
			this.y = 480;
		}
		//trace (vx);
		//trace (vy);
		//trace (up);
		//trace (grav);
		//trace (up);
		//trace (isColliding());
		//trace (Game.game.diff);
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
			this.rotation = 180;
		}
		else
		{
			up = false;
			this.rotation = 0;
		}
	}
	
	public function fall()
	{
		if (!(up))
		{
			this.y = this.y + 86;
		}
		if ((up))
		{
			this.y = this.y - 86;
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
	
	public function death()
	{
		//var d = Math.sqrt((this.x - game.badguy.x) * (this.x - badguy.x) + (this.y - badguy.y) * (this.y - badguy.y));
		//trace ("Dead");
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