


#Include Cans.txt

Global SisterCan ; creates gloval variable to handle sister can for line 4
Global CurrentInd ; creates global variable to handle current can time in loop, here to handle cans from 2300 of next day
SisterCan := false ; creates global variable to handle sister can for line 4

L1name := "RBG Line 1"

L2name := "RBG Line 2"

L4name := "RBG Line 4"

L5name := "RBG Line 5"

L6name := "RBG Line 6"

L7name := "RBG Line 7"

DefaultVal := ""


; actual start of script 
Sleep, 300
WinActivate, MQISForms (General Mills Published Apps)
Sleep, 300
WinMaximize A ; maximizes window on start 
Sleep, 3000
FormatTime, TimeString, A_now,  MM-dd-yyyy hhmmss tt
FileMove, Placeholder.txt, OutputArchive\%TimeString%




Line4(cans, date, product, today, yesterday)
{
	WinActivate, MQISForms (General Mills Published Apps)
	Sleep, 10000
	Click 141 83
	Sleep, 500 
	Send, RBG Line 4
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Click 429 92
	Sleep, 500 
	Click 240 19
	Sleep, 500 
	Send,  %  product
	Sleep, 500  
	Send {enter}
	Sleep, 500  
	Send {enter}
	Sleep, 500  
	Click 150 120
	Sleep, 500 
	Send, Lab
	Sleep, 500  
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep 500 
	Click 405 117
	Sleep, 500 
	Send, 24hr
	Sleep, 1000 
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Click 760 89
	Sleep, 500  
	Click 766 147
	Sleep, 500  
	Click 916 115
	Sleep, 15000 

For index, value in cans 
{
	CurrentInd :=  cans[A_Index]
	if (CurrentInd >= 2300) AND (CurrentInd <= 2359)
	{
		Sleep, 3000 
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Sleep, 200
		Send, % yesterday
		Sleep, 300
		send % Format("{:04} ", cans[A_Index])
		Send, 00
		Sleep, 300
		Click 181 112
		Send, % Inititals
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, % date
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, 1
		Sleep, 500 
		Send, {enter}
		Sleep, 6000 
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Send, % yesterday
		Sleep, 300
		send % Format("{:04} ", cans[A_Index] +1)
		Send, 00
		Sleep, 300
		Click 181 112
		Send, % Inititals
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, 2
		Sleep, 500 
		Send, {enter}
		Sleep, 5000 
	}
	else
	{
		Sleep, 3000 	
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Sleep, 200
		Send, % today
		Sleep, 300
		;Send, % cans[A_Index] 
		send % Format("{:04} ", cans[A_Index])
		Send, 00
		Sleep, 300
		Click 181 112
		Send, % Inititals
		Sleep, 500 
		Send, {enter}
		Sleep, 500 
		Send, % date
		Sleep, 500
		Send, {enter}
		Sleep, 500 
		Send, {enter}
		Sleep, 500
		Send, 1
		Sleep, 500 
		Send, {enter}
		Sleep, 6000
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300 
		Click, 856 513
		Sleep, 1000
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Sleep, 200
		Send, % today
		Sleep, 300
		;Send, % cans[A_Index] +1
		send % Format("{:04} ", cans[A_Index] +1)
		Send, 00
		Sleep, 300
		Click 181 112
		Send,  % Inititals
		Sleep, 500
		Send, {enter}
		Sleep, 3000 
		Send, {enter}
		Sleep, 500
		Send, {enter}
		Sleep, 500 
		Send, 2
		Sleep, 500 
		Send, {enter}
		Sleep, 3000 
	}

	
}
return
}

