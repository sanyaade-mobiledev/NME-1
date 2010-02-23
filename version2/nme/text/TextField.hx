package nme.text;

class TextField extends nme.display.InteractiveObject
{
   public var text(nmeGetText,nmeSetText):String;
   public var textColor(nmeGetTextColor,nmeSetTextColor):Int;
   public var selectable(nmeGetSelectable,nmeSetSelectable):Bool;
   public var defaultTextFormat(nmeGetDefTextFormat,nmeSetDefTextFormat):TextFormat;
   public var type(nmeGetType,nmeSetType):TextFieldType;
   public var border(nmeGetBorder,nmeSetBorder):Bool;
   public var borderColor(nmeGetBorderColor,nmeSetBorderColor):Int;
   public var background(nmeGetBackground,nmeSetBackground):Bool;
   public var backgroundColor(nmeGetBackgroundColor,nmeSetBackgroundColor):Int;

   public function new( )
   {
      var handle = nme_text_field_create( );
      super(handle);
   }
   
   function nmeGetText() : String { return nme_text_field_get_text(nmeHandle); }
   function nmeSetText(inText:String ) : String
   {
      nme_text_field_set_text(nmeHandle,inText);
      return inText;
   }

   function nmeGetTextColor() : Int { return nme_text_field_get_text_color(nmeHandle); }
   function nmeSetTextColor(inCol:Int ) : Int
   {
      nme_text_field_set_text_color(nmeHandle,inCol);
      return inCol;
   }

   function nmeGetSelectable() : Bool { return nme_text_field_get_selectable(nmeHandle); }
   function nmeSetSelectable(inSel:Bool ) : Bool
   {
      nme_text_field_set_selectable(nmeHandle,inSel);
      return inSel;
   }

   function nmeGetType() : TextFieldType
   {
      return nme_text_field_get_type(nmeHandle) ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
   }
   function nmeSetType(inType:TextFieldType ) : TextFieldType
   {
      nme_text_field_set_type(nmeHandle,inType==TextFieldType.INPUT);
      return inType;
   }
 
   function nmeGetBorder() : Bool { return nme_text_field_get_border(nmeHandle); }
   function nmeSetBorder(inVal:Bool ) : Bool
   {
      nme_text_field_set_border(nmeHandle,inVal);
      return inVal;
   }

	function nmeGetBorderColor() : Int { return nme_text_field_get_border_color(nmeHandle); }
   function nmeSetBorderColor(inVal:Int ) : Int
   {
      nme_text_field_set_border_color(nmeHandle,inVal);
      return inVal;
   }

   function nmeGetBackground() : Bool { return nme_text_field_get_background(nmeHandle); }
   function nmeSetBackground(inVal:Bool ) : Bool
   {
      nme_text_field_set_background(nmeHandle,inVal);
      return inVal;
   }

	function nmeGetBackgroundColor() : Int { return nme_text_field_get_background_color(nmeHandle); }
   function nmeSetBackgroundColor(inVal:Int ) : Int
   {
      nme_text_field_set_background_color(nmeHandle,inVal);
      return inVal;
   }


   
   function nmeGetDefTextFormat() : TextFormat
   {
      var result = new TextFormat();
      nme_text_field_get_def_text_format(nmeHandle,result);
      return result;
   }
   function nmeSetDefTextFormat(inFormat:TextFormat) : TextFormat
   {
      nme_text_field_set_def_text_format(nmeHandle,inFormat);
      return inFormat;
   }



   static var nme_text_field_create = nme.Loader.load("nme_text_field_create",0);
   static var nme_text_field_get_text = nme.Loader.load("nme_text_field_get_text",1);
   static var nme_text_field_set_text = nme.Loader.load("nme_text_field_set_text",2);
   static var nme_text_field_get_text_color = nme.Loader.load("nme_text_field_get_text_color",1);
   static var nme_text_field_set_text_color = nme.Loader.load("nme_text_field_set_text_color",2);
   static var nme_text_field_get_selectable = nme.Loader.load("nme_text_field_get_selectable",1);
   static var nme_text_field_set_selectable = nme.Loader.load("nme_text_field_set_selectable",2);
   static var nme_text_field_get_def_text_format = nme.Loader.load("nme_text_field_get_def_text_format",2);
   static var nme_text_field_set_def_text_format = nme.Loader.load("nme_text_field_set_def_text_format",2);
   static var nme_text_field_get_type = nme.Loader.load("nme_text_field_get_type",1);
   static var nme_text_field_set_type = nme.Loader.load("nme_text_field_set_type",2);
   static var nme_text_field_get_border = nme.Loader.load("nme_text_field_get_border",1);
   static var nme_text_field_set_border = nme.Loader.load("nme_text_field_set_border",2);
   static var nme_text_field_get_border_color = nme.Loader.load("nme_text_field_get_border_color",1);
   static var nme_text_field_set_border_color = nme.Loader.load("nme_text_field_set_border_color",2);
   static var nme_text_field_get_background = nme.Loader.load("nme_text_field_get_background",1);
   static var nme_text_field_set_background = nme.Loader.load("nme_text_field_set_background",2);
   static var nme_text_field_get_background_color = nme.Loader.load("nme_text_field_get_background_color",1);
   static var nme_text_field_set_background_color = nme.Loader.load("nme_text_field_set_background_color",2);

}