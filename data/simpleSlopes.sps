* substitute x with the independent variable to put on the X-axis.
* substitute y with the dependent variable to put on the Y-axis.
* substitute y with the dependent variable to put on the Y-axis.
* substitute XLAB and YLAB with the axis labels.
* substitute hix and lox with the formula (a+bx) where a is the intecept and b is the simple slope of x ad moderator value you wish.

GGRAPH 
  /GRAPHDATASET NAME="DataGraph" VARIABLES= x y 
  /GRAPHSPEC SOURCE=INLINE .
BEGIN GPL
SOURCE: s=userSource( id( "DataGraph" ) ) 
DATA: x=col( source(s), name( "x" ) ) 
DATA: y=col( source(s), name( "y" ) )
GUIDE: axis( dim( 1 ), label( "XLAB" ) ) 
GUIDE: axis( dim( 2 ), label( "YLAB" ) )
ELEMENT: point( position(  x *y ) ,size(size."8px"),color(color.gray)) 
TRANS: lox = eval(a+b0*x)
ELEMENT: line( position(  x* lox  ),shape(shape.dash),size(size."4px")) 
TRANS: hix = eval(a+b1*x)
ELEMENT: line( position(  x* hix  ),shape(shape.solid),size(size."4px")) 
END GPL.


