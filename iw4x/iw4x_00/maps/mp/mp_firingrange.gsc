#include maps\mp\_utility;
#include common_scripts\utility;

main()
{
	maps\mp\_load::main();
	
	maps\mp\mp_firingrange_fx::main();
	maps\createart\mp_firingrange_art::main();
	maps\createfx\mp_firingrange_fx::main();
	
	maps\mp\_explosive_barrels::main();

	game[ "attackers" ] = "axis";
	game[ "defenders" ] = "allies";
	
	ambientPlay( "ambient_mp_estate" );
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_firingrange");
	
	setDvar ( "r_diffusecolorscale", "1.5");

	/****** GET ENTITIES ******/
	//TRIGGERS
	alleyTrigger = getent("alleyTrigger","targetname");
	windowTrigger = getent("triggerwindowTarget","targetname");

	//TARGETS
	target1 = getent("fieldTarget_BackLeft","targetname");	
	target2 = getent("fieldTarget_FrontLeft","targetname");	
	target3 = getent("fieldTarget_Middle","targetname");
	target4 = getent("fieldTarget_BackRight","targetname");
	target5 = getent("fieldTarget_FrontRight","targetname");
	target6 = getent("trenchTarget_GroundWall","targetname");
	target7 = getent("trailerTarget_Window","targetname");
	target8 = getent("alleyTarget_Cover","targetname");
	target9 = getent("alleyTarget_Path","targetname");
	target10 = getent("centerTarget_Sandbags","targetname");
	target11 = getent("towerTarget_Front","targetname");
	target12 = getent("towerTarget_Back","targetname");
	target13 = getent("centerTarget_Path","targetname");
	target14 = getent("centerTarget_PathBunkerL","targetname");
	target15 = getent("centerTarget_PathBunkerR","targetname");
	target16 = getent("steelBuildingTarget_Slide1","targetname");
	target17 = getent("steelBuildingTarget_PopUp","targetname");
	target18 = getent("target_alleyWindow1","targetname");
	target19 = getent("target_alleyWindow2","targetname");
	target20 = getent("target_alleyWindow3","targetname");

	//TARGET LIGHTs

	//Props
	targetLight1_off = getent("steelBuildingTargetLight1_off", "targetname");
	targetLight1_on = getent("steelBuildingTargetLight1_on", "targetname");

	targetLight2_off = getent("steelBuildingTargetLight2_off", "targetname");
	targetLight2_on = getent("steelBuildingTargetLight2_on", "targetname");

	//Lights

	level.const_fx_exploder_red_light_1 = 1001;
	level.const_fx_exploder_red_light_2 = 1002;

	//LOUDSPEAKERS
	speaker1 = getent("loudspeaker1", "targetname");
	speaker2 = getent("loudspeaker2", "targetname");

	//PROPANE TANKS
	/*propaneTank1 = getent("explodingPropaneTank","targetname");
	propaneTank2 = getent("explodingPropaneTank2","targetname");
	propaneTank3 = getent("explodingPropaneTank3","targetname");*/

	/****** HIDE ON TARGET LIGHTS ******/
	//Keep the on versions of the light model hidden until appropriate target takes damage.
	targetLight1_on Hide();
	targetLight2_on Hide();

	/****** DAMAGE OBJECTS ********/

	//TARGETS
	target1 SetCanDamage(true);
	target2 SetCanDamage(true);
	target3 SetCanDamage(true);
	target4 SetCanDamage(true);
	target5 SetCanDamage(true);
	target8 SetCanDamage(true);
	target9 SetCanDamage(true);
	target10 SetCanDamage(true);
	target13 SetCanDamage(true);
	target14 SetCanDamage(true);
	target15 SetCanDamage(true);
	target16 SetCanDamage(true);
	target17 SetCanDamage(true);
	target18 SetCanDamage(true);
	target19 SetCanDamage(true);
	target20 SetCanDamage(true);
	
	target1 thread damageTarget(1);
	target2 thread damageTarget(1);
	target3 thread damageTarget(1);
	target4 thread damageTarget(1);
	target5 thread damageTarget(1);
	target8 thread damageTarget(2);
	target9 thread damageTarget(2);
	target10 thread damageTarget(2);
	target13 thread damageTarget(2);
	target14 thread damageTarget(3);
	target15 thread damageTarget(3);
	//target16 thread damageTargetLights(targetLight1_on, targetLight1_off, speaker1, "amb_target_buzzer", level.const_fx_exploder_red_light_2 );
	//target17 thread damageTargetLights(targetLight2_on, targetLight2_off, speaker2, "amb_target_buzzer", level.const_fx_exploder_red_light_1 );
	target18 thread damageTarget(4);
	target19 thread damageTarget(4);
	target20 thread damageTarget(5);

	//PROPANE TANKS
	/*propaneTank1 SetCanDamage(true);
	propaneTank2 SetCanDamage(true);
	propaneTank3 SetCanDamage(true);

	propaneTank1 thread damagePropaneTank("mpl_kls_artillery_impact");
	propaneTank2 thread damagePropaneTank("mpl_kls_artillery_impact");
	propaneTank3 thread damagePropaneTank("mpl_kls_artillery_impact");*/

	
	/****** MOVE TARGETS ******/
	//Sliding Targets
	target1 thread moveTarget(4, 220, 10.1);	
	target2 thread moveTarget(4, 220, 5.2);	
	target3 thread moveTarget(4, 220, 10.3);	
	target4 thread moveTarget(3, 290, 8.4);	
	target5 thread moveTarget(3, 285, 3);
	target6 thread moveTarget(1, 228, 8.1);
	target7 thread moveTarget(7, (57, 23, 0), 3);
	target8 thread moveTarget(1, 250, 5.5);
	target9 thread moveTarget(1, 146, 8.6);
	target10 thread moveTarget(1, 165, 8.7);
	target11 thread moveTarget(4, 136, 5.05);
	target12 thread moveTarget(3, 136, 7.15);
	target13 thread moveTarget(1, 228, 8.25);
	target16 thread moveTarget(4, 164, 5.35);
	target17 thread moveTarget(5, 48, 5.45);
	target18 thread moveTarget(3, 270, 8.55);
	target19 thread moveTarget(6, 70, 6.65);
	target20 thread moveTarget(1, 130, 5.75);



	//Hinge Targets
	//targetHinge1 thread rotateTarget(2, 90, 0.5, 3);	//-Z direction, 90 degrees, in .5 seconds, wait inbetween for 3 seconds.
	target11 thread rotateTarget(2, 90, 0.5, 2);
	target12 thread rotateTarget(1, 90, 0.7, 3);

	//TRIGGERS
	target9.triggeroff = true;
	alleyTrigger thread triggerCheck(target9);
	target7.triggeroff = true;
	windowTrigger thread triggerCheck(target7);
}

