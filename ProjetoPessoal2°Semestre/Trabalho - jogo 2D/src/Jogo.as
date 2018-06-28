package
{
	import flash.events.GameInputEvent;
	import flash.geom.Rectangle;
	import flash.ui.Keyboard;
	import flash.utils.setTimeout;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.EnterFrameEvent;
	import starling.events.KeyboardEvent;
	import starling.text.TextField;
	import starling.filters.ColorMatrixFilter;
	import starling.events.KeyboardEvent;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.events.Touch;
	import starling.events.TouchPhase;
	
	
	public class Jogo extends Sprite
	{
		private var cima:Boolean = false;
		
		private var pontua:TextField = new TextField(1360, 140, "TESTE", "Arial", 80, 0x9b14e7);
		private var TUC:TextField = new TextField(960, 640, "TESTE", "Arial", 5000, 0x9b14e7);
		private var pontos:Number = 0;
		private var framecont:int = 0;
		private var progresso:int = 0;
		private var multi:Number = 1;
		
		private var filterRed:ColorMatrixFilter = new ColorMatrixFilter();
		private var filterPur:ColorMatrixFilter = new ColorMatrixFilter();
		private var filterNON:ColorMatrixFilter = new ColorMatrixFilter();
		private var filterGra:ColorMatrixFilter = new ColorMatrixFilter();
		private var filterBla:ColorMatrixFilter = new ColorMatrixFilter();
		public var inimigosA:Array;

		
		public var jogador:Personagem;
		public var moedasArray:Array;

		public var vetor:Number = 0.05;
		
		
		
		public function Jogo()
		{	
			addChild(pontua);
			addChild(TUC);
			TUC.alpha = 0;
			
			jogador = new Personagem(0x0000FF);
			jogador.x = 480;
			jogador.y = 320;
			jogador.pivotX = -100;
			addChild(jogador);
			
			filterRed.tint(0xFF0000, 0.8);
			filterPur.tint(0x9b14e7, 1);
			filterNON.tint(0xffffff, 0);
			filterGra.tint(0xff0000, 0.5);
			filterBla.tint(0x000000, 1);
			
			moedasArray = new Array();
			criaMoeda();
			criaMoeda();
			criaMoeda();
			criaMoeda();
			criaMoeda();
			criaMoeda();
		    criaMoeda();
			criaMoeda();
			criaMoeda();
			criaMoeda();
			criaMoeda();
			criaMoeda();
			
			addEventListener(EnterFrameEvent.ENTER_FRAME, atualiza);
			addEventListener(KeyboardEvent.KEY_DOWN, pressionou);
			addEventListener(KeyboardEvent.KEY_UP, soltou);
			TUC.addEventListener(TouchEvent.TOUCH, toque);
			
			
		}
		
		
		private function atualiza(evento:EnterFrameEvent):void
		{
			framecont += 1;
			pontua.text = "Pontos: " + pontos;
			
			if (framecont >= 30) {
			framecont = 0
			pontos += 2 * (multi*5);
			progresso += 1;
			}
			
			if (progresso >= 5) {
			progresso = 0
			multi += 0.5;
			}
			
			jogador.rotation += vetor * multi;
			
			
			for (var i:int = 0; i < moedasArray.length; i++) {
			moedasArray[i].y += 5 * multi;
			if (moedasArray[i].y > 640) {
			moedasArray[i].x = Math.random() * 800;
			moedasArray[i].y = Math.random() * -600;
			}
			if (colisao(moedasArray[i], jogador)) {
			novatela(1);
			}
			}
			
			
		}
		
		private function toque(evento:TouchEvent):void
		{
				vetor = vetor * -1;
		}
		
		private function pressionou(evento:KeyboardEvent):void
		{
			if (evento.keyCode == Keyboard.SPACE) {
				if(!cima){
				cima = true;
				vetor = vetor * -1;
				}
			}

		}
		
		private function soltou(evento:KeyboardEvent):void
		{
			if (evento.keyCode == Keyboard.SPACE) ;
				if(cima){
				cima = false;
				}
			
		}
		
		private function colisao(objeto1:Sprite, objeto2:Sprite):Boolean
		{
			var area1:Rectangle = objeto1.getBounds(stage);
			var area2:Rectangle = objeto2.getBounds(stage);
			
			if (area1.intersects(area2)) {
				return true;
			}
			return false;
		}
		
		
		public function criaMoeda():void
		{
			var moeda:Moeda;
			moeda = new Moeda();
			moeda.x = Math.random() * 800;
			moeda.y = Math.random() * -600;
			addChild(moeda);
			moedasArray.push(moeda);
		}
	
		
		
		public function reinicia():void
		{
			var tela:Inicio;
			tela = new Inicio();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
		}
		

		
	

		public function novatela(n:int) {
			if(n == 1){
			var tela:Gameover;
			tela = new Gameover();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);	
			}
			if(n == 2){
			var trela:Vitoria;
			trela = new Vitoria();
			parent.addChild(trela);
			
			removeEventListeners();
			removeFromParent(true);	
			}
	
		}
		
	}

}