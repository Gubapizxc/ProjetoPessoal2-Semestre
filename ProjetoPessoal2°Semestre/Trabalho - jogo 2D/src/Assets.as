package 
{
	import flash.display.Bitmap;
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import flash.media.Sound;
	/**
	 * ...
	 * @author sjksdjfjdrjwe
	 */
	public class Assets 
	{
		[Embed(source = "../assets/inicio.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const inicio:Class; 
		
		[Embed(source = "../assets/gameover.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const gameover:Class; 
		
		[Embed(source = "../assets/gude.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const gude:Class; 
		
		[Embed(source = "../assets/vito.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const vito:Class; 
		
		[Embed(source = "../assets/zero.png")]
		public static const ZeroPng:Class;
		
		[Embed(source = "../assets/pers.png")]
		public static const pers:Class;
		
		[Embed(source = "../assets/pers2.png")]
		public static const pers2:Class;
		
		[Embed(source = "../assets/pers3.png")]
		public static const pers3:Class;
		
		[Embed(source = "../assets/persup.png")]
		public static const persup:Class;
		
		[Embed(source = "../assets/persdown.png")]
		public static const persdown:Class;
		
		[Embed(source = "../assets/perside.png")]
		public static const perside:Class;
		
		[Embed(source = "../assets/neg.png")]
		public static const neg:Class;
		
		[Embed(source = "../assets/cel.png")]
		public static const cel:Class;
		
		[Embed(source = "../assets/spear.png")]
		public static const spear:Class;
		
		[Embed(source = "../assets/boss.png")]
		public static const boss:Class;
		
		[Embed(source = "../assets/pow.png")]
		public static const pow:Class;
		
		[Embed(source = "../assets/mip.png")]
		public static const mip:Class;
		
		[Embed(source = "../assets/instru.jpg")]
		public static const instru:Class;
		
		
		
		
		/////samuel é um boco cheio da grana
		public static function imagem(arquivo:Class):Image //adiciona todas as imagens
		{
			var bmp:Bitmap = new arquivo();
			var tex:Texture = Texture.fromBitmap(bmp);
			var img:Image = new Image(tex);
			img.smoothing = "none";    //tira a suavização da imagem, pra fazer pixel art
			return img;
		}
		
		public static function atlas(arquivo:Class , arqxml:Class):TextureAtlas
		{
			var tex:Texture = Texture.fromEmbeddedAsset(arquivo)
			var xml:XML = XML(new arqxml());
			var ta:TextureAtlas = new TextureAtlas(tex, xml); 
			return ta;
		}
		/////samuel é um boco cheio da grana
	}

}/////samuel é um boco cheio da grana