LineNormal(line, cans, date, product, today, yesterday)
{
	WinActivate, MQISForms (General Mills Published Apps)
	Sleep, 10000
	Click 141 83
	Sleep, 500
	Send, % line
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Click 429 92
	Sleep, 500 
	Click 240 19
	Sleep, 500  
	Send,  %  product
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Click 150 120
	Sleep, 500 
	Send, Lab
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep 500  
	Click 405 117
	Sleep, 500  
	Send, 24hr
	Sleep, 500 
	Send {enter}
	Sleep, 500 
	Send {enter}
	Sleep, 500
	Click 760 89
	Sleep, 500  
	Click 766 147
	Sleep, 500 
	Click 916 115
	Sleep, 15000 

For index, value in cans 
{
	CurrentInd :=  cans[A_Index]
	if (CurrentInd >= 2300) AND (CurrentInd <= 2359)
	{
	
		Sleep, 3000 
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Send, % yesterday
		Sleep, 300
		send % Format("{:04} ", cans[A_Index])
		Send, 0000
		Send, {tab}
		Sleep, 300
		Click 181 112
		Send, % Inititals
		Sleep, 500 
		Send, {enter}
		Sleep, 1000 
		Send, % date
		Sleep, 300 
		Send, {enter}
		Sleep, 6000 
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Send, % yesterday
		Sleep, 300
		send % Format("{:04} ", cans[A_Index] +1)
		Send, 0000
		Send, {tab}
		Sleep, 300
		Click 181 112
		Send,  % Inititals
		Sleep, 500 
		Send, {enter}
		Sleep, 5000 
		Send, {enter}
		Sleep, 3000 
	}
	else 
	{
		Sleep, 3000 
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Send, % today
		Sleep, 300
		send % Format("{:04} ", cans[A_Index])
		Send, 0000
		Send, {tab}
		Sleep, 300
		Click 181 112
		Send, % Inititals
		Sleep, 1000 
		Send, {enter}
		Sleep, 3000 
		Send, % date
		Sleep, 1000 
		Send, {enter}
		Sleep, 6000 
		WinActivate, MQISForms (General Mills Published Apps)
		Sleep, 300
		Click, 856 513
		Sleep, 1000 
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}
		Send {Backspace}	
		Sleep, 300
		Send, % today
		Sleep, 300
		send % Format("{:04} ", cans[A_Index] +1)
		Send, 0000
		Send, {tab}
		Sleep, 300
		Click 181 112
		Send, % Inititals
		Sleep, 1000 
		Send, {enter}
		Sleep, 3000 
	}
}
	return
}

changeover(product)
{
	newProduct := "c/o " + product
	Sleep, 1000
	Click, 792 374
	Sleep 500
	Send,  % newProduct
	Sleep 500
	Send {enter}
}

noMicro()
{
	Sleep, 1000
	Click, 806 349
	Sleep 500
	Send, Gave to Micro Lab
	Sleep 500
	Send {enter}
	Sleep 500
	Click, 113 351
	Sleep 500	
	Click 49 34
	Sleep 500	
	Click 78 62
	Sleep 500
	Click, 103 370
	Sleep 500	
	Click 49 34
	Sleep 500	
	Click 78 62
}

shutdown()
{
	Sleep, 1000
	Click, 792 374
	Sleep 500
	Send, Down for sanitation
	Sleep 500
	Send {enter}
}


