package 
{
	import starling.display.Sprite;
	import starling.events.KeyboardEvent;
	import starling.text.TextField;
	
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.events.Touch;
	import starling.events.TouchPhase;
	
	public class Gameover extends Sprite
	{
		private var TUC:TextField = new TextField(960, 640, "TESTE", "Arial", 5000, 0x9b14e7);
		
		public function Gameover() 
		{
			var titulo:TextField;
			titulo = new TextField(960, 300, "Game Over", "Arial", 80, 0x000000, true);
			addChild(titulo);
			
			
			titulo = new TextField(960, 500, "Clique para tentar novamente", "Arial", 45, 0xFF7700, true);
			addChild(titulo);
			
			addChild(TUC);
			TUC.alpha = 0;
			
			TUC.addEventListener(TouchEvent.TOUCH, toque);
			addEventListener(KeyboardEvent.KEY_DOWN, jogar);
		}
		
		private function jogar(evento:KeyboardEvent):void
		{
			var tela:Jogo;
			tela = new Jogo();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
		}
		
		private function toque(evento:TouchEvent):void
		{
			var tela:Jogo;
			tela = new Jogo();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
		}
		
	}

}