//%attributes = {"invisible":true}
C_TEXT:C284($name)
$name:=arrColumn{arrColumn}

If (VarExp4#"")
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk background color expression:K53:47; VarExp4)
Else 
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk background color expression:K53:47; "0x00FFFFFF")
End if 

If (VarExp5#"")
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk font style expression:K53:49; VarExp5)
Else 
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk font style expression:K53:49; Plain:K14:1)
End if 

If (VarExp6#"")
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk font color expression:K53:48; VarExp6)
Else 
	LISTBOX SET PROPERTY:C1440(*; "Col"+$name; lk font color expression:K53:48; "0")
End if 

