package 
{
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.text.TextField;
	
	public class Personagem extends Sprite
	{
		private var caixa:TextField;
		private var arte:Quad;
		
		public function Personagem(cor:int) 
		{
			arte = new Quad(30, 30, cor);
			addChild(arte);
			
			
		}
		
		
	}
}