/*
	File: welcome.sqf
	Author: RPGforYOU
	Description:
	Creates an intro 
*/
playSound "Intro";
disableSerialization;
[
        "",
        0,
        0.2,
        10,
        0,
        0,
        8
] spawn BIS_fnc_dynamicText;
 
createDialog "RscDisplayWelcome";
 
_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayctrl 2400;
_textSpoiler = _display displayctrl 1101;
_text2 = _display displayCtrl 1102;
 
_message = "";
_message = _message + "<t align='center' size='8' shadow='0'><img image='images\outlawed.paa' /><br /></t>";
_message = _message + "Useful Links (click on the links to open your browser)<br /><br />";
_message = _message + " <a href='http://tinyurl.com/ovrules' color='#56BDD6'>SERVER rules</a> -- Entering our server automatically inclines you have read and accepted our rules!<br />";
_message = _message + " <a href='http://outlawed-veterans.com' color='#56BDD6'>Outlawed-Veterans.com</a> -- Our Website, check it out for the latest news and updates.<br />";
_message = _message + " <a href='http://bit.ly/1Q6ljr7' color='#56BDD6'>Cop Whitelist application</a> -- Check this topic on how to get whitelisted cop status.<br />";
_message = _message + "Teamspeak 3 Address: 46.4.76.247 <a href='http://tinyurl.com/jk8j2bk' color='#56BDD6'>DIRECT CONNECT</a><br /><br />";
_message = _message + "<img image='textures\playertags\ha.paa' /> Head Admin<br />";
_message = _message + "<img image='textures\playertags\staff.paa' /> Staff Member<br />";
_message = _message + "<img image='textures\playertags\member.paa' /> Member<br />";
_message = _message + "<img image='\a3\ui_f\data\gui\rsc\rscdisplaymultiplayer\favouritecolumntitle_ca.paa' /> Donator<br /><br />";
_message = _message + "Left Shift + O : Ear plugs | Left Shift + G : Knockout | Left Shift + F : Cop Siren | Left Shift + H : Holster Weapon<br />";

 
//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);
 
//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlcommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;