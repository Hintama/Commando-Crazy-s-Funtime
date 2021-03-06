package;


import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.MovieClip;
import flash.text.Font;
import flash.media.Sound;
import flash.net.URLRequest;
import flash.utils.ByteArray;
import haxe.Unserializer;
import openfl.Assets;

#if (flash || js)
import flash.display.Loader;
import flash.events.Event;
import flash.net.URLLoader;
#end

#if ios
import openfl.utils.SystemPath;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public static var className (default, null) = new Map <String, Dynamic> ();
	public static var path (default, null) = new Map <String, String> ();
	public static var type (default, null) = new Map <String, AssetType> ();
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("img/Asteriod.png", __ASSET__img_asteriod_png);
		type.set ("img/Asteriod.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Asteriod2.png", __ASSET__img_asteriod2_png);
		type.set ("img/Asteriod2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Asteriod3.png", __ASSET__img_asteriod3_png);
		type.set ("img/Asteriod3.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/BlankBackground.png", __ASSET__img_blankbackground_png);
		type.set ("img/BlankBackground.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/commando.png", __ASSET__img_commando_png);
		type.set ("img/commando.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/commando2.png", __ASSET__img_commando2_png);
		type.set ("img/commando2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/ControlButton.png", __ASSET__img_controlbutton_png);
		type.set ("img/ControlButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/ControlButton2.png", __ASSET__img_controlbutton2_png);
		type.set ("img/ControlButton2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Galaxy1.png", __ASSET__img_galaxy1_png);
		type.set ("img/Galaxy1.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Galaxy2.png", __ASSET__img_galaxy2_png);
		type.set ("img/Galaxy2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Galaxy3.png", __ASSET__img_galaxy3_png);
		type.set ("img/Galaxy3.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Logo.png", __ASSET__img_logo_png);
		type.set ("img/Logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Menu1.png", __ASSET__img_menu1_png);
		type.set ("img/Menu1.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/Menu2.png", __ASSET__img_menu2_png);
		type.set ("img/Menu2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/PlayButton.png", __ASSET__img_playbutton_png);
		type.set ("img/PlayButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/PlayButton2.png", __ASSET__img_playbutton2_png);
		type.set ("img/PlayButton2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/StoryButton.png", __ASSET__img_storybutton_png);
		type.set ("img/StoryButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("img/StoryButton2.png", __ASSET__img_storybutton2_png);
		type.set ("img/StoryButton2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("SXF/Russian.wav", __ASSET__sxf_russian_wav);
		type.set ("SXF/Russian.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		className.set ("SXF/TechoIntro.wav", __ASSET__sxf_techointro_wav);
		type.set ("SXF/TechoIntro.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		
		#elseif html5
		
		path.set ("img/Asteriod.png", "img/Asteriod.png");
		type.set ("img/Asteriod.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Asteriod2.png", "img/Asteriod2.png");
		type.set ("img/Asteriod2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Asteriod3.png", "img/Asteriod3.png");
		type.set ("img/Asteriod3.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/BlankBackground.png", "img/BlankBackground.png");
		type.set ("img/BlankBackground.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/commando.png", "img/commando.png");
		type.set ("img/commando.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/commando2.png", "img/commando2.png");
		type.set ("img/commando2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/ControlButton.png", "img/ControlButton.png");
		type.set ("img/ControlButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/ControlButton2.png", "img/ControlButton2.png");
		type.set ("img/ControlButton2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Galaxy1.png", "img/Galaxy1.png");
		type.set ("img/Galaxy1.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Galaxy2.png", "img/Galaxy2.png");
		type.set ("img/Galaxy2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Galaxy3.png", "img/Galaxy3.png");
		type.set ("img/Galaxy3.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Logo.png", "img/Logo.png");
		type.set ("img/Logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Menu1.png", "img/Menu1.png");
		type.set ("img/Menu1.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/Menu2.png", "img/Menu2.png");
		type.set ("img/Menu2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/PlayButton.png", "img/PlayButton.png");
		type.set ("img/PlayButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/PlayButton2.png", "img/PlayButton2.png");
		type.set ("img/PlayButton2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/StoryButton.png", "img/StoryButton.png");
		type.set ("img/StoryButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("img/StoryButton2.png", "img/StoryButton2.png");
		type.set ("img/StoryButton2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("SXF/Russian.wav", "SXF/Russian.wav");
		type.set ("SXF/Russian.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		path.set ("SXF/TechoIntro.wav", "SXF/TechoIntro.wav");
		type.set ("SXF/TechoIntro.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
		
		
		#else
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<AssetData> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							path.set (asset.id, asset.path);
							type.set (asset.id, asset.type);
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest");
				
			}
			
		} catch (e:Dynamic) {
			
			trace ("Warning: Could not load asset manifest");
			
		}
		
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = DefaultAssetLibrary.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		//return null;		
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash

class __ASSET__img_asteriod_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_asteriod2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_asteriod3_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_blankbackground_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_commando_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_commando2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_controlbutton_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_controlbutton2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_galaxy1_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_galaxy2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_galaxy3_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_menu1_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_menu2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_playbutton_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_playbutton2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_storybutton_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__img_storybutton2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__sxf_russian_wav extends flash.media.Sound { }
class __ASSET__sxf_techointro_wav extends flash.media.Sound { }


#elseif html5























#end