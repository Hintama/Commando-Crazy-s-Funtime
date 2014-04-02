package;
import flash.display.Sprite;

/**
 * ...
 * @author ...
 */
class Runner extends Sprite 
{

	public function new() 
	{
		super();
		this.y = 223;
	}
	
	public function run()
	{
		this.x = Game.game.com.x + 800;
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
		for (background in Game.game.backgrounds)
		{
			
			if (this.hitTestObject(background))
			{
				return true;
			}
		}
		
		return false;
	}
	
}