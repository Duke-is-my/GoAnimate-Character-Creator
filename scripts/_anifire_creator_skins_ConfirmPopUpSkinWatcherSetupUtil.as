package
{
   import anifire.creator.skins.ConfirmPopUpSkin;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _anifire_creator_skins_ConfirmPopUpSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _anifire_creator_skins_ConfirmPopUpSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ConfirmPopUpSkin.watcherSetupUtil = new _anifire_creator_skins_ConfirmPopUpSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("chrome",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[1] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[5],param4[6],param4[7],param4[8],param4[9]],param2);
         param5[3] = new PropertyWatcher("title",{"propertyChange":true},[param4[7],param4[8],param4[9]],null);
         param5[2] = new PropertyWatcher("iconType",{"propertyChange":true},[param4[5],param4[6]],null);
         param5[0].updateParent(param1);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
      }
   }
}