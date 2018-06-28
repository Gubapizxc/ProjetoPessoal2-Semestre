package
{
	import flash.display.Sprite;
	import starling.core.Starling;
	
	public class Main extends Sprite 
	{
		
		public function Main()
		{
			stage.frameRate = 30;
			var star:Starling;
			star = new Starling(Inicio, stage);
			// Inicio é a primeira classe que o Starling carrega
			star.start();
		}
		
	}
	
}