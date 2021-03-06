
*******************************************************************************
**************************************************************************************************           
************************                  How to play Guild Wars 2 with your Xbox 360 controller (or equivalent) by Weltall Zero 2.0                 ****************************
                                                  ******************      Special Thanks to Hawkian            *****************
**********************************************************************************************************************************                                                


          
                         /////////////////////               INSTRUCTIONS (FOR TRUSTING PEOPLE)           //////////////////////

1) Do not be intimidated. These seem like a lot of steps but they are mind-numbingly easy to do, or are merely informative. This very one is an example of both. :)

2) If you're reading this online, you need to download and unpack, the entire bundle. Unzip the zip file into a folder of your choice. If you're using Windows Vista / Windows 7 or later, you might want to NOT put them in the Program Files folder, in case Windows gets all clingy with permissions. 

3) Scan all the executables in this zip with your favorite antivirus and/or anti-malware software. Yes, I said trusting people, not reckless.

4) If you're using Windows 7 or later, right click Xpadder.exe, then select Properties, click the Compatibility tab, then check "Run this program in compatibility mode for", and select "Windows Vista" in the dropdown. 

5) Double click START.bat. You can, of course, put a shortcut to this .bat on your desktop or wherever you want. NOTE: If you've reversed your mouse buttons (for example, if you use your mouse with your left hand and find reversing them more comfortable), navigate to the "Lefty" folder and double click START LEFTY.bat instead. Obviously, mentally swap any mentions of the "right" and "left" mouse buttons hereafter.

6) Two icons should appear on your notification bar: 
    
   a) A gamepad with a smile: that's XPadder, the program doing most of the work.
   
   b) An H in a green square: that's a precompiled AutoHotKey script used for a couple of bindings for camera control. Namely, it binds F7 to "toggle holding the right mouse button", and F8 to "release the right mouse button while I'm holding it (F8)". 

You will also see XPadder's window pop up; if your Xbox 360 gamepad is connected and on, it should show an image of it with all the key bindings (if it doesn't, see next step). 

7) TROUBLESHOOTING: If your gamepad is on, but XPadder doesn't show a large Xbox360 gamepad image, you will most likely have to  manually select the Controller profile and the Game profile:
  
7. 1) Click the top leftmost tiny icon that looks like a gamepad, select "Open", then select the file "Xbox 360Controller.xpaddercontroller". 
  
   2) Then, click the top middle icon that looks like a page with text, select "Open" and then select the file 
     "Guild Wars 2.xpadderprofile". 

8) Once done with Xpadder, it's safe to just minimize or even close this window; the program will stay on the notification bar. Now start up Guild Wars 2. 

9) Open Guild Wars 2 and, from the controls menu, add the following bindings. For those that already have keys bound to them, you can add these as alternates so as to leave base functionality intact. 

- , (comma) to "Previous Enemy". As mentioned above, you don't have to clear the default, just add it as its alternate; same for all of those below that have bindings already.
- . (period) to "Swap Weapons". This is needed to avoid conflicts with different regional keyboards using different keys for this.
- Numpad 8 to "Camera" -> "Zoom In". 
- Numpad 2 to "Camera" -> "Zoom Out". 
- Z to "Stow/Draw Weapons".
- X to "Swim Down". If there ever is a binding for "Crouch", bind it to X as well. 
- L to "Toggle Walk / Run". 
- U to "About Face".
- F5 to "GUI -> Hide / Show"
- F6 to "Screenshot -> Normal". 

10) Make sure "Dodge on Double Tap" is disabled; otherwise you will accidentally roll quite a bit. You'll use RT to dodge instead. 

11) Make sure "Promote Abilities to Full Targets" is disabled. This will let you attack enemies without actually hard-locking them, just by looking at them. You can always hard-lock onto them by using the Cycle Target bindings. 

12) Now, for how the gamepad configuration works. Be sure to read and understand this point and the next two ones. 
The normal mode of operation is "Camera Mode". You can enter it in any one of two ways:
    
    a) Toggled by clicking the right analog stick (R3), or pressing F7. Pressing it once again will toggle back to "Pointer Mode".
    b) Pressing and releasing Select/Back, or pressing and releasing F8. This is the preferred way, as it will leave you in Camera Mode regardless of what mode you were          in previously.
What this does, mechanically, is to emulate holding down the right mouse button until you disable it by clicking R3 or pressing F7 again (this is called entering "Pointer Mode", more on this later). 

Camera mode is the main control mode while playing Guild Wars 2, as it turns the right analog stick (bound to the mouse) into a "move camera" control. However, that's not desirable when you return to Windows, so be sure to return to pointer (by clicking R3 or press F7) before exiting or alt-tabbing out of Guild Wars 2. 

If you forget, though (and notice the mouse is acting as if the right mouse button is pressed), restoring normal Windows operation is as simple as right clicking once. 
   
