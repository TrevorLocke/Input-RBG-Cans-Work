

#Persistent
#SingleInstance
FileDelete, Cans.txt
Run RBG Biscuit Times.xlsm
Sleep, 2000
 



OnClipboardChange("clipChangeHandler")
;FilePath := "RBG Biscuit Times.xlsm"	; specify your path here

clipChangeHandler() {
  Xl := ComObjActive("Excel.Application") 

For sheet in xl.ActiveWorkbook.Worksheets
CellVal := Xl.Range("L23").value

	if (CellVal = 1) { 
		Waiting := 0
		Sleep, 100
			if (Waiting = 0) {
				FileAppend,%Clipboard%,%A_WorkingDir%\Cans.txt
				Sleep, 1000
				Run HelperProgram.exe
				ExitApp
					}
			else{
				return
				}
			}
}

   