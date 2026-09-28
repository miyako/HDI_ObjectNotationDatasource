// Reload the detail form with the info database
UNLOAD RECORD:C212([Person:1])
var $col; $row : Integer
LISTBOX GET CELL POSITION:C971(*; "ListBox"; $col; $row)
GOTO SELECTED RECORD:C245([Person:1]; $row)