if (L1Running = TRUE && L1product != DefaultVal)
{
	LineNormal(line:= L1name, cans:= L1cans, date:= testDate, product:= L1product, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L1Changeover1 = TRUE && L1ProductChangeover1 != DefaultVal)
{
	changeover(L1ProductChangeover1 &&)
	Sleep, 10000
   	LineNormal(line:= L1name, cans:= L1cansCO1, date:= testDate, product:= L1ProductChangeover1, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L1Changeover2 = TRUE && L1ProductChangeover2 != DefaultVal)
{
	changeover(L1ProductChangeover2)
	Sleep, 10000
   	LineNormal(line:= L1name, cans:= L1cansCO2, date:= testDate, product:= L1ProductChangeover2, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L1shutdown = TRUE && L1product != DefaultVal)
{
	shutdown()
}



if (L2Running = TRUE && L2product != DefaultVal)
{
	LineNormal(line:= L2name, cans:= L2cans, date:= testDate, product:= L2product, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L2Changeover1 = TRUE && L2ProductChangeover1 != DefaultVal)
{
	changeover(L2ProductChangeover1)
	Sleep, 10000
   	LineNormal(line:= L2name, cans:= L2cansCO1, date:= testDate, product:= L2ProductChangeover1, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L2Changeover2 = TRUE && L2ProductChangeover2 != DefaultVal)
{
	changeover(L2ProductChangeover2)
	Sleep, 10000
   	LineNormal(line:= L2name, cans:= L2cansCO2, date:= testDate, product:= L2ProductChangeover2, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L2shutdown = TRUE && L2product != DefaultVal)
{
	shutdown()
}


if (L4Running = TRUE && L4product != DefaultVal)
{
	Line4(cans:= L4cans, date:= testDate, product:= L4product, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L4Changeover1 = TRUE && L4ProductChangeover1 != DefaultVal)
{
	changeover(L4ProductChangeover1)
	Sleep, 5000
   	Line4(cans:= L4cansCO1, date:= testDate, product:= L4ProductChangeover1, today:= productionDate, yesterday:= previousDate)
	Sleep, 5000
}
if (L4Changeover2 = TRUE && L4ProductChangeover2 != DefaultVal)
{
	changeover(L4ProductChangeover2)
	Sleep, 10000
   	Line4(cans:= L4cansCO2, date:= testDate, product:= L4ProductChangeover2, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L4Micro = FALSE && L4product != DefaultVal)
{
	NoMicro()
}
if (L4shutdown = TRUE && L4product != DefaultVal)
{	
	shutdown()
}



if (L5Running = TRUE && L5product != DefaultVal)
{ 
	LineNormal(line:= L5name, cans:= L5cans, date:= testDate, product:= L5product, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L5Changeover1 = TRUE && L5ProductChangeover1 != DefaultVal)
{
	changeover(L5ProductChangeover1)
	Sleep, 10000
   	LineNormal(line:= L5name, cans:= L5cansCO1, date:= testDate, product:= L5ProductChangeover1, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L5Changeover2 = TRUE && L5ProductChangeover2 != DefaultVal)
{
	changeover(L5ProductChangeover2)
	Sleep, 10000
   	LineNormal(line:= L5name, cans:= L5cansCO2, date:= testDate, product:= L5ProductChangeover2, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L5Micro = FALSE&& L5product != DefaultVal)
{
	NoMicro()
}
if (L5shutdown = TRUE && L5product != DefaultVal)
{	
	shutdown()
}

if (L6Running = TRUE && L6product != DefaultVal)
{ 
	LineNormal(line:= L6name, cans:= L6cans, date:= testDate, product:= L6product, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L6Changeover1 = TRUE && L6ProductChangeover1 != DefaultVal)
{
	changeover(L6ProductChangeover1)
	Sleep, 10000
   	LineNormal(line:= L6name, cans:= L6cansCO1, date:= testDate, product:= L6ProductChangeover1, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L6Changeover2 = TRUE && L6ProductChangeover2 != DefaultVal)
{
	changeover(L2ProductChangeover2)
	Sleep, 10000
   	LineNormal(line:= L6name, cans:= L6cansCO2, date:= testDate, product:= L6ProductChangeover2, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L6Micro = FALSE && L6product != DefaultVal)
{
	NoMicro()
}
if (L6shutdown = TRUE && L6product != DefaultVal)
{	
	shutdown()
}

if (L7Running = TRUE && L7product != DefaultVal)
{ 
	LineNormal(line:= L7name, cans:= L7cans, date:= testDate, product:= L7product, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000
}
if (L7Changeover1 = TRUE && L7ProductChangeover1 != DefaultVal)
{
	changeover(L7ProductChangeover1)
	Sleep, 10000
   	LineNormal(line:= L7name, cans:= L7cansCO1, date:= testDate, product:= L7ProductChangeover1, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L7Changeover2 = TRUE && L7ProductChangeover2 != DefaultVal)
{
	changeover(L2ProductChangeover2)
	Sleep, 10000
   	LineNormal(line:= L7name, cans:= L7cansCO2, date:= testDate, product:= L7ProductChangeover2, today:= productionDate, yesterday:= previousDate)
	Sleep, 10000 
}
if (L7shutdown = TRUE && L7product != DefaultVal)
{	

	shutdown()
}

;FileMove, Cans.txt, OutputArchive\%TimeString%
FileDelete, Cans.txt
FileDelete, Placeholder.txt
Sleep, 1000
;FileAppend,%A_WorkingDir%\Cans.txt
DllCall("LockWorkStation")


Esc:: ExitApp