13) When you go back to Windows, or when you need to use the mouse pointer to manipulate menus, etc., you want to enter "Pointer Mode". This is done in one of two ways:
    
    a) Toggled by clicking the right analog stick (R3), or pressing F7. Pressing it once again will toggle back to "Camera Mode".
    b) Entered by holding Select/Back, or holding F8. Releasing it will go back to "Camera Mode", even if that was not the original mode. This is useful for switching to Camera Mode in a hurry. When in "Pointer Mode", you will be able to move the mouse pointer freely. Some of the gamepad bindings will change, typically allowing the use of the mouse buttons. Consult the bindings of the specific configuration that you're using for details. 
   
14) When entering camera mode, by default, the mouse pointer will be reset to a predetermined position of the screen, centered horizontally and at about 70% of the window height. This is the optimal position to aim AOE rings, and since it resets to the same position every time, it gives you a frame of reference to aim them. For added accuracy, if you play Guild Wars 2 in Windowed Mode, you can enable a crosshair to be displayed where the pointer is. 

You can disable autocentering, enable the crosshair, or change the default position's height, by editing "Guild Wars 2 Mouse Script.ini" and reloading the script. If you mess up, deleting the .ini file and reloading the script will re-generate it with default values. 

15) TROUBLESHOOTING: If the camera rotates too slowly when using the right analog stick, you need to either adjust the right analog sensitivity in XPadder, or the mouse sensitivity in Guild Wars 2 (either will work). 
       a) Guild Wars 2's Camera Rotation Speed is really low by default even for keyboard + mouse play, and so is assumed that you have raised to at least about halfway. 
       b) If the camera rotation speed is fine for you when using a mouse, but too slow when using a gamepad, you need to adjust the ratio of movement between the right analog 
       and the mouse. To do this, opening XPadder, then click the spanner icon down and to the right of the right analog; after this, select "Mouse Settings". You can then        adjust each axis individually by dragging them; it's recommended to set the X axis to be about twice as sensitive as the Y axis. 
   
16) TROUBLESHOOTING: If everything else works fine for you, but the pointer won't automatically recenter when you enter camera mode (i.e. it stays where you left it in pointer mode), then the most likely explanation is that Windows User Account Control is denying AutoHotkey of the permission to move the mouse. 

The easiest way to solve this is by following Option A in the followign guide:
http://www.petri.co.il/disable-uac-in-windows-7.htm

17) You're done, enjoy! There's a text file describing the control scheme, included in the zip file as BINDINGS.TXT. Be sure to check it and have it handy when first using a controller.

17) When you're done playing Guild Wars 2, just right-click each of the icons on the notification bar and select "Exit"/"Close". 



                                                 

                                   /////////////////////  INSTRUCTIONS (FOR CAUTIOUS PEOPLE) //////////////////////




If you're like me (cautious; others would say paranoid), you'll never run an executable downloaded from a stranger off the internet. That is good practice, so here's instructions for those of you. 



1) Same as step 1) above. 



2) Delete all .exe files from that folder (you were going to do that anyway, weren't you?). 



3) Go to http://www.freewarefiles.com/Xpadder_program_21789.html and download version 5.3 of XPadder. I think ANY version past 5.3 would do, too, but that's the last free version. Put XPadder.exe in the folder with all the other stuff.



4) Go to http://www.autohotkey.com/ and download AutoHotKey. Install/decompress it, then run "ahk2exe.exe" from the "Compiler" folder. Click "Browse" next to "Source file" and open the included "Guild Wars 2 Mouse Script.ahk" script (you may want to open this script with Notepad beforehand, to make sure I didn't put anything suspicious in it; it's become quite comples, though). 

In fact, if you'd rather want these toggles on any other keys, you can change the script if you want; you'll never press these keys manually, so use ones that are out of the way and do nothing in-game or in Windows. Click "Browse" next to "Destination (.exe file)", navigate to the folder with all the other stuff, and name it "Guild Wars 2 Mouse Script.exe" (or the .bat won't recognize it). Leave everything else alone, and click "Convert". 



5) Continue from step 2) above (from the "instructions for trusting people"). 




                   
                                //////////////////////////////// ACKNOWLEDGEMENTS ///////////////////////////////


A huge thank you to Hawkian of the NeoGAF boards for his original control scheme. Mines were originally based upon a couple of concepts of his but kept going back to his original bindings, as time showed he got most of it right on his first try. There's just so many amazing ideas in there, from the camera toggle (the pillar of every single configuration to come after that), to how right hand skills are mapped to right hand buttons, and viceversa. 
Most in this this file is a mere logical consequence of his insightful ideas. 

Also huge thanks again to Hawkian for collaborating on the development of the ultimate binding configuration. We've been colaborating, researching, testing and converging once and again, to create what we believe to be the best possible experience for playing Guild Wars 2. We hope you all enjoy it! :)
