// Reload the detail form with the info database
UNLOAD RECORD:C212([Person:1])
C_LONGINT:C283($col; $row)
LISTBOX GET CELL POSITION:C971(*; "ListBox"; $col; $row)
GOTO SELECTED RECORD:C245([Person:1]; $row)

