//%attributes = {"invisible":true}
C_LONGINT:C283($1)
GOTO SELECTED RECORD:C245([Person:1]; $1)

ARRAY OBJECT:C1221($arrChild; 0)
OB GET ARRAY:C1229([Person:1]OB_Field:2; "Children"; $arrChild)

maxChild:=Size of array:C274($arrChild)-1
If (maxChild=-1)
	maxChild:=0
End if 
nChild:=0