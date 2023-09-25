
//Note for creators: DO NOT CHANGE ANYTHING IN THIS FILE//

_index = player createDiarySubject ["Everlight Comms","Everlight Comms"];

player createDiaryRecord ["Everlight Comms",["Channels",

"<br/>
  <font color='#FFFF00' face='PuristaMedium'>343 Channels</font><br/>
  1 - Alpha<br/>
  2 - Bravo<br/>
  3 - Charlie<br/>
  4 - HQ<br/>
  5 - xMG1<br/>
  6 - xMG2<br/>
  7 - xAT1<br/>
  8 - xAT2<br/>
  9 - Auxiliary<br/><br/>

  <font color='#FFFF00' face='PuristaMedium'>152 Channels</font><br/>
  1 - Platoon Net<br/>
  2 - Armor Net<br/>
  3 - Air Net<br/>
  4 - Logistics Net"]];

player createDiaryRecord ["Everlight Comms",["Radio Request",

"<br/>
If you are missing a 343 radio, take one:
<execute expression='player addItem ""ACRE_PRC343"";hint ""PRC_343 Added"";'>Take PRC343</execute><br/><br/>
If you are missing a 152 radio (Leaders SL and above, Crew Commanders, Pilots), take one:
<execute expression='if ( [""PRIVATE"",""CORPORAL"",""SERGEANT"",""LIEUTENANT"",""CAPTAIN"",""MAJOR"",""COLONEL""] find (rank player) > 1) then {player addItem ""ACRE_PRC152"";hint ""PRC_152 Added"";};'>Take PRC152</execute>"]];
