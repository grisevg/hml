package hml.base;

/**
 * StringBuf like abstract type. Override operator +
 */
abstract Strings(StringBuf) from StringBuf to StringBuf {
	public function new() this = new StringBuf();

	@:op(A + B) static public inline function _add(strings:Strings, s:String) {
		strings.add(s);
		return strings;
	}

	public inline function add(s:String) this.add(s);

	public inline function toString() return this.toString();

	@:to public inline function _toString() return this.toString();
}