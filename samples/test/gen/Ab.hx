package ;

class Ab extends test.A {

    var str2_initialized:Bool = false;

    @:isVar public var str2(get, set):String;

    var sprite_initialized:Bool = false;

    @:isVar public var sprite(get, set):flash.display.Sprite;

    var child1_initialized:Bool = false;

    @:isVar public var child1(get, set):flash.text.TextField;

    var child2_initialized:Bool = false;

    @:isVar public var child2(get, set):flash.display.Sprite;

    var child3_initialized:Bool = false;

    @:isVar public var child3(get, set):flash.display.Sprite;

    @:expose inline function get_field0():String {
        var res = 'testName';
        return res;
    }

    @:expose inline function get_field2():String {
        var res = 'as';
        return res;
    }

    function set_str2(value:String):String {
        return str2 = value;
    }

    function get_str2():String {
        if (str2_initialized) return str2;
        str2_initialized = true;
        var res = null;
        this.str2 = res;
        return res;
    }

    function set_sprite(value:flash.display.Sprite):flash.display.Sprite {
        return sprite = value;
    }

    function set_child1(value:flash.text.TextField):flash.text.TextField {
        return child1 = value;
    }

    function get_child1():flash.text.TextField {
        if (child1_initialized) return child1;
        child1_initialized = true;
        var res = new flash.text.TextField();
        this.child1 = res;
        res.alpha = 0.78;
        res.textColor = 0xFF0000;
        res.text = 'tada';
        res.x = 100;
        res.y = 200;
        return res;
    }

    function set_child2(value:flash.display.Sprite):flash.display.Sprite {
        return child2 = value;
    }

    function get_child2():flash.display.Sprite {
        if (child2_initialized) return child2;
        child2_initialized = true;
        var res = new flash.display.Sprite();
        this.child2 = res;
        res.x = 100;
        res.visible = false;
        return res;
    }

    function set_child3(value:flash.display.Sprite):flash.display.Sprite {
        return child3 = value;
    }

    function get_child3():flash.display.Sprite {
        if (child3_initialized) return child3;
        child3_initialized = true;
        var res = new flash.display.Sprite();
        this.child3 = res;
        res.x = 100;
        res.visible = false;
        return res;
    }

    function get_sprite():flash.display.Sprite {
        if (sprite_initialized) return sprite;
        sprite_initialized = true;
        var res = new flash.display.Sprite();
        this.sprite = res;
        res.addChild(child1);
        res.addChild(child2);
        res.addChild(child3);
        return res;
    }

    public function new() {
        super();
        this.name = get_field0();
        this.list.push(get_field2());
        this.list.push(str2);
        get_sprite();
    }
}