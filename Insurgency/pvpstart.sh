#!/bin/bash

strMapList=()
strMapList+=("Crossing?Scenario=Scenario_Crossing_Push_Insurgents")
strMapList+=("Crossing?Scenario=Scenario_Crossing_Push_Security")
strMapList+=("Crossing?Scenario=Scenario_Crossing_Team_Deathmatch")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Push_Insurgents")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Push_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Team_Deathmatch")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Push_Insurgents")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Push_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Team_Deathmatch")
strMapList+=("Hideout?Scenario=Scenario_Hideout_Push_Insurgents")
strMapList+=("Hideout?Scenario=Scenario_Hideout_Push_Security")
strMapList+=("Hideout?Scenario=Scenario_Hideout_Team_Deathmatch")
strMapList+=("Hillside?Scenario=Scenario_Hillside_Push_Insurgents")
strMapList+=("Hillside?Scenario=Scenario_Hillside_Push_Security")
strMapList+=("Hillside?Scenario=Scenario_Hillside_Team_Deathmatch")

RANDOM=$$$(date +%N)
strMap=${strMapList[$RANDOM % ${#strMapList[@]}]}
Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $strMap?MaxPlayers=24 -log -LogCmds="LogGameplayEvents Log" -QueryPort=27131 -Port=27102 -hostname="麦克雷#2 PvP实战对抗" -MapCycle=MapCycle
