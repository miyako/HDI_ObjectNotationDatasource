//%attributes = {"invisible":true}
var $name : Text
var $i : Integer
For ($i; 1; Size of array:C274(arrColumn))
	$name:=arrColumn{$i}
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk background color expression:K53:47; "0x00FFFFFF")
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk font style expression:K53:49; Plain:K14:1)
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk font color expression:K53:48; "0")
End for 