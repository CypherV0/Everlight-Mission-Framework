/* ===============================================
	GENERAL BRIEFING NOTES
	 - Uses HTML style syntax. All supported tags can be found here - https://community.bistudio.com/wiki/createDiaryRecord
	 - For images use <img image='FILE'></img> (for those familiar with HTML note it is image rather than src).
	 - Note that using the " character inside the briefing block is forbidden. Use ' instead of ".
*/

/* ===============================================
	SITUATION
	 - Outline of what is going on. This needs to contain any relevant background information.
	 - Note 'OUR FORCES' and 'ENEMY FORCES' in their respective sections. Enemy forces can be vague such as "Russian Forces"
        or more specific such as "Russian Motorized Platoon with Armored Elements".
   - The commander will make important decisions based off this information.

   ===============================================
  MISSION
   	- Summarize(!) the objectives that the team is expected to complete. This must be short and clear.
    - If the players will be extracting, that should be included here.

   ===============================================
  EXECUTION
    - Further details regarding the intended execution of the mission are noted here.
    This is broken down into two parts: COMMANDER'S INTENT and MOVEMENT PLAN
    - In the COMMANDER'S INTENT section, you'll elaborate on the steps, instructions and specifics involved in completing the objectives.
       The goal is to be detailed enough that players have no confusion or question about how to complete the mission
    - In the MOVEMENT PLAN section, specify how the players will be physically moving through the mission.
        If they'll have a mix of armed and un-armed MRAPs, note that. If they're intended to be on foot, note that.
        If they'll be on foot but are allowed to take vehicles if found, note that.
        If one element is paradropping into the AO, but the others are driving in, note that (and account for seating).
        If the players are going to teleport to their starting positions, note that!

   ===============================================
  ADMIN / LOGISTICS
  	- Outline available resources (equipment/resupply/etc).
    - Detail any cargo that will need to be lifted either to or from the AO.
    - Outline available reinforcements, if any. (e.g. 'Reinforcements will need to be airlifted to the AO').
  	- Outline of how to use any mission specific features/scripts.
*/

private _briefing = ["diary", ["Briefing","
<br/>
<font color='#FFFF00' size='11' face='PuristaMedium'>SITUATION</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>Add the situation here</font><br/><br/>

<font color='#FFFF00' size='11' face='PuristaLight'>ENEMY FORCES</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>Add Enemy Forces Here</font><br/><br/>

<font color='#FFFF00' size='11' face='PuristaLight'>OUR FORCES</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>Add Our Forces Here</font><br/><br/>

<font color='#FFFF00' size='11' face='PuristaMedium'>MISSION</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>
- Add objectives here<br/>
- Add objectives here<br/>
- Add objectives here</font><br/><br/>

<font color='#FFFF00' size='11' face='PuristaMedium'>EXECUTION</font><br/>

<font color='#FFFF00' size='11' face='PuristaLight'>COMMANDER'S INTENT</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>Elaborate on mission details here</font><br/><br/>

<font color='#FFFF00' size='11' face='PuristaLight'>MOVEMENT PLAN</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>Detail how players will be moving</font><br/><br/>

<font color='#FFFF00' size='11' face='PuristaMedium'>ADMIN / LOGISTICS</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>- Outline available resources (equipment/resupply/etc)</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>- Outline of how to use any mission specific features/scripts</font><br/><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>Created by YourName </font><br/>

"]];

player createDiaryRecord _briefing;
