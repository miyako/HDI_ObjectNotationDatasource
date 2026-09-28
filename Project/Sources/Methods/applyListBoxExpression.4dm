//%attributes = {"invisible":true}
If (VarExp1#"")
	LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk background color expression:K53:47; VarExp1)
Else 
	LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk background color expression:K53:47; "0x00FFFFFF")
End if 

If (VarExp2#"")
	LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk font style expression:K53:49; VarExp2)
Else 
	LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk font style expression:K53:49; Plain:K14:1)
End if 

If (VarExp3#"")
	LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk font color expression:K53:48; VarExp3)
Else 
	LISTBOX SET PROPERTY:C1440(*; "ListBox"; lk font color expression:K53:48; "0")
End if 


