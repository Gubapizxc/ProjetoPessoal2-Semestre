package 
{
	import starling.display.Quad;
	import starling.display.Sprite;
	
	public class Moeda extends Sprite
	{
		public var isdead:Boolean = false;
		
		public function Moeda() 
		{
			var arte:Quad;
			arte = new Quad(20, 20, 0X000000);
			addChild(arte);
		}
		
	}

}