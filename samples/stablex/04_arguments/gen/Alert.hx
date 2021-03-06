package ;

class Alert extends ru.stablex.ui.widgets.VBox {

    var message_initialized:Bool = false;

    @:isVar public var message(get, set):ru.stablex.ui.widgets.Text;

    public function destroyHml():Void {
        
    }
    

    inline function get_paint__0():ru.stablex.ui.skins.Paint {
        /* ui/Alert.xml:6 characters: 8-18 */
        var res = new ru.stablex.ui.skins.Paint();
        /* ui/Alert.xml:6 characters: 31-36 */
        res.color = 0xbbbbbb;
        /* ui/Alert.xml:6 characters: 20-26 */
        res.border = 2;
        return res;
    }

    function set_message(value:ru.stablex.ui.widgets.Text):ru.stablex.ui.widgets.Text {
        message_initialized = true;
        return message = value;
    }

    function get_message():ru.stablex.ui.widgets.Text {
        /* ui/Alert.xml:8 characters: 5-9 */
        if (message_initialized) return message;
        message_initialized = true;
        this.message = new ru.stablex.ui.widgets.Text();
        var res = this.message;
        if(ru.stablex.ui.UIBuilder.defaults.exists("Text")) {
            var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
            for(def in ["Default"]) {
                var defaultsFn:ru.stablex.ui.widgets.Widget->Void = defFns.get(def);
                if(defaultsFn != null) defaultsFn(res);
            }
        }
        res._onInitialize();
        res._onCreate();
        return res;
    }

    inline function get_click__0():flash.events.MouseEvent -> StdTypes.Void {
        /* ui/Alert.xml:9 characters: 28-33 */
        var res = function (event:flash.events.MouseEvent):StdTypes.Void { this.free(); };
        return res;
    }

    inline function get_paint__1():ru.stablex.ui.skins.Paint {
        /* ui/Alert.xml:10 characters: 12-22 */
        var res = new ru.stablex.ui.skins.Paint();
        /* ui/Alert.xml:10 characters: 35-40 */
        res.color = 0x777777;
        /* ui/Alert.xml:10 characters: 24-30 */
        res.border = 1;
        return res;
    }

    inline function get_button__0():ru.stablex.ui.widgets.Button {
        /* ui/Alert.xml:9 characters: 5-11 */
        var res = new ru.stablex.ui.widgets.Button();
        if(ru.stablex.ui.UIBuilder.defaults.exists("Button")) {
            var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
            for(def in ["Default"]) {
                var defaultsFn:ru.stablex.ui.widgets.Widget->Void = defFns.get(def);
                if(defaultsFn != null) defaultsFn(res);
            }
        }
        /* ui/Alert.xml:9 characters: 13-17 */
        res.text = 'close';
        res.addEventListener(flash.events.MouseEvent.CLICK, get_click__0());
        /* ui/Alert.xml:10 characters: 6-10 */
        res.skin = get_paint__1();
        res._onInitialize();
        res._onCreate();
        return res;
    }

    public function new() {
        /* ui/Alert.xml:3 characters: 1-5 */
        super();
        if(ru.stablex.ui.UIBuilder.defaults.exists("VBox")) {
            var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
            for(def in ["Default"]) {
                var defaultsFn:ru.stablex.ui.widgets.Widget->Void = defFns.get(def);
                if(defaultsFn != null) defaultsFn(this);
            }
        }
        /* ui/Alert.xml:4 characters: 13-16 */
        this.top = 100;
        /* ui/Alert.xml:4 characters: 36-48 */
        this.childPadding = 5;
        /* ui/Alert.xml:4 characters: 23-30 */
        this.padding = 10;
        /* ui/Alert.xml:4 characters: 2-6 */
        this.left = 100;
        /* ui/Alert.xml:6 characters: 2-6 */
        this.skin = get_paint__0();
        this._onInitialize();
        this.addChild(message);
        this.addChild(get_button__0());
        this._onCreate();
    }
}