triggerCheck(target)
{
	self endon("game_ended");
	while (1)
	{
		self waittill("trigger", player);

		//If the target is close enough to the player to cause a possible issue, tell the target to go back the other direction.
		distance = Distance(target.origin, self.origin);
		if (distance <= 90)
		{
			if( isDefined(target.triggeroff))
				target.triggeroff = false; //Stop the target.

			target notify("targetStopMoving");

			while( isdefined( player) && player isTouching(self) && distance <= 90)
			{
				wait 0.1;
			}
			if( isDefined(target.triggeroff))
				target.triggeroff = true; //Start the target.

			target notify("targetStopMoving");
		}
	}
}

damageTarget(dir)
{
	self endon("game_ended");
	while(1)
	{
		self waittill("damage", damage, attacker, direction);

		switch(dir)
		{
		case 1:
			self rotateroll(self.angles[1] + 90, .1);
			wait(.2);
			self rotateroll(self.angles[1] - 90, .1);
			wait(.2);
			self PlaySound ("amb_target_flip");
			break;
		case 2:
		{
			rotation = 1;
			if ( isdefined( attacker ) && isPlayer( attacker ) )
			{
				//yaw = get2DYaw( attacker.origin, self.origin );
				//if ( attacker.angles[1] > yaw ) 
				//	rotation = -1;
				
			}
			
			self rotateyaw(self.angles[2] + (180 * rotation), .3);
			self PlaySound ("amb_target_twirl");
			self waittill("rotatedone");
		}
			break;
		case 3:
			self rotatepitch(self.angles[1] + 90, .1);
			wait(.2);
			self rotatepitch(self.angles[1] - 90, .1);
			wait(.2);
			self PlaySound ("amb_target_flip");
			break;
		case 4:
			self rotateroll(self.angles[1] - 90, .1);
			wait(.2);
			self rotateroll(self.angles[1] + 90, .1);
			wait(.2);
			self PlaySound ("amb_target_flip");
			break;
		case 5:
			self rotatepitch(self.angles[1] - 90, .1);
			wait(.2);
			self rotatepitch(self.angles[1] + 90, .1);
			wait(.2);
			self PlaySound ("amb_target_flip");
			break;

		}
	}
}

//Pass in one of the following to define the start direction of the target: 1 for +y, 2 for -y, 3 for +x, 4 for -x, 5 for +Z, 6 for -Z.
//Pass in the distance in units the target is to travel.
//Pass in the ammount of time in seconds that it will take the target to travel that distance.
moveTarget(dir, dis, speed)
{
	self endon("game_ended");
	keepMoving = true;	//Local var to decide if the target needs to be paused or not.

	//Get the targets starting position or nearPos
	startPOS = self.origin;
	//Find out the targets far position.
	FarPOS = self.origin;
	
	sound = Spawn ("script_origin", self.origin);
	sound LinkTo(self);
	sound PlayLoopSound ("amb_target_chain");
	
	switch(dir)
	{
	case 1://+Y
		farPOS = self.origin + (0,dis,0);
		break;
	case 2://-Y
		farPOS = self.origin - (0,dis,0);
		break;
	case 3://+X
		farPOS = self.origin + (dis,0,0);
		break;
	case 4://-X
		farPOS = self.origin - (dis,0,0);
		break;
	case 5://+Z
		farPOS = self.origin + (0,0,dis);
		break;
	case 6://-Z
		farPOS = self.origin - (0,0,dis);
		break;
	case 7://Custom
		farPOS = self.origin - dis;
		break;
	}
	
	//Move the target
	while(1)
	{
		if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
			keepMoving = self.triggeroff;

		switch(dir)
		{
		case 1: //+Y
			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");

			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				break;
			self moveto(startPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			break;
		case 2: //-Y
			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");

			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				break;
			self moveto(startPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			break;
		case 3: //+X
			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");

			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				break;
			self moveto(startPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			break;
		case 4: //-X
			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");

			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				break;
			self moveto(startPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			break;
		case 5: //+Z
			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");

			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				break;
			self moveto(startPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			break;
		case 6: //-Z
			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				break;
			self moveto(startPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			break;
		case 7: //Custom
			if(keepMoving == false)
				self waittill("targetStopMoving"); //Wait here till the player leaves the trigger.

			self moveto(farPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
			if( isDefined(self.triggeroff)) //Does the target have the Key triggeroff? If so, set keepMoving to its value.
				keepMoving = self.triggeroff;

			if(keepMoving == false)
				self waittill("targetStopMoving"); //Wait here till the player leaves the trigger.
			self moveto(StartPOS, speed);
			self waittill_any("movedone","targetStopMoving");
			self PlaySound ("amb_target_stop");
		
			
		}
	}
}


rotateTarget(dir, deg, speed, pauseTime)
{
	self endon("game_ended");
	while(1)
	{
		switch(dir)
		{
		case 1:	//+Z
			self rotateyaw(self.angles[2] + deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			self rotateyaw(self.angles[2] - deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			break;
		case 2: //-Z
			self rotateyaw(self.angles[2] - deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			self rotateyaw(self.angles[2] + deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			break;
		case 3: //+X
			self rotateroll(self.angles[0] + deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			self rotateroll(self.angles[0] - deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			break;
		case 4: //-X
			self rotateroll(self.angles[0] - deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			self rotateroll(self.angles[0] + deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			break;
		case 5: //+Y
			self rotateroll(self.angles[1] + deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			self rotateroll(self.angles[1] - deg, speed);
			self PlaySound ("amb_target_rotate");
			wait(pauseTime);
			break;
		case 6: //-Y
			self rotatepitch(self.angles[1] - deg, speed);
			wait(pauseTime);
			self rotatepitch(self.angles[1] + deg, speed);
			wait(pauseTime);
			break;
		case 7: //Custom
			self rotateto( (self.angles[0] + 90, self.angles[1] - 90, self.angles[2] + 45), speed);
			wait(pauseTime);
			self rotateto( (self.angles[0] - 90, self.angles[1] + 90, self.angles[2] - 45), speed);
			wait(pauseTime);
		}
	}
}