package ;

/**
 * ...
 * @author deep <system.grand@gmail.com>
 */

class GenHx {
	
	static function main() initHML();

	static macro function initHML() {
		hml.xml.adapters.FlashAdapter.register();
		
		return macro hml.Hml.parse({path:"gen", autoCreate:true}, "ui");
	}
	
}