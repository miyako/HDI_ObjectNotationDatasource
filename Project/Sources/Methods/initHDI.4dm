//%attributes = {"invisible":true}
ARRAY TEXT:C222(TabControl; 0)
ARRAY TEXT:C222(TextTabControl; 0)
ALL RECORDS:C47([Samples:2])
ORDER BY:C49([Samples:2]; [Samples:2]SampleSort:4; >)
SELECTION TO ARRAY:C260([Samples:2]Title:2; TabControl)
SELECTION TO ARRAY:C260([Samples:2]Text:3; TextTabControl)
UNLOAD RECORD:C212([Samples:2])

TabControl:=0
VarTitle1:=TextTabControl{1}
VarTitle2:=TextTabControl{2}
VarTitle3:=TextTabControl{3}
