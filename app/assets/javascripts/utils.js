String.prototype.truncate = function ( length, char ) {
  var _length = length || 18;
  return this.length > _length ? this.substring( 0, _length ).replace( /\s+$/g, '' ) + ( char || '…' ) : this;
}