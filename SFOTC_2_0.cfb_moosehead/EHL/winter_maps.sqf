//////Enhanced High&Low Script Ver2.0 by Rodeostar42//////    ///adviced by Halal///


if (!isDedicated) then {
while {true} do {

_now = date;
_month = _now select 1;
_hour = _now select 3;
_unit = player;
_uniform = uniform player;
_gear = [

///Wet suit///
   "U_B_Wetsuit",
   "UK3CB_AAF_B_U_Diving_Uniform_DIGI_BLK",
   "U_I_Wetsuit",
   "ade_item_wetsuit",
   "tfd_equipment_Wetsuit",
   "U_O_Wetsuit"
];

if ((uniform player in _gear)&&(!(underwater player)&&(eyePos player select 2 > 1))&&(vehicle player == player)) then
      {

         player setFatigue 1;
      };
      sleep 1;


/// Water Enhanced///
if (!(uniform player in _gear)&&(underwater player)&&(eyePos player select 2 < 0.5)) then {

    if ((_month in [1,2,11,12])&&(_hour <= 24)) then {

   hint parseText format["<t size='1' color=""#1E90FF"">Very cold water temp!! %1 Limit the 1minute</t>"];

   dethcount = 0;

   private ["_blur"];
   _blur = ppEffectCreate ["DynamicBlur", 10];
   _blur ppEffectEnable true;
   _blur ppEffectAdjust [3];
   _blur ppEffectCommit 180;

   while {dethcount < 60} do{

   if (!(underwater player)&&(eyePos player select 2 > 1)) then {
   hint parseText format["<t size='1' color=""#FFFFFF"">Away from water %1 Status OK</t>"];

   player setFatigue 1;
   uiSleep 3;
   ppEffectDestroy _blur;

   dethcount = 60;
};

   sleep 1;
   dethcount = dethcount + 1;
};

if ((underwater player)&&(eyePos player select 2 < 0.5)) then {
   player setDamage 1;
};

}
else
{
   if ((_month in [3,4,5,6,7,8,9,10])&&(_hour <= 24)) then {

   hint parseText format["<t size='1' color=""#00FFFF"">Very cold water temp!! %1 Limit the 3minute</t>"];

   dethcount = 0;

   private ["_blur"];
   _blur = ppEffectCreate ["DynamicBlur", 10];
   _blur ppEffectEnable true;
   _blur ppEffectAdjust [3];
   _blur ppEffectCommit 600;

   while {dethcount < 180} do{

    if ((uniform player in _gear)or(eyePos player select 2 > 1)or(!(vehicle player == player))) then {

      sleep 1;
   hint parseText format["<t size='1' color=""#FFFFFF"">Away from water %1 Status OK</t>"];

   player setFatigue 1;
   uiSleep 3;
   ppEffectDestroy _blur;

   dethcount = 180;
   };


   sleep 1;
   dethcount = dethcount + 1;
};


if ((underwater player)&&(eyePos player select 2 < 0.5)) then {
   player setDamage 1;
};

}
else
{
if ((underwater player)&&(eyePos player select 2 < 0.5)) then {
 hint parseText format["<t size='1' color=""#FFDEAD"">Warm water temp %1 no limit time </t>"];
};

};

};

};

};

};