
; WeltallZero's Guild Wars 2 mouse mode script (for use with a gamepad). 
; Special Thanks to Hawkian for his insight and contributions. 


; ------------------------------ Initialization -------------------------------

; Set the script so that it will replace any other version running when reloaded.
#SingleInstance force

; Global variables to hold the default position of the pointer.
defaultX := 0
defaultY := 0

; Read settings from the ini file, if it exists.
IniRead, autoCenter, Guild Wars 2 Mouse Script.ini, Main, AutoCenter, 1
IniRead, autoCenterHeight, Guild Wars 2 Mouse Script.ini, Main, AutoCenterHeight, 70
IniRead, crosshair, Guild Wars 2 Mouse Script.ini, Main, Crosshair, 0

; Write settings to the ini file, mostly so that one is created if it didn't 
; exist. 
IniWrite, %autoCenter%, Guild Wars 2 Mouse Script.ini, Main, AutoCenter
IniWrite, %autoCenterHeight%, Guild Wars 2 Mouse Script.ini, Main, AutoCenterHeight
IniWrite, %crosshair%, Guild Wars 2 Mouse Script.ini, Main, Crosshair

if (%crosshair% <> 0)
{
	; Initialize the crosshair.
	
	; Load the crosshair file; it's 15x15 pixels. 
	Gui, Add, Picture, w15 h15 AltSubmit, crosshair.png
	; Set the crosshair window to be always on top.
	Gui +AlwaysOnTop
	; Show the crosshair for an instant, as we need to manipulate a few attributes.
	Gui, Show, NA x0 y0
	; Set the background color of the crosshair window to white.
	Gui, Color, FFFFFF
	; Get the crosshair window name (the same as this script), and set the 
	; transparent color to "white". 
	WinSet, TransColor, White, %A_ScriptName%
	; Remove the caption and frame. 
	Gui -Caption +ToolWindow
	; Hide the crosshair. 
	Gui, Cancel
}

; ------------------------------------- F7 ------------------------------------

; This script makes F7 toggle between holding and not holding the mouse button, 
; and reset the mouse pointer when it not held. 
F7::
	; Make the "is mouse button held" variable switch to the opposite state.
	held := not held
	if (held == true)
	{
		; Set the mouse mode as "camera mode"
		SetCameraMode()
	}
	else
	{
		; Set the mouse mode as "mouse mode"
		SetPointerMode()
	}
return

; ------------------------------------- F8 ------------------------------------

; This script makes it so that F8 releases the mouse button for as long as 
; it's held. It also makes it so that when F8 is released, the mouse goes
; back to being held, independently of whether it was held before. 
F8::
	if (held == true)
	{
		; Set the "is mouse button held" variable to false.
		held := false
		
		; Set the mouse mode as "mouse mode"
		SetPointerMode()
		
		; Send key down event so that other applications (including XPadder) can catch it. 
		SendEvent {F8 down}
	}

	; Wait for release of the key
	KeyWait F8

	; Check if mouse button was still held. This is important in case the toggle 
	; has been pressed while the hold was held. 
	if (held != true)
	{
		; Set the "is mouse button held" variable to false.
		held := true
		
		; Set the mouse mode as "camera mode"
		SetCameraMode()
		
		; Send key up event so that other applications (including XPadder) can catch it. 
		SendEvent {F8 up}
	}
return

; ------------------------------- SetMouseMode --------------------------------

; This function sets the mouse mode as "Pointer Mode", for menu interaction, etc. 
SetPointerMode()
{
	; Announce that we'll use these global variable.
	global crosshair
	
	; Release the mouse button
	Click up Left
	
	if (%crosshair% <> 0) 
	{
		; Hide the crosshair
		Gui, Cancel
	}
}

; ------------------------------- SetCameraMode -------------------------------

; This function sets the mouse mode as "Camera Mode", for normal gameplay.
SetCameraMode() 
{
	; Announce that we'll use these global variables.
	global mouseButton
	global autoCenter
	global autoCenterDelay
	global crosshair

	if (%autoCenter% <> 0) 
	{
		; Move the pointer to its default position. 
		ResetPointer()
	}
		
	; Hold down the mouse button.
	Click down Left
	
	if (%autoCenter% <> 0) 
	{
		; Move the pointer a bit to force the game into camera mode.
		MoveSightly()
	}
		
	if (%crosshair% <> 0) 
	{
		; Show the crosshair.
		ShowCrosshair()
	}
}

; ------------------------- CalculateDefaultPosition --------------------------

; This function recalculates the default position of the pointer. It's 
; called every time this position is needed, in case the user switches 
; resolutions.
CalculateDefaultPosition() 
{
	; Announce that we'll use these global variables.
	global autoCenterHeight
	global pointerX
	global pointerY
	global crosshairX
	global crosshairY
	
	; Retrieve which monitor is the user currently using (in most systems, 1)
	SysGet, nPrimaryMonitor, MonitorPrimary
	
	; Retrieve the active window's size.
	WinGetPos, x, y, width, height, A
	
	; Calculate the pointer's default x position as the middle point of the window. 
	pointerX := width/2

	; Calculate the pointer's default y position as autocenterHeight% up from 
	; the bottom of the window.
	pointerY := (height*(100-autoCenterHeight)/100)
	
	; Add the window's upper left corner position to obtain the crosshair's position
	; (which is screen-relative rather than window-relative). 
	crosshairX := x+pointerX
	crosshairY := y+pointerY
	
	; Substract certain pixels from the crosshair image's size so as to paint it 
	; centered on the appropriate position.
	crosshairX := crosshairX - 17
	crosshairY := crosshairY - 12
}

; ------------------------------ ShowCrosshair --------------------------------

; This function displays the crosshair
ShowCrosshair()
{
	; Announce that we'll use these global variables.
	global crosshairX
	global crosshairY 
	
	; Calculate the default position of the crosshair. 
	CalculateDefaultPosition()

	; Display the crosshair.
	Gui, Show, NA x%crosshairX% y%crosshairY%
}

; ------------------------------ ResetPointer ---------------------------------

; This function resets the mouse pointer to its default position (horizontally 
; centered and vertically a bit above center)
ResetPointer()
{
	; Announce that we'll use these global variables.
	global pointerX
	global pointerY 
	
	; Calculate the default position of the crosshair. 
	CalculateDefaultPosition()
	
	; Set the send mode as "Play" to prevent odd behavior from GW2's camera.
	SendMode Play
	
	; Move the mouse to the default position.
	MouseMove, %pointerX%, %pointerY%, 0
	
	; Reset the send mode as "Event".
	SendMode Event
}

; -------------------------------- MoveSightly --------------------------------

; This function moves the pointer a bit so that the game switches to camera mode.
MoveSightly()
{
	; Set the send mode as "Play" to prevent odd behavior from GW2's camera.
	SendMode Play
	
	MouseMove, 0, -4, 1, R
	; Reset the send mode as "Event".
	SendMode Event
}

