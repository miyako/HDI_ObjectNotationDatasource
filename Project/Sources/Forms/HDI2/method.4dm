Case of 
	: (Form event code:C388=On Load:K2:1)
		
		initHDI
		
		var bFirst : Boolean
		bFirst:=True:C214
		
		ARRAY TEXT:C222(arrColumn; 5)
		arrColumn{1}:="ID"
		arrColumn{2}:="Firstname"
		arrColumn{3}:="Lastname"
		arrColumn{4}:="Age"
		arrColumn{5}:="Date"
		arrColumn:=4
		
		var nChild : Integer
		nChild:=0
		
	: (Form event code:C388=On Page Change:K2:54)
		
		
		Case of 
			: (FORM Get current page:C276=1)
				OBJECT SET VISIBLE:C603(*; "ListBox"; False:C215)
				
			: (FORM Get current page:C276=2)
				
				OBJECT SET ENABLED:C1123(*; "Radio Button"; False:C215)
				OBJECT SET ENABLED:C1123(*; "Radio Button1"; False:C215)
				
				OBJECT SET VISIBLE:C603(*; "ListBox"; True:C214)
				resetListBoxExpression
				resetColumnExpression
				
				ALL RECORDS:C47([Person:1])
				LISTBOX SELECT ROW:C912(*; "ListBox"; 1)
				selectRecord(1)
				
				If (bFirst)
					bFirst:=False:C215
					ST SET TEXT:C1115(*; "var6"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]ID</span></span>")
					ST SET TEXT:C1115(*; "var7"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]Category</span></span>")
					//Parent
					ST SET TEXT:C1115(*; "var1"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.Firstname</span>")
					ST SET TEXT:C1115(*; "var2"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.Lastname</span>")
					ST SET TEXT:C1115(*; "var3"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.Age</span>")
					ST SET TEXT:C1115(*; "var4"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.City</span>")
					ST SET TEXT:C1115(*; "var5"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.RegisterDate</span>")
					//Children[n]
					ST SET TEXT:C1115(*; "var10"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.Name</span>")
					ST SET TEXT:C1115(*; "var11"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.Age</span>")
					ST SET TEXT:C1115(*; "var12"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.<span style=\"color:#BF30B5\">Toy[0]</span>.Name</span>")
					ST SET TEXT:C1115(*; "var13"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.<span style=\"color:#BF30B5\">Toy[0]</span>.Color</span>")
					ST SET TEXT:C1115(*; "var14"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.<span style=\"color:#BF30B5\">Toy[1]</span>.Name</span>")
					ST SET TEXT:C1115(*; "var15"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.<span style=\"color:#BF30B5\">Toy[1]</span>.Color</span>")
					ST SET TEXT:C1115(*; "var16"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.Sex=\"M\"</span>")
					ST SET TEXT:C1115(*; "var17"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.Sex=\"F\"</span>")
					ST SET TEXT:C1115(*; "var18"; "<span style=\"font-weight:bold\"><span style=\"color:#0051BA\">[Person]OB_Field</span>.<span style=\"color:#009E60\">Children[nChild]</span>.Sex</span>")
				End if 
				
			: (FORM Get current page:C276=3)
				OBJECT SET VISIBLE:C603(*; "ListBox"; True:C214)
				
				ALL RECORDS:C47([Person:1])
				// Example of List box style expression
				VarExp1:=""
				VarExp2:="Choose([Person]OB_Field.Firstname=\"Sam\";Bold;Plain)"
				VarExp3:="Choose([Person]OB_Field.Firstname#\"Sam\";0x0051BA;0)"
				VarExp4:="Choose([Person]OB_Field.Age>60;0x00FFE4E1;0x00FFFFFF)"
				VarExp5:="Choose([Person]OB_Field.Lastname=\"Doe\";Italic;Plain)"
				VarExp6:=""
				applyListBoxExpression
				applyColumnExpression
		End case 
		
End case 

