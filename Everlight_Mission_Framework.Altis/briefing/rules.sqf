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
private _subject = ["Everlight ROE", "Everlight ROE"];
private _briefing = ["Everlight ROE", ["Rules of Engagement","
<br/>
<font color='#FFFF00' size='11' face='PuristaMedium'>Rules of Engagement</font><br/>
<font color='#FFFFFF' size='10' face='PuristaMedium'>1. Never steal tanks or aircraft unless the mission briefing says otherwise.</font><br/><br/>

<font color='#FFFFFF' size='10' face='PuristaMedium'>2. Never use enemy weapons/vehicles without checking with your team leader first. This can easily cause confusion and friendly fire.</font><br/><br/>

<font color='#FFFFFF' size='10' face='PuristaMedium'>3. Never remove your provided uniforms, vests or helmets.</font><br/><br/>

<font color='#FFFFFF' size='10' face='PuristaMedium'>4. Never argue or bicker during a session. Save disputes or complaints for after-action.</font><br/><br/>

<font color='#FFFFFF' size='10' face='PuristaMedium'>5. If a player in any type of special role is disconnected, their equipment should be recovered as if it was a death, but it should be returned to the original player once they reconnect. If they disconnect again, their role is forfeit for the remainder of the mission.</font><br/><br/>

<font color='#FFFFFF' size='10' face='PuristaMedium'>6. Always follow orders. It's a game, but during this game someone has to be the leader. You can report new information they may not be aware of or make suggestions, but ultimately it's their call and members are expected to follow their lead through anything.</font><br/><br/>

<font color='#FFFFFF' size='10' face='PuristaMedium'>7. Be respectful. Be serious. Have fun.</font>

"]];

player createDiarySubject _subject;
player createDiaryRecord _briefing;
