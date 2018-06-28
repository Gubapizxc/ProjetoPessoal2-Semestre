package 
{
	import starling.display.Sprite;
	import starling.events.KeyboardEvent;
	import starling.text.TextField;
	
	public class Vitoria extends Sprite
	{
		
		public function Vitoria() 
		{
			var titulo:TextField;
			titulo = new TextField(800, 300, "Você venceu!!! Parabéns!!!", "Arial", 80, 0xFF0000, true);
			addChild(titulo);
			
			
			titulo = new TextField(800, 500, "Clique para Iniciar", "Arial", 45, 0xFF0000, true);
			addChild(titulo);
			
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
		
	}

}