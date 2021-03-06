waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Server Information"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["policerules2","Altis Laws"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
player createDiarySubject ["zones","Where is Stuff?"];
player createDiarySubject ["illegalitems","Illegal Activity"];
player createDiarySubject ["donations","Donation Info"];
player createDiarySubject ["perks","Perks Info"];
player createDiarySubject ["whitelistcivs","Whitelist Civ Rules"];
player createDiarySubject ["controls","Controls"];

		player createDiaryRecord ["whitelistcivs",
		[
			"Security Contractor Rules",
				"
<font color = '#FF0000'>These are the rules and regulations that must be followed while playing as a Security Contractor</font color><br/><br/>

<font color = '#FF4000'>---------------------------Level 2 and 3----------------<br/>
1. </font color>You are not to kill anyone unless its your only choice. You can buy tazers so use them. Killing must only be in cases of absolute immediate self defence<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You must perform your jobs such as removing money from Gas Stations, Hospitals and the Bank as often as you can<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>You must only contract yourself out to people doing legal jobs<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color><br/>You must answer requests for security contractors and offer a price for your services<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>You must only use security contractor vehicles (The un-marked versions are fine, just don't use other jobs vehicles)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>You must not work against the police force as doing so can lead to your white-listing being removed. Do not enter a crime scene and expect to be treated different<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>Exploiting this job in any form or fashion will be met with appropriate consequences<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>You may not enter an illegal zone (Red area) unless the police are raiding it and invite you (You do not make up the numbers needed for a raid)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
9. </font color>You may not enter the police TS channels, use the whitelisted civilian security channels instead<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
10. </font color>You are NOT a police officer! You can not ticket people because you see them driving crazy etc, you only deal with current charges that a player has<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
11. </font color>You MUST declare before stunning somebody. Vocal or sirens is good enough. This is because you are not an automatic KOS from civilians, therefore they are not stun on sight for you either<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

		player createDiaryRecord ["whitelistcivs",
		[
			"Medic Rules",
				"
<font color = '#FF0000'>These are the rules and regulations that must be followed while playing as a Medic</font color><br/><br/>

<font color = '#FF4000'>--------------------------Level 1-------------------------------------------<br/>
1. </font color>You are not ever to be armed<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You must await police permission before entering a crime scene and must have police permission to revive at a crime scene<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>You must not travel with civilians as a personal medic, you must play your role correctly to revive all citizens of Altis<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Although civilians are not to target you (Since you're un-armed) reviving somebody during a battle is fair reason for a civilian of an opposite team to kill you<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>You must only use medic vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>It is a rule to value your life, do not run into a battle to revive someone unless you think you will not get killed<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

		player createDiaryRecord ["whitelistcivs",
		[
			"Mechanic Rules",
				"
<font color = '#FF0000'>These are the rules and regulations that must be followed while playing as a Mechanic</font color><br/><br/>

<font color = '#FF4000'>------------------------------Level 1------------------------------------<br/>
1. </font color>You are not to run around with a gun out, you may have one in your vehicle or backpack for protection though<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You must await police permission before entering a crime scene and must have police permission to impound vehicles at a crime scene<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>You must not travel with civilians as a personal mechanic, you must play your role correctly to impound and repair all vehicles fairly<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Although civilians are not to target you (Since you're mostly un-armed) impounding somebodies vehicle during a battle is fair reason for a civilian of an opposite team to kill you<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>You must only use mechanic vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>You must only impound vehicles if they are...<br/>
* Abandoned and the driver doesn't reply within 30s of a text message<br/>
* Left unlocked abandoned<br/>
* Blocking spawn points with no driver to be seen<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>You must NOT exploit impounding to make exploited money (If caught, an instant blacklist will occur and possible banning)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

player createDiaryRecord ["whitelistcivs",
		[
			"Information",
				"
<font color = '#FF0000'>These slots are for people who are serious about role playing and will contain access to easily exploitable content</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>While playing WL Civ your name must be preceded with the Tag of your job (Mechanic) Huntah, (Security) Huntah etc</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>Currently the jobs available are Medic, Mechanics and Security Contractors, more will soon follow</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>None of these jobs put you above the law, you are still just a civilian</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>level 1 jobs are open to the public via applications on our website, level 2,3 job promotions are done monthly depending on your activity at lower levels</font color><br/><br/>

				"
		]
	];

player createDiaryRecord ["perks",
		[
			"Level Five",
				"
<font color = '#FF0000'>Level Five<br/><br/>1000 hours on the server</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to all civilian and cop vehicles 25% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save the following vehicles [Device Miner, Box Hemtt, Ghost Hawk, Mowhawk, Hellcat, SVD, Jets]<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save armed vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>All vehicles bought and taken from the garage will have an extra 100% trunk capacity for storage of virtual items<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Weapons at the weapon shops (Legal and Illegal) all 25% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Morality increases and decreases 100% fast than the normal rate<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>An extra 5 lives as a cop<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>40 slots in your police locker (default is 10)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>

* </font color>Can begin gang area convoys with only 10 players online<br/>
				"
		]
	];

player createDiaryRecord ["perks",
		[
			"Level Four",
				"
<font color = '#FF0000'>Level Four<br/><br/>750 hours on the server</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to all civilian and cop vehicles 20% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save the following vehicles [Device Miner, Box Hemtt, Ghost Hawk, Mowhawk, Hellcat, SVD, Jets]<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save armed vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>All vehicles bought and taken from the garage will have an extra 80% trunk capacity for storage of virtual items<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Weapons at the weapon shops (Legal and Illegal) all 20% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Morality increases and decreases 80% fast than the normal rate<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>An extra 4 lives as a cop<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>35 slots in your police locker (default is 10)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Can begin gang area convoys with only 12 players online<br/>
				"
		]
	];

player createDiaryRecord ["perks",
		[
			"Level Three",
				"
<font color = '#FF0000'>Level Three<br/><br/>200 hours on the server</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Player can purchase 2 extra in-game houses<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to all civilian and police vehicles 15% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save the following vehicles [Device Miner, Box Hemtt, Ghost Hawk, Mowhawk, Hellcat, SVD, Jets]<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save armed vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>All vehicles bought and taken from the garage will have an extra 60% trunk capacity for storage of virtual items<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Weapons at the weapon shops (Legal and Illegal) all 15% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Morality increases and decreases 60% fast than the normal rate<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>An extra 3 lives as a cop<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>30 slots in your police locker (default is 10)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Can begin gang area convoys with only 14 players online<br/>
				"
		]
	];

player createDiaryRecord ["perks",
		[
			"Level Two",
				"
<font color = '#FF0000'>Level Two<br/><br/>100 hours on the server</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to all civilian and police vehicles 10% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save the following vehicles [Device Miner, Box Hemtt, Ghost Hawk, Mowhawk, Hellcat, SVD, Jets]<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>All vehicles bought and taken from the garage will have an extra 40% trunk capacity for storage of virtual items<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Weapons at the weapon shops (Legal and Illegal) all 10% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Morality increases and decreases 40% fast than the normal rate<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>An extra 2 lives as a cop<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>25 slots in your police locker (default is 10)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Can begin gang area convoys with only 16 players online<br/>
				"
		]
	];

	player createDiaryRecord ["perks",
		[
			"Level One",
				"
<font color = '#FF0000'>Level One<br/><br/>50 hours on the server</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to all civilian and police vehicles 5% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to permanently save the following vehicles [Device Miner, Box Hemtt, Ghost Hawk, Mowhawk, Hellcat, SVD, Jets]<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>All vehicles bought and taken from the garage will have an extra 20% trunk capacity for storage of virtual items<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Weapons at the weapon shops (Legal and Illegal) all 5% cheaper<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Morality increases and decreases 20% fast than the normal rate<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>An extra 1 life as a cop<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>20 slots in your police locker (default is 10)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Can begin gang area convoys with only 18 players online<br/>
				"
		]
	];

	player createDiaryRecord ["perks",
		[
			"Perks?",
				"
<font color = '#FF0000'>What are Perks?</font color><br/><br/>

Perk levels do reset when the server has a database wipe!!! (Roughly twice a year)<br/><br/>
Perks are a way of rewarding our loyal players<br/>
Your perk level will increase the more you play (If you reach a new level you must relog for it to take effect)<br/><br/>
Winners of competitions will be rewarding with perk levels
				"
		]
	];


player createDiaryRecord ["donations",
		[
			"Gold",
				"
<font color = '#FF0000'>Gold Donator<br/><br/>$30 (Gives you the following for 30 days - Not a subscription)</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to the locked donator civilian slots<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to donator section of forums that includes...<br/>
** Request a new feature thread<br/>
** Faster whitelisting for civilian jobs<br/>
** Fast comp claims<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to donator help rooms on TS<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Up to two custom billboards at your gang base (Per gang/clan)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Gang or personal TS Channels (Option to have 1 hidden channel)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>One re-textured vehicle (Vehicle is able to be bought by everybody)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to use the Arma 3 custom face and custom sounds (DISABLED WHILE TESTING)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>
				"
		]
	];

player createDiaryRecord ["donations",
		[
			"Silver",
				"
<font color = '#FF0000'>Silver Donator<br/><br/>$20 (Gives you the following for 1 month - Not a subscription)</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to the locked donator civilian slots<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to donator section of forums that includes...<br/>
** Request a new feature thread<br/>
** Faster whitelisting for civilian jobs<br/>
** Fast comp claims<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to donator help rooms on TS<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Up to two custom billboards at your gang/clan base<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>One re-textured vehicle (Vehicle is able to be bought by everybody)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to use the Arma 3 custom face and custom sounds (DISABLED WHILE TESTING)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Gang TS Channels<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>
				"
		]
	];

player createDiaryRecord ["donations",
		[
			"Bronze",
				"
<font color = '#FF0000'>Bronze Donators<br/><br/>$10 (Gives you the following for 1 month - Not a subscription)</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to the locked donator civilian slots<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to donator section of forums that includes...<br/>
** Request a new feature thread<br/>
** Faster whitelisting for civilian jobs<br/>
** Fast comp claims<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Access to donator help rooms on TS<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Ability to use the Arma 3 custom face and custom sounds (DISABLED WHILE TESTING)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>
				"
		]
	];

	player createDiaryRecord ["donations",
		[
			"How To?",
				"
<font color = '#FF0000'>How to donate?</font color><br/><br/>


If the donation button is not currently visible on our website, contact an admin on TS3<br/><br/>
www.TheDarkSideGames.com
<br/>ts.thedarksidegames.com:10004

				"
		]
	];

	player createDiaryRecord["zones",
		[
			"Kavala",
				"
					Kavala<br/><br/>

					<marker name='v'>ATM</marker><br/>
					<marker name='0'>Car Shop</marker><br/>
					<marker name='civ_gar_1'>Car Garage</marker><br/>
					<marker name='kavTruck'>Truck Shop</marker><br/>
					<marker name='boat_2_2'>Boat Shop / Water Missions</marker><br/>
					<marker name='civ_ship_1_2222'>Boat Spawn</marker><br/>
					<marker name='civ_gar_1_1_1_2_1_1'>Air Garage</marker><br/>
					<marker name='bv'>Air Refuelling</marker><br/>
					<marker name='h1_2'>Helicopter Landing Area</marker><br/>
					<marker name='gun_store_1_1_1_1_1'>Gun Shop</marker><br/>
					<marker name='Gen_3_1_2'>Market</marker><br/>
					<marker name='Gen_3'>Clothing</marker><br/>
					<marker name='Gen_3_2_1'>Hi Tech</marker><br/>
					<marker name='Gen_3_2'>Licenses</marker><br/>
					<marker name='Gen_3_1_2'>Real Estate Agent</marker><br/>
					<marker name='police_hq_1'>Police Station</marker><br/>
				"
		]
	];

	player createDiaryRecord["zones",
		[
			"Zaros",
				"
					Zaros<br/><br/>

					<marker name='v_1'>ATM</marker><br/>
					<marker name='0_1_1'>Car Shop</marker><br/>
					<marker name='0_1_1_1'>Car Garage</marker><br/>
					<marker name='kavTruck'>Truck Shop</marker><br/>
					<marker name='gun_store_1'>Gun Shop</marker><br/>
					<marker name='Gen_3_1_1'>Market</marker><br/>
					<marker name='Gen_3_3'>Clothing</marker><br/>
					<marker name='Gen_3_2_1_1'>Hi Tech</marker><br/>
					<marker name='Gen_3_2_2'>Licenses</marker><br/>
					<marker name='cop_spawn_6'>Police Station</marker><br/>
				"
		]
	];

	player createDiaryRecord["zones",
		[
			"Athira",
				"
					Athira<br/><br/>

					<marker name='v_1_3'>ATM</marker><br/>
					<marker name='car1_2_1_1'>Car Shop</marker><br/>
					<marker name='0_1_1_1_1_1'>Car Garage</marker><br/>
					<marker name='0_2'>Truck Shop</marker><br/>
					<marker name='h1_1'>Helicopter Landing Area</marker><br/>
					<marker name='Gen_3_1_1_2'>Market</marker><br/>
					<marker name='Gen_3_3_1'>Clothing</marker><br/>
					<marker name='Gen_3_2_1_1_1'>Hi Tech</marker><br/>
					<marker name='Gen_3_2_2_1'>Licenses</marker><br/>
					<marker name='Gen_3_2_2_1_2'>Insurance Broker</marker><br/>
					<marker name='cop_spawn_3'>Police Station</marker><br/>
				"
		]
	];

	player createDiaryRecord["zones",
		[
			"Pyrgos",
				"
					Pyrgos<br/><br/>

					<marker name='v_1_2_1'>ATM</marker><br/>
					<marker name='colourOld'>Car Shop</marker><br/>
					<marker name='0_1_1_1_1_2'>Car Garage</marker><br/>
					<marker name='boat_8'>Boat Shop / Water Missions</marker><br/>
					<marker name='civ_ship_310'>Boat Spawn</marker><br/>
					<marker name='gun_store_1_1_1_1'>Gun Shop</marker><br/>
					<marker name='Gen_3_1_1_2_1'>Market</marker><br/>
					<marker name='Gen_3_3_1_1'>Clothing</marker><br/>
					<marker name='colourNew'>Hi Tech</marker><br/>
					<marker name='Gen_3_2_2_1_1'>Licenses</marker><br/>
					<marker name='Gen_3_1_2_2'>Real Estate Agent</marker><br/>
					<marker name='police_hq_2'>Police Station</marker><br/>
				"
		]
	];

	player createDiaryRecord["zones",
		[
			"Sofia",
				"
					Sofia<br/><br/>

					<marker name='v_1_2_1_1'>ATM</marker><br/>
					<marker name='car1_2_1_1_1_1'>Car Shop</marker><br/>
					<marker name='0_1_1_1_1'>Car Garage</marker><br/>
					<marker name='kavTruck_1_2'>Truck Shop</marker><br/>
					<marker name='gun_store_1_1'>Gun Shop</marker><br/>
					<marker name='Gen_3_1_1_2_1_1'>Market</marker><br/>
					<marker name='Gen_3_3_1_1_1'>Clothing</marker><br/>
					<marker name='Gen_3_2_1_1_1_1_1'>Hi Tech</marker><br/>
					<marker name='Gen_3_2_2_1_1_1'>Licenses</marker><br/>
					<marker name='Gen_3_1_2_1'>Real Estate Agent</marker><br/>
					<marker name='cop_spawn_5'>Police Station</marker><br/>
				"
		]
	];

	player createDiaryRecord["zones",
		[
			"Legal Money Making",
				"
					Legal Money Making<br/><br/>

					Mines<br/><br/>

					<marker name='iron'>Iron Mine</marker><br/>
					<marker name='copper'>Copper Mine</marker><br/>
					<marker name='1_2'>Rock Mine</marker><br/>
					<marker name='1_1'>Diamond Mine</marker><br/>
					<marker name='1'>Oil Mine</marker><br/>
					<marker name='1_3'>Oil Mine</marker><br/>
					<marker name='1_5'>Oil Mine</marker><br/>
					<marker name='sand'>Sand Mine</marker><br/>
					<marker name='salt'>Salt Mine</marker><br/>

					<br/><br/><br/>

					Water Collection Areas<br/><br/>

					<marker name='relic1'>Relics</marker><br/>
					<marker name='relic2'>Relics</marker><br/>
					<marker name='relic3'>Relics</marker><br/>

					<br/><br/><br/>

					Processors<br/><br/>

					<marker name='oilp_1_3'>Iron Processor</marker><br/>
					<marker name='oilp_1_3_1_1'>Copper Processor</marker><br/>
					<marker name='oilp_1_3_1'>Diamond Processor</marker><br/>
					<marker name='oilp_1_2'>Rock Processor</marker><br/>
					<marker name='oilp'>Oil Processor</marker><br/>
					<marker name='oilp_1'>Sand Processor</marker><br/>
					<marker name='oilp_1_1'>Salt Processor</marker><br/>
					<marker name='oilp_1_4'>Lumber Processor</marker><br/>

					<br/><br/><br/>

					Factories (Legal Traders)<br/><br/>

					<marker name='f'>Panochori Factory</marker><br/>
					<marker name='f_1'>Ioannina Factory</marker><br/>
					<marker name='f_1_1'>Chalkeia Factory</marker><br/>
					<marker name='f_1_1_1'>Athira Factory</marker><br/>

				"
		]
	];

		player createDiaryRecord["zones",
		[
			"Illegal Money",
				"
					Illegal Money<br/><br/>

					Harvesting || Stealing <br/><br/>

					<marker name='cocaineField'>Cocaine Field</marker><br/>
					<marker name='heroinField'>Heroin Field</marker><br/>
					<marker name='weedField'>Weed Field</marker><br/>
					<marker name='relic5'>Illegal Relics</marker><br/>
					<marker name='relic6'>Illegal Relics</marker><br/>

					<br/><br/>

					Processing<br/><br/>

					<marker name='gang_area_3_1'>Heroin Processing</marker><br/>
					<marker name='gang_area_2'>Cocaine Processing</marker><br/>
					<marker name='gang_area_2_1'>Weed Processing</marker><br/>
					<marker name='gang_area_2_1_1'>Illegal Relic Processing</marker><br/>

					<br/><br/>

					Traders<br/><br/>

					<marker name='g'>Illegal Goods Dealer (Drugs/Relics)</marker><br/>
					<marker name='g_1'>Illegal Goods Dealer (Drugs/Relics)</marker><br/>
					<marker name='g_2'>Illegal Goods Dealer (Drugs/Relics)</marker><br/>
					<marker name='g_2_1'>Illegal Goods Dealer (Drugs/Relics)</marker><br/>
				"
		]
	];

	player createDiaryRecord["changelog",
		[
			"Darkside Life Information",
				"
					The Darkside Life is an Altis life mod developed by Huntah. With textures created by SC0RP10X.<br/><br/>
					This missions frame work is the sole property of Huntah.<br/><br/><br/>
					For a release log and change logs check out website (www.theDarksideGames.com)
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Base Building",
				"
<font color = '#FF0000'>The following are rules to be followed while handling base building objects</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>H Barriers are only allowed to be used on location during terrorist mission<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Do not kill people with objects attached to you, these objects no-clip through walls and can kill anybody they touch. Killing in this manner is against the rules<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Do not block important roads/drive ways. Examples are the Bank entrances, jail bridge etc... You can divert traffic, but not totally block it<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Clean up you stuff when you're done, you are responsible for people dying because of careless use of your items, this includes setting up death traps.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Use these items for intended proposes only, other offences will be dealt with by admins depending on the circumstances<br/>


<font color = '#FF0000'>Failure to follow these rules will result in comp, then the ability to use these object revoked from you</font color><br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Baiting Police",
				"
<font color = '#FF0000'>Baiting is when you begin either a scripted or roleplay event, only to kill police without any real form of roleplay</font color><br/><br/>
<font color = '#FF0000'>The following are examples of baiting - Each is against the rules and punishable depending on the situation</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Planting C4 in an area where you have no intentions of robbing or planting so your group can do another illegal task<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Planting a safe cracker with no intentions of robbing the safe or so that your group can more easily perform another illegal task<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Offering to hand yourself in but instead shooting at or restraining the officers who come for the arrest<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Claiming to need help but then attacking the police officers who come (Same applies for using a friend to ask for help)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Starting a terrorist/hostage/convoy mission etc with no intentions of completing it<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Any other instance that an admin believes is baiting and exploiting the police priority order<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"KOS Zones",
				"
<font color = '#FF0000'>There are 5 standard ([Civ Vs Civ] or [Civ Vs Cop]) KOS zones, Other areas become KOS under certain circumstances</font color><br/><br/>
<font color = '#FF0000'>Moving a civilian by force into a KOS zone to execute them is against the rules</font color><br/><br/>
<font color = '#FF0000'>Full time KOS Zones are...</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The jail Island (Inside red circle)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Any of the four gang areas (Inside red circle)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Any drug field/Illegal relic zone (Inside red circle)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Rebel KOS Area - The large red circle in the south (NOT the two other rebel spawn points)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>All clan bases are full time KOS zones inside the red circle<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>
<font color = '#FF0000'>Other possible KOS zones include</font color><br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The Bank while robbery is in progress (Can not be shot into without declaration to those inside)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Checkpoints while take over is in progress (Can not be shot into without declaration to those inside) - (Do not shoot people who are no threat to you)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>
<font color = '#FF0000'>Other examples of KOS include</font color><br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>If you're robbing a gas station/hospital and somebody (Armed) stops near you and you fear that they are going to kill you<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>If you see somebody robbing a gas station/hospital, you are allowed to kill them (Only if you are BOTH at the gas station/hospital (Within 100 meters))<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>If someone is stealing the spy docs, if near you while you are stealing them, they are allowed to be killed<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>
<font color = '#FF0000'>                              KOS Rules of Engagement are</font color><br/><br/><br/>
<font color = '#FF0000'>Fleeing the KOS zone</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>If in combat inside a KOS zone and somebody runs away, you may chase them and continue to engage with them until either one of the following happens.<br/>
* You die<br/>
* They die<br/>
* 15 Minutes has passed since your last conflict with them<br/><br/>

<font color = '#FF0000'>Armed vehicles</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>If you're shooting somebody with an armed vehicle and they flee, you may leave the KOS zone to engage them but only...<br/>
* During the same conflict, if you lose sight on them and do not find them within 1 minute, you must return to the kos zone with your armed vehicle and the combat situation is deemed over.<br/><br/>

<font color = '#FF0000'>Shooting from in or outside of a KOS zone</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>A dec is not required if you are shooting into a kos zone that your group is currently inside of and currently in combat<br/>
* You may shoot out of a kos zone at people if they are doing one of the following actions...(You must already be in combat first)<br/>
*** Landing/Stopping after you have fired warning shots near them<br/>
*** Looking at you, armed or unarmed... If they are unarmed fire some warning shots before killing them to give them time to leave<br/>
*** Running towards the KOS zone armed (Such as landed on a hill and running towards the area to attack/help their friends)<br/>
* You may declare by shooting near someones vehicle (Without disabling it). This is a valid declaration, if you leave after taking fire you are no longer in combat, if you remain within 3km you are still deemed to be 'in-combat' with 'every threat' in the area (Since you do not know exactly who shot at you)<br/>
* If you kill someone with 'warning shots' you must comp them for their gear + time. If you do this too often you will be considered careless and punished under the rdm rules.<br/><br/>

<font color = '#FF0000'>Gang members during KOS conflict</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>All above declarations only affect the person/people inside of or nearby the KOS zone, clan/gang members in unrelated areas remain neutral and need to be declared on through normal methods before engagement can begin. (Such as a gang text message declaration)<br/>

<br/><br/>
<font color = '#FF0000'>These are the only areas excluded from RDM rules, all other deaths must comply with standard RDM rules</font color><br/><br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits",
				"
<font color = '#FF0000'>These are considered exploits, and you will not be kicked, but banned.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Getting out of jail via any method other than paying bail or escaping via the C4 placement method.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, ban.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
<font color = '#FF0000'>You cannot break any serious laws in the safe zones (Unless being chased into safe zone, the crime can not start in the safe zone)</font color><br/><br/>
Example (Arson, Stealing, Robbing, Killing, Hostage Taking)<br/><br/><br/>
If you are caught doing any of the above in a safe zone you may be kicked or banned depending on the severity.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
<font color = '#FF0000'>Fleeing into a safezone while being chased or in combat can be punished the same as combat logging)</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/>

				"
		]
	];


	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses",
				"
Consider this your one and only warning.<br/><br/>

<font color = '#FF0000'>The following can all result in a permanent server ban</font color><br/>
<br/><br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Scripting.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Database Manipulation.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>DDOS/DOS (Distributed/Denial Of Service).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Cheating.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Exploiting(See 'Exploits').<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Being kicked 3 or more times in one day.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>Trolling.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>Metagaming.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>
(Is any strategy, action or method used in a game which transcends a prescribed ruleset, uses external factors to affect the game, or goes beyond the supposed limits or environment set by the game. Another definition refers to the game universe outside of the game itself. <br/> USING PLAYER TAGS IS NOT META-GAMING, THEY ARE THERE FOR A REASON<br/><font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
9. </font color>Duping.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/>
(Making an exact copy of items(money) from one original item(money) usually game bugs,<br/>
Example: Guns being able to be picked up at the same time by two players.<br/><font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
10. </font color>Random Death Matching(See RDM).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
11.</font color> New Life Rule(See NLR).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
12. </font color>Vehicle Death Matching(See 'VDM').<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
13. </font color>Using any auto mouse clicking software.<br/><br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
		"Hostage Situations",
				"
<font color = '#FF0000'>Hostage taking is an automated system, simply restrain an armed person, take them to a hostage area, windows key them, and click begin ransom mission</font color><br/><br/>
<font color = '#FF0000'>If you have not begin a ransom mission within 10 minutes of capturing a hostage, you must set them free un-harmed (This is to prevent trolling of peoples time)</font color><br/><br/>

<font color = '#FF4000'>-----------RULES FOR CAPTORS------------------------------------------------------------</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>You may not take friends hostage in order to bait police into combat<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You may only take armed people hostage<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Logging out after beginning a ransom mission is considered combat logging<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>The hostage area becomes a KOS area once a ransom mission has began<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>You and your group must only conduct one ransom mission at a time<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>You must begin your ransom mission within 10 minutes of taking a hostage<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>The hostage must remain in an accessible location, not inside a building, vehicle or on a roof top<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/>
<font color = '#FF4000'>-----------RULES FOR HOSTAGES------------------------------------------------------------</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Once your captors tell you that your coms are taken, you are not to text message anybody or tell anybody where you are through any means<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You are not allowed to call out positions of captors to police through direct chat<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>You are not allowed to log out, logging our during a ransom mission is strictly not allowed, doing so will result in punishment<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Out of roleplay verbal abuse to your captors is not allowed<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Once you are either saved or set free (After ransom paid). You can not seek revenge on your captors without roleplay redeclaration<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
		"Non-Combat Zones",
				"

<font color = '#FF0000'>These are the rules regarding the non-combat zones</font color><br/><br/>
<font color = '#FF0000'>Non-Combat zones can have hours assigned to them, this is in-game time (On your watch). However these areas are always safezones between civilians - Combat is only permitted against police/security</font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Non-Combat zones are in theory safezones, where crime against one another is not permitted. They are different in a sense because what goes on in the zone is does not have to be legal<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>These zones are for civilians only (Including mechanics and medics), No police or other whitelisted civilians are to enter under any circumstances during the non-combat zone hours<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Heading into a con-combat zone to get away from police or civilians chasing you will be punished in the same way as combat logging<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Destroying peoples property inside a non-combat zone is not allowed<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Police and Security are allowed to raid a non-combat zone durings hours when the area is no longer non-combat.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Any current fights going on between civilians must pause while inside a non-combat zone<br/><br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
		"Business Zones/Applications",
				"

<font color = '#FF0000'>Business zones are yellow circles that contain a private business</font color><br/><br/>
<font color = '#FF0000'>The following are the rules relating to these areas (W.I.P)</font color><br/><br/><br/>

<font color = '#FF0000'>Applications</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>To apply for a business spawn simply fill out the application in the business section of our forums<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Your business must pay tax of $2m on the 30th of every month<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Tax will be taken from the business funds, if there is not enough funds, the business will be closed down and legal action will be taken<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>All other information can be found on our forums under the business category<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color><br/><br/><br/>


<font color = '#FF0000'>Business Zone</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Members of the business are not to commit any crimes in their business area unless working in self defence<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Members of the business are not allowed to use their spawn point to assist them in any criminal activity<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Members of business are only allowed to use their spawn point area to conduct the business they have been registered as<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Civilians or Rebels who take up arms to kill cops in town or elsewhere for no RP reason will be considered RDMing. See RDMing section.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Following and or harassing cops for long periods of time will be considered griefing and/or spamming, and will result in your removal from the server.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Actively blocking cops from doing their duties can lead to your arrest. Constantly doing this will result in your removal from the server.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Civ / Cop Ratio",
				"
<font color = '#FF0000'>The server has a police to civilian ratio of 1/3.</font color><br/><br/>


<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>That is 1 cop for every 3 civilians/whitelist civilians.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>Public cops are not included in this ratio, only whitelisted cops count towards the ratio.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>If the police force is over crowded, the last person to have logged in must leave within 20 minutes or once their current combat situation ends.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Boats",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Repeatedly pushing boats without permission.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Pushing a boat with the intention of hurting or killing someone. This is not RP, it is just a flaw in the mechanics (See VDM).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Purposefully running over swimmers/divers (See VDM).<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Aviation",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Purposefully ramming a helicopter into anything. (eg. helicopters, vehicles, buildings)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Flying below 150m over the city constantly. Once is illegal, more than that you risk crashing into the city, thus against server rules.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Stealing helicopters without proper warning and significant time for the driver to lock the vehicle. If they land and run away without locking, fine, if they just get out and you get in before they get a chance to lock it.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Vehicles",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Purposefully running people over (VDM). There are accidents, and then there is going out of your way to run someone over.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Ramming into other vehicles (Or dropping a lifted vehicle) in order to cause an (explosion/injure the person enough to kill them) is classed as VDM.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Constantly trying to enter vehicles that do not belong to you in order to grief the vehicle owner, and not trying to RP (trolling).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Purchasing excessive amounts of vehicles just to block roads (Role played road blocks is ok), vehicle spawns, or any reason other than using it for what it is meant for.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>You are not to lift a vehicle with passengers inside of it without their permission.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>You are not to store a vehicle during any combat situation.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/><br/>
<font color = '#FF0000'>Any time a vehicle is used to kill somebody, either towed, lifted, air, sea and car in any shape or form is VDM. Special conditions apply sometimes, these cases will be decided upon by an admin</font color><br/><br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Communication Rules",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>You are not to communicate through any program in/out of game while restrained by either a civilian or a cop (This ends once you become un-cuffed)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>No chat channel is allowed to be spammed with voice or text, including Arma3 custom sounds<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Teamspeak channels are split up into areas for a reason. Cops must be in the cop channels at all times.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Civilians cannot be in any cop channels on teamspeak in order to gather information on their location or movements. Civs caught doing this will be removed the channel. Repeat offenders can be kicked or banned from both the game and teamspeak.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>No matter the situation you can't enter Police/Gang TeamSpeak channels without the consent of the members in the channel.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Help chat is only to be used to ask for help with game-mode questions, no complaining or suggestions are allowed.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>Trade channel is only to be used to offer to sell, buy or trade items/services. Details must be sorted through text (No auctions)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>Beginners channel is only to be used by new players to ask questions about the game, Only players with less than 20 hours and staff can use this channel<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
9. </font color>All players using TeamSpeak must be in an applicable channel to their server slot at all times. If you are caught it could be considered metagaming.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color><br/><br/>

<font color = '#FF0000'>Subsection: Malicious Abuse.</font color><br/>
Abuse of another player is allowed ONLY if the following rules are applied.<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The abuse is within a role-play situation.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You have a legitimate role play reason for the abuse.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>The abuse CAN'T involve any discrimination including but not limited to race, nationality, sex, sexual orientation, disability or religion.



"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Clan Base Rules",
				"
<font color = '#FF0000'>These rules are designed to keep base raiding fair</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The only entrance into a base is never to be blocked, this means a vehicle is not allowed to block an entrance at any time<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>There is to be no glitching through walls or buildings inside bases, This includes getting to un-reachable places through some map (Object) exploit<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Civilians can raid civilians bases at any time, they are KOS areas, though you can not shoot into, or out of the red zone without declaration<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Civilians are only allowed to (Camp) someones base for up to 15 minutes (At least for now until some scripted capture/punishment system is added)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>

"
		]
	];


	player createDiaryRecord ["serverrules",
		[
			"Unarmed Civilian Protection",
				"
<font color = '#FF0000'>All civilians without guns, and not in a group with armed people are not to be killed unless one of the following conditions are met.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The civilian poses a direct threat to your life (eg. The civilian has reported your actions to the police).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>The civilian has or attempted to steal or damage your property.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>The civilian is trespassing in your house.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>The civilian refuses to exit a vehicle and you have no chance to use the 'pullout' option. Such as the vehicle races away to avoid a role play situation.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>The civilian is in a gang or rebel zone. (KOS AREAS)<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/></font color>

				<font color = '#FF0000'>These are all judged by admins on a case by case basis.</font color><br/><br/>
				"
		]
	];
		player createDiaryRecord ["serverrules",
		  [
			"Random Death-matching (RDM)",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1.</font color> Killing anyone without a roleplay cause is classed as RDM. (Unless in KOS Zone)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2.</font color> Declaring a rebellion is not a cause to kill anyone, even cops.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3.</font color> Cops and civilians/rebels can only commence in a shoot-out if there are reasons relating to a crime.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4.</font color> If you are killed in the crossfire of a fight, it is not RDM.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5.</font color> Killing someone in an attempt to protect yourself or others (that you are affiliated with eg. gang member) is not RDMing. (During the robbery ONLY not AFTER!)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6.</font color> Shooting a player without giving reasonable time to follow demands is considered RDM.<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7.</font color> Shooting into a KOS zone (from outside the red area) without current and direct action towards either yourself or a clan member (within the KOS zone) is considered RDM.<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/<br/></font color>

<font color = '#FF0000'>These are all judged by admins on a case by case basis.<br/><br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		  [
			"Civilian Vs Civilian Armed Vehicle Rules",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion. (And vehicle deleted)</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1.</font color> Armed vehicles can be used in any KOS zone.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2.</font color> Armed vehicles are not to be used Vs other gangs unless both gangs have agreed to it in-game<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3.</font color> You can declare on another person while using an armed vehicle, if they are also in an armed vehicle<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4.</font color> Armed vehicles may be used for self defence at any time so long and the armed vehicle was already at the scene where the declaration was sent<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5.</font color> If you declare on a gang who are currently using an armed vehicle, they can then use that armed vehicle to defend themselves against that clan<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/></font color>

<font color = '#FF0000'>These are all judged by admins on a case by case basis.<br/><br/>
				"
		]
	];



	player createDiaryRecord ["serverrules",

				[
			      "Vehicle Deathmatching (VDM))",
				"
<font color = '#FF0000'>Items on this list may result in your removal from the server and/or ban, based on the admins discretion.</font color><br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Using a vehicle as a weapon (Examples below)<br/><br/>
* </font color>Deliberately knocking someone over<br/>
* </font color>Deliberately ramming into someones vehicle to try and stop them (Except proper police pit moves)<br/>
* </font color>Deliberately ramming a vehicle to destroy it (Doesn't matter if someone is inside of it)<br/>
* </font color>Deliberately causing any damage or inability to move to any player while using a vehicle as a weapon (Knocking down to get out and shoot)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/></font color>


<font color = '#FF0000'>These are all judged by admins on a case by case basis.<br/><br/>
				"
		]
	];

	/*
	! Police may break NLR in any area once depending on the amount of civilians online. The police are informed whether or not they are permitted to</font color><br/>

	*/

	player createDiaryRecord ["serverrules",
		[
			"New Life Rule (NLR)",
				"
<font color = '#FF0000'>The New Life Rule applies to police and civilians.</font color><br/><br/>

<font color = '#FF0000'>POLICE</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Public cops may only ever break NLR while in the safezone<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Police may break NLR once if (At the start of the event they are responding to) there was less than 10 times the amount of civilians on than cop (And when they die there is not more)<br/>
<font color = '#FF4000'>* </font color>7 cops and anything less than 70 civilians online means cop CAN NOT break nlr<br/>
<font color = '#FF4000'>* </font color>7 cops and anything more than 69 civilians online means cop CAN break nlr<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Police who have NLR at a location may not visit that location on a drone<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Police may return to Fort Knox or Altis Research Facility and break NLR rule ONCE while it's being robbed<br/><br/><br/>

<font color = '#FF0000'>CIVILIANS</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>If you are killed you must wait 15 minutes before returning to the scene of your death. (Within 1.5km of your death)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>If you are RDM'd, it is not a new life. (MUST be approved by an admin)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>You are not to have any interactions with people inside of your NLR zone, such as viewing them or shooting in at them<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>If you purposefully kill yourself to avoid roleplay, it is not a new life. (But you still can not return to the area of your death and have broken a rule)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>If you die via a legit glitch (Such as getting stuck in a wall) and (you are not in combat) NLR Doesn't apply (If admins approve it)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Vehicles and houses are owned by your characters 'Family', because of this, even after death they still belong to you. For this reason using a security upgrade to find your old vehicle is not breaking NLR<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Combat Logging",
				"
<font color = '#FF0000'>Combat Logging is logging out while in a combat situation to avoid combat or roleplay</font color><br/><br/>


<font color = '#FF0000'>The following are rules related to combat logging - punishments can include gear wipes/jailing or a server ban</font color><br/><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>You are not to log out within 1.5km of your last combat position until 15 minutes has passed.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Logging out while being shot at, or while your nearby friends are being shot at is considered combat logging<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Logging out while being chased, or asked to stop/land etc is considered combat logging<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Logging out while you are restrained, tazed, stunned or being transported by somebody is considered combat logging<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>If you need to leave during combat, inform the people you are in combat with and work out a deal, you dying is normally a good one<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

// Police Section
	player createDiaryRecord ["policerules",
		[
			"Priority Order",
				"
				Crimes must be responded to with the following order of urgency<br/><br/><br/>
				Fort Knox / Altis Research Facility<br/>
				Police Convoy<br/>
				Fed reserve<br/>
				Rebel Convoys<br/>
				Terrorist Missions<br/>
				Jail<br/>
				Hostage Situations<br/>
				Responding to important civilian calls for help<br/>
				Hospitals<br/>
				Checkpoints<br/>
				People with $100k bounties….<br/>
				Gas Stations<br/>
				Power Station<br/>
				Raiding<br/>
				Tracking/Hunting criminals<br/>
				Patrolling / Patrol Missions<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Police Task",
				"
<font color = '#FF0000'>Police must constantly update their current task, do this in the scroll wheel. <br/>This will all officers in knowing what each other are doing</font color><br/><br/><br/>
<font color = '#FF4000'>*Awaiting Orders:</font color> You are awaiting orders from a higher ranking officer<br/>
<font color = '#FF4000'>*Patrolling:</font color> You are patrolling the Island looking for crime (Doesn't mean you must have patrol missions activated)<br/>
<font color = '#FF4000'>*Responding:</font color> You are responding to a crime<br/>
<font color = '#FF4000'>*Pursuing:</font color> You are pursuing a fleeing criminal<br/>
<font color = '#FF4000'>*Sting Operation:</font color> You are staking out a location waiting for a crime to be committed<br/>
<font color = '#FF4000'>*Processing:</font color> You are processing a civilian (Ticket or Arrest) (Most people have their TS muted during this period)<br/>
<font color = '#FF4000'>*Piloting:</font color> You are driving an Air Vehicle<br/>
<font color = '#FF4000'>*Raiding:</font color> Your squad is conducting raids<br/>
<font color = '#FF4000'>*Escorting Convoy:</font color> You are assisting in escorting the police convoy<br/>
<font color = '#FF4000'>*On a break:</font color> You are on a quick break (AFK) (This can not exceed 5 minutes and must be approved)<br/>
<font color = '#FF4000'>*No Information:</font color> You are to lazy to set your current task, demotion?<br/>					"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Military Zone",
				"

<font color = '#FF0000'>Military zones are special areas where police have far greater power than normal</font color><br/><br/><br/>

<font color = '#FF0000'>Currently there is no Military zones</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Anybody seen armed in a military area may be shot on sight, or arrested and charged with Terrorism.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Martial Law and Armed vehicles may be used at any time that the military zone is unsafe for civilians<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Land vehicles on the runway may be destroyed without warning.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>No compensation will be given to innocents killed in a military zone so watch what company you keep<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Security contractors are the only exception, though they must inform the police of their intentions<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color><br/><br/><br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Martial Law",
				"

<font color = '#FF0000'>Martial Law is only to be declared by a Senior Sergeants and above officer (This makes police KOS for rebels)</font color><br/><br/><br/>

<font color = '#FF0000'>Martial Law can only be declared when the crime rate is 8 or above</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color>Martial law will auto un-declare 60 minutes after being set, It can be re-declared if the crime rate is still above 8 at this time<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/>
<font color = '#FF0000'>During Martial law the police have the following rights</font color><br/><br/>
1. </font color>Ability to break NLR indefinitely but you may not spawn within 1.5km of your last death point<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Any armed persons may be shot dead<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Simple RP only is needed when jailing (Telling them their crimes and time and sending quickly)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>All raid rules are suspended<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Any armed vehicles can be used (Kajman keeps it's conditions)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Body Armour Buff<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>RPG restrictions completely removed<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>Police have the ability to use satchel charges<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
9. </font color>All search rules suspended<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
10. </font color>Any vehicles used by criminals can be destroyed (Used in criminal activity)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
11. </font color>All ranks have the ability to switch their weapons to lethal<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
</font color><br/><br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Vehicle Destruction",
				"

<font color = '#FF0000'>These are the reasons for an officer to destroy a civilian vehicle</font color><br/><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>If a vehicle has been searched and the message has come up to confirm that illegal items were found inside the vehicle (This does not include weapons)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Any vehicle used to transport a vehicle that is allowed to be destroyed (Choppers carrying pods - Trucks carrying choppers etc)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Any vehicle currently still on location that used to assist in the arm occupation of government land (Cities, Police HQ's, Checkpoints, Terrorist Missions)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Any vehicle used by somebody who themselves (Or their group) has planted C4. (Bank - Power Station - Jail)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Any vehicle confirmed as being using in or assisting in an illegal convoy or carbomb mission<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Any illegal vehicle (Armed Vehicles, Armoured Vehicles, Bullet Proof Vehicles) (Qulin and Prowler are not considered armoured)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>Any vehicle that is blocking the only entry into a crime scene (Case by case basis (Get permission from highest ranking officer first))<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>If a message has come up informing police they are allowed to destroy a vehicle, examples are vehicles used for convoys<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/>

<font color = '#FF0000'>You must be 100% sure that the vehicle you are destroying is the same vehicle that you are allowed to destroy, if in doubt, do not destroy!</font color>

<br/>
				"
		]
	];



	player createDiaryRecord ["policerules",
		[
			"Use of Armed/Armoured Vehicles",
				"

<font color = '#FF0000'>There is no exceptions to these rules, if you break them first offer comp, if it continues admin action will be taken</font color><br/><br/><br/>

<font color = '#FF0000'>Note, The Police Gorgon is ONLY to be used during Martial Law</font color><br/><br/>

<font color = '#FF0000'>None of these rules need to be followed if server wide martial law is activated (Except the Kajman Rules at the bottom)</font color><br/><br/>

<font color = '#FF0000'>Hunters, Striders, Ifrits (Unarmed) Armed OffRoad (Qulin and Prowler are not considered armoured)</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While responding to hospital robberies and more serious robberys (Fed, Checkpoints, Power Station, Knox, Research Facility, Raids)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While dealing with explosives (IED's, Grenades)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While dealing with people shooting from any vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While escorting any police convoy<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While combating other armoured vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>A Hunter is allowed to be used by a member of the Official Highway Patrol Squad so long as there is no more than 2 police officers travelling in it, this can be used at any time<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>Hunter/Strider/Ifrit HMG (Armed)/Speed Boat Minigun/HMG</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While responding to a civilian who is using an armed land or Sea vehicle (Driver, Passenger or civilian obviously working with the Armed vehicle) (YOU MUST SEE THE ARMED VEHICLE - NOT JUST ASSUME IT)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While responding to the usage of an RPG<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>During Martial Law<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While defending an area from an armed air vehicle (Defending only - Not chasing/Searching)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>Armed Air Vehicles (Excluding Kajman)</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While responding to armed rebel air vehicles only (Including armed planes)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>Police rules while using an Armed Vehicle</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Only people within the above circumstances may be targeted by the armed vehicle, you may not stop and arrest anybody else (Even wanted people) Unless they are within the above circumstances.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>The vehicle must be garaged as soon as the above conditions are no longer being met.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>Police Kajman)</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
* </font color>While responding to armed air, sea or land vehicles and the people immediately assisting them at the scene<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>Police rules while using a Kajman (During and Not during martial law)</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Only people within the above circumstances may be targeted by the kajman, you may not stop and arrest anybody else (Even wanted people) Unless they are within the above circumstances.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>The vehicle must be garaged as soon as the above conditions are no longer being met.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>You may not continue to use the vehicle once the armed vehicle has been destroyed.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>Your primary goal while using the kajman must be to destroy the armed vehicle, even if it is a police vehicle.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
9. </font color>If you take shots from the ground while conducting the above activities, you may shoot soft targets in self-defence, but only when no other option presents itself.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

<font color = '#FF0000'>These rules apply to all Armed vehicles, Land, Air and Sea. (The Mobile Command Unit is exempt from these rules<br/>
Definition of 'Armed Air Vehicle' Is any vehicle shooting from the air, this include an armed ground vehicle being carried by a chopper. It does not include people shooting from the side of a chopper</font color>

<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"The Bank",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The Darkside Bank is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Helicopters flying over the Darkside Bank during a robbery may be disabled.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>If the Darkside Bank is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Nearby officers should immediately head to the Darkside Bank to assist. Petty crimes can be dropped during a robbery.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Police may not fire blindly into the building.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Fort Knox/Research Facility",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The Fort Knox/Research Facility area is illegal for civilians to enter.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Helicopters flying over Fort Knox/Research Facility may be disabled without warning if a robbery is going on.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>If Fort Knox/Research Facility is getting robbed, it is mandatory that all officers move in to stop it.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Police may break NLR once during a Fort Knox/Research Facility Robbery<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Lethal force on robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>Police may not fire blindly into the buildings.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>Any vehicles seen leaving the area may be searched at any time. (Both T and I inventory)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>There is not to be an army of police air vehicles, this isn't the military, use them when needed otherwise patrol in land vehicles<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Allowed landing Pads<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
City Landing Areas: </font color>Some cities have marked areas where landing a chopper is allowed<br/>
Small Towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>

3. </font color>Police air vehicles may not land on roads.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Air vehicles cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>UAV's are not allowed to hover in an illegal zone unless there is a raid in progress, they may however hover outside the zone and scout the area before a raid<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>UAV's are not allowed to return to an area that their driver is barred from due to NLR rule<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Flying Ban (Grounded Air Vehicles)",
				"

<font color = '#FF0000'>Police have the ability to ground civilian Air Vehicles making flying a serious crime</font color><br/><br/>

<font color = '#FF0000'>Conditions to set (One of the following must be true)</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Two or more armed air vehicles confirmed to be flying around<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>One or more Kajmans in the control of Rebels<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>One or more Blackfoots in the control of Rebels<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>One or more missile enabled pawnees in the control of Rebels<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/>

<font color = '#FF0000'>Rules for police</font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>All Civilians have a 5 minutes period to land, after 5 minutes an announcement will be displayed showing that the grounding is now in place<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Once air vehicles are grounded, any force (Including land/sea armed vehicles) can be used to bring down any flying civilian (Without warning)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Once the situation is under control, this must be ended to allow civilians to fly around freely<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------</font color><br/><br/><br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Illegal Areas",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Do not enter an illegal area unless it is part of a raid. see Raiding/Camping.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>If you chase someone into an illegal area, call for backup.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Patrolling",
				"
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Police patrols may be started at police vehicle shops
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>These patrols will take you past known crime zones and earn cash at the same time
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Checkpoints",
				"
<font color = '#FF0000'>Cops are encouraged to setup checkpoints in strategic areas and man static points to help combat illegal activity and promote safety on the road.</font color><br/><br/>

There are currently 3 static checkpoints on the map, manning these will give an officer payment every 10 minutes, Rebels can also take over these checkpoints so it is advised that police show great care in protecting these areas.<br/><br/>


Proper Checkpoint Procedure:<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Ask the driver and any passengers if they have any weapons.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Ask them where they are headed to and from and perform a search of them and their vehicles (Not I inventory)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5.</font color> After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>In case anything illegal is found, the person may be ticketed or arrested depending on the crime.
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/>

<font color = '#FF0000'>For a police made checkpoint to be classified as a checkpoint it must reach all the following conditions.</font color><br/><br/>
# </font color>Bargates across the road (Opened or Closed)<font color = '#FF4000'><br/>
# </font color>Clear lighting leading up to the checkpoint to slow vehicles down safely<font color = '#FF4000'><br/>
# </font color>Must be manned when a player approaches, you can't chase them if they avoid it if no officers were in the Checkpoint while they went around it<font color = '#FF4000'><br/>
# </font color>The police must be visible, if they are not, you can not charge somebody with avoiding what looks like an empty checkpoint<br/><br/><br/>
<font color = '#FF0000'>A vehicle running a checkpoint my be searched if it is chased and stopped (Not stopped later on after police lose line of sight)<br/><br/></font color><br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
#. </font color>Police can stop and search a vehicle for avoiding a checkpoint if a vehicle deters travelling through a checkpoint within 300m of the checkpoint and has line of sight, Whilst it is clearly manned.<br/<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Vehicles",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Vehicles that look abandoned, broken, with no driver, can be impounded (If top owner is not online.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Boats should be parked reasonably on shore.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>Vehicles may not be stored or impounded during a combat situation, though vehicle confiscation is fine during combat<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
								"
		]
	];


	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
<font color = '#FF0000'>Arresting should only be done to criminals who are considered a danger to themselves or others.<br/></font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>You may not arrest someone if you have given them a ticket and they paid it.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>You must tell the suspect why they are being arrested before you arrest them.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color><br/>


<font color = '#FF0000'>Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/></font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Tickets must be a reasonable price.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Ticket prices should be based off of the crimes committed (Their bounty)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Refusal to pay a legit ticket is grounds for arrest.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the police department.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color><br/>

A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>

The list is available on our website forums ||www.TheDarkSideGames.com<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Weapons",
				"
<font color = '#FF0000'>A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/></font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
Legal Weapons for Civilians to carry with a permit a gun licence are:<br/>
#. </font color>Starter Pistol, Rook-40 , 4-Five, Zubr, PDW2000, Protector, Sting, Vermin, ACO SMG Scope<br/><br/>
Legal Weapons for Civilians to carry with an advanced Weapons licence are:<br/>
#. </font colorStarter Pistol, Rook-40 , 4-Five, Zubr, PDW2000, Protector, Sting, Vermin, SDAR, MK20, SPAR-16, TRG, Any scopes/attachments<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color><br/>


<font color = '#FF0000'>Any other weapon (Including Silenced P07 [Considered a Police Weapon]) is illegal.<br/></font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Civilians are not allowed to have a weapon out within the town limits.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Terrorism",
				"
<font color = '#FF0000'>The following are the only times someone can be set wanted for Terrorism<br/></font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
#. </font color>They have done a CarBomb mission or seen driving (Or assisting) a vehicle rigged to explode<font color = '#FF4000'><br/>
#. </font color>They have set of an IED<font color = '#FF4000'><br/>
#. </font color>They have fired or carried an RPG<font color = '#FF4000'><br/>
#. </font color>They have fired or carried a grenade launcher<font color = '#FF4000'><br/>
#. </font color>They have attempted a jail break or been involved<font color = '#FF4000'><br/>
#. </font color>They have attempted to destroy the power station or been involved<font color = '#FF4000'><br/>
#. </font color>They have driven or been in an armed vehicle<font color = '#FF4000'><br/>
#. </font color>They have a rebel vehicle training (Standard 30 minutes jail)<br/>
#. </font color>They have or are working with somebody doing a rebel terrorist mission<br/>
#. </font color>They have attempted to capture the police convoy (Attacking police at/near the convoy vehicle)<br/>
"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
<font color = '#FF0000'>There is a clearly marked tazer pistol and rifle in the police weapons shop.<br/></font color><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
<font color = '#FF0000'>Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/></font color><br/>


<font color = '#FF0000'>Raiding include <br/><br/></font color>
#Gang Areas - Evicting Tenants etc<br/>
#Drug Areas - Removing plants<br/>
#Non-Combat Areas - Searching for criminals after hours<br/>
#Rebel Area and any Rebel base<br/><br/><br/>

* You may not shoot into a Clan base/Gang hideout/Drug field unless a raid has started *<br/><br/><br/>

NOTE: All raid rules are removed during server wide Martial Law or if an armed vehicle has been followed into (Or spotted inside of) the illegal area (Excluding non-combat zone rules)<br/><br/><br/>

NEW RULE: When there is less than 3 whitelisted officers online, an area can be raided with either 1 or 2 officers.<br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>In order to raid an area, the cops must have at least 3 (Whitelisted) officers involved, one of which must be a Sergeant or above.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go. (Including any vehicles)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>After the area is secure, the officers must leave the area.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>An area cannot be raided again for 20 minutes after a previous raid. (Unless shot at while leaving)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>A raid needs to be declared by police having sirens on while entering the red zone<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>A raid may not be done while the server uptime is less than 20 minutes<br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/></font color>

<font color = '#FF4000'>Non-Combat Zone Raids</font color><br/><br/>
Non-Comat zones have additional conditions<br/><br/>
* Non-Combat zones may be raided during their 'After-hours' as shown on the map, only once per in-game day</br>
* Armed Land Vehicles are allowed to be taken to the non-combat zone raids and used if fired upon. Normal attempts of arrest must also be taken however<br/><br/><br/>

<font color = '#FF4000'>Raiding Clan Bases</font color><br/><br/>
Clan bases have additional conditions<br/><br/>
* A base may be closed down after a raid (IF and only of) combat has occurred with the base owners in the base during the raid</br>
* A clan base must have a police vehicle inside of it (If it hasn't been raided in the last hour you can raid to retrieve the vehicle)<br/>
* A Clan base must only be raided if a member of the clan has a bounty greater than $20k or a person has been followed back to the base after committing a crime.<br/>
* No glitching through walls is allowed by police, jumping over if you can is fine, however passing through an impossible object is considered glitching and not allowed.<br/>
* If there is less than 10 officers on at the start of the raid, all downed officers may return and break NLR once during the same raid.<br/>
* If all officers in the area (In combat with the clan) die, the raid is over. UNLESS the MCU is still present in the area.<br/>
* A base can be closed down by police officers during a raid (There is no such thing as 'combat closing' since it will not work with civilians within 200m.)<br/>
<br/><br/>

<font color = '#FF4000'>Raiding Player Houses</font color><br/><br/>
Player houses may be raided if one of the following conditions are met (Permission must be given by a Lieutenant or higher unless the house is in crime scene or a criminal was seen entering it)<br/><br/>
* The house is in a crime scene <br/>
* The police believe the house may contain a wanted criminal (A criminal was seen in the area and somebody is inside the house or the house belongs to a wanted criminal)<br/><br/>
<br/><br/>
POLICE MUST ALWAYS CLOSE A HOUSE WHEN LEAVING, OTHERWISE ANY LOST PROPERTY WILL COME OUT OF THEIR BANK ACCOUNT



							"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

Police Chain of Command:<br/>
1. Chief of Police<br/>
2. Commissioner<br/>
3. Deputy Commissioner<br/>
4. Assistant Commissioner<br/>
5. Superintendent<br/>
6. Lieutenant<br/>
7. Senior Sergeant<br/>
8. Sergeant<br/>
9. Senior Constable<br/>
10. Constable<br/>
11. Cadet<br/>
12. Public Officer<br/><br/>

Cops in game who are not enrolled/accepted into the DSPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Searching",
				"
<font color = '#FF0000'>One thing on either list needs to be true to search<br/>
Searching is not be performed during combat<br/></font color>
<font color = '#FF0000'>Searching a person<br/><br/></font color>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The person must be wearing Rebel Clothing (excluding backpacks)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>The person must be in a (Police station, Gang Area, Checkpoint, Fed Reserve, (Red Circle Zone))<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>The person must be getting arrested (Not ticketed)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/><br/><br/></font color>

<font color = '#FF0000'>Searching a vehicle<br/><br/></font color><br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>The vehicle must be illegal (I and T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>If someone in the vehicle has been searched and illegal items found on them (Including Weapons)(I and T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>The vehicle must be in a (Police station, Rebel Hideout, Gang Area, Bank, (Red Circle Zone)) (I and T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>There must be at least one occupant of the vehicle in Rebel clothing (Excluding backpacks) (I and T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
5. </font color>The driver, or a listed vehicle owner must be getting arrested (Not Ticketed) (I and T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
6. </font color>The vehicle must be at a checkpoint (T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
7. </font color>If a police dog is informing its handler of an odd smell, the police are allowed to conduct a T inventory search<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
8. </font color>If the owner of the vehicle will be arrested once they are found or if the owner has died while wanted, the vehicle can be searched so long as it is not during combat<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/
9. </font color>If the vehicle is a boat and has evaded police then it is allowed to be searched once stopped (Y and T inventory search)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/<br/><br/>

<font color = '#FF0000'>A vehicle running a checkpoint my be searched if it is chased and stopped (Not stopped later on after police lose line of sight)<br/><br/></font color><br/><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
#. </font color>Police can stop and search a vehicle for avoiding a checkpoint if a vehicle deters travelling through a checkpoint within 300m of the checkpoint and has line of sight, Whilst it is clearly manned.<br/<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the DSPD.<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>Satchel charges are only to be carried/used during martial law<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>Killing (Executing) of any civilian is never allowed. Killing is to happen during combat only!<br/><br/><br/>
<font color = '#FF0000'>Police RPG (Police RPG can be used under the following conditions when martial law is not declared)</font color><br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>Shooting at an armoured vehicle<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Shooting at an armed vehicle, or those working with an armed vehicle<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
3. </font color>In retaliation to rebel explosive usage (RPGs, Grenades, Grenade Launchers)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
4. </font color>In self-defence while responding to a threat listed above<br/>
"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
1. </font color>All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
2. </font color>Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>

Team speak server: ts.thedarksidegames.com:10004<br/><br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Jail Times - Tickets",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Tickets must be $100 more than the players bounty<br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Jail times are the players bounty divided by 1k, for example 1k is 1 minute.<br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>
				"
		]
	];


	player createDiaryRecord ["policerules2",
		[
			"Driving Laws",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Speed Limits<br/><br/>
* 60km/h inside cities<br/>
* 110 km/h on main highways<br/>
* No speed limit on dirt/gravel roads and offroad driving<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Parking<br/><br/>
* You may park on the side of the road if other vehicles can safely pass you<br/>
* You may only park on the side of the road if your vehicle is facing the correct way<br/>
* You may park off road at anytime unless asked to move your vehicle by the police for safety reasons<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Reckless Driving<br/><br/>
* Driving on the wrong side of the road (The left hand side is correct)
* Pulling out onto a main road unsafely<br/>
* Cutting corners <br/>
* Driving without lights at night time<br/>
* Using NOS<br/>
* Driving with a flat tyre or damaged windscreen<br/>
* Driving without a license<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Other Laws/Rules<br/><br/>
* VDM (Running someone over is never allowed (Rule))<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>
				"
		]
	];

	player createDiaryRecord ["policerules2",
		[
			"Flying Laws",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Legal Landing Zones (Choppers)<br/><br/>
* Anywhere at an airfield excluding the runway<br/>
* Marked areas inside cities<br/>
* Safe areas around job depots<br/>
* Safe areas around a players house<br/>
* Anywhere off a road and not in a main city (Main cities can be spawned in)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Legal Landing Zones (Planes)<br/><br/>
* Any runway (Keep left if other users)<br/>
* Anywhere off road not near any main cities and not putting anybody in harms way<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Careless flying<br/><br/>
* Not using flying lights (Flashing lights) while flying at night<br/>
* Hovering or repeatitive flying low over main roads, cities and other people (Anything below 50m is deemed as low)<br/>
* Flying without a license<br/>
* Carelessly carrying cargo<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Other Laws/Rules<br/><br/>
* VDM (Crashing into another air vehicle is never allowed (Rule))<br/>
* You are not allowed to sling load someone vehicles unless it is empty or you have their permission<br/>
* Flying too close to the jail will result in your air vehicle being shot down by jail guards<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>
				"
		]
	];

	player createDiaryRecord ["policerules2",
		[
			"Boating Laws",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Legal Boat Parking<br/><br/>
* On any coast-line other than near the bank or police HQ's<br/>
* At sea if the boat stationary<br/>
* On land anywhere where cars are allowed to park<br/>
* Safe areas around a players house<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Collision Prevention<br/><br/>
* If at risk of a head on collision, you must both turn to the left to avoid collision<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Careless Boating<br/><br/>
* You must travel no faster than 20km/h if within 50m of swimmers or divers<br/>
* You must not operate a boat while drunk<br/>
* Driving without a license is not allowed<br/>
* Ramming the shoreline is not allowed, you must approach the shore slowly<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Police checks<br/><br/>
* Police may want to check your license while at sea, they have a right to do this whenever they want<br/>
* If directed by police, you must totally stop your boat and allow them to license check you and run your boats plates<br/>
* If you do not submit to this test, the police can order you to dock for a full boat search<br/>
* Live ammo is allowed to be used by police to disable a fleeing sea vehicle once warnings have been given, this could be fatal so evade at your own risk<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Other Laws/Rules<br/><br/>
* VDM (Crashing into another sea vehicle is never allowed (Rule))<br/>
* Drifting too close to the jail will result in your boat being destroyed by jail guards<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color>
				"
		]
	];

	player createDiaryRecord ["policerules2",
		[
			"Weapons Laws",
				"

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Legal Weapons (Scopes) with Civilian Gun License <br/><br/>
* Rook-40<br/>
* Makarov<br/>
* 4-Five<br/>
* Zuba<br/>
* PDW2000<br/>
* Protector<br/>
* Sting<br/>
* Vermin<br/>
* ACO SMG (Green)<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Legal Weapons (Scopes) with Civilian Advanced Gun License (Obtainable through civilian quest line)<br/><br/>
* Rook-40<br/>
* Makarov<br/>
* 4-Five<br/>
* Zuba<br/>
* PDW2000<br/>
* Protector<br/>
* Sting<br/>
* Vermin<br/>
* ACO SMG (Green)<br/>
* SDAR<br/>
* MK20<br/>
* SPAR-16<br/>
* TRG<br/>
* Any scopes/attachments<br/>
<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/></font color><br/><br/>

<font color = '#FF4000'>Weapon carrying</font color><br/><br/>
* Whilst in a city any rifle must be either on your back or hidden in a backpack<br/>
* Whilst in a city any pistol must be holstered or in a backpack (Includes flare guns)<br/><br/>

<font color = '#FF4000'>Firearm Discharge</font color><br/><br/>
* You may not discharge your firearm in any built up areas unless protecting your own life/property<br/>
* You may never discharge your firearm at a civil servant, be it police, security, mechanic or medic<br/>
* You may fire your firearm while target practising out of cities, you must conduct yourself in a safe manner<br/><br/>

<font color = '#FF4000'>Self Defence</font color><br/><br/>
* Self defence is not a right to murder, your life must be in absolute danger to use lethal force as defence<br/>
* Upon lethally defending yourself, you must contact police immediately and stay at the crime scene for an officer to arrive<br/>
* Failing to follow the self defence rules will result in a murder charge against you, punishable by jail time and loss of weapons license<br/><br/>

<font color = '#FF4000'>----------------------------------------------------------------------------------------<br/>
# </font color>Other Laws/Rules<br/><br/>
* 6.5mm weapons and up are never legal for civilians to carry<br/>				"
		]
	];

// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				2. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				3. Resistance must be coordinated.<br/>
				4. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				All armoured and armed vehicles are classed as illegal vehicles<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
			Any Weapon that isn't purchased at the legal gun stores. (Not Rebel or Gang Shops)<br/><br/>			"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				Illegal Items will have a red name in your inventory
				"
		]
	];


// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
									<font color = '#E4E00C'>General Controls	</font color><br/><br/>
	<font color = '#E4E00C'>Left Windows:		</font color> Main Interaction key which is used for picking up items/money, ATMs, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/><br/>
	<font color = '#E4E00C'>Y:					</font color> Open Player Menu<br/>
	<font color = '#E4E00C'>U:					</font color> Lock and unlock cars<br/>
	<font color = '#E4E00C'>1:					</font color> Quick Display with an assortment of information<br/>
	<font color = '#E4E00C'>T:					</font color> Vehicle Boot<br/>
	<font color = '#E4E00C'>F:					</font color> Upholster weapon<br/>
	<font color = '#E4E00C'>E:					</font color> Enter nearest unlocked vehicle<br/>
	<font color = '#E4E00C'>Space:				</font color> Jump<br/>
	<font color = '#E4E00C'>Shift + H:			</font color> Holster weapon<br/>
	<font color = '#E4E00C'>2:					</font color> Send text message to your target<br/>
	<font color = '#E4E00C'>3:					</font color> Send text message to somebody who has already texted you<br/>
	<font color = '#E4E00C'>7:					</font color> Check your paycheck status<br/>
	<font color = '#E4E00C'>Shift + F1:			</font color> Hands on head<br/>
	<font color = '#E4E00C'>9:					</font color> Open Bug Reporter<br/>
	<font color = '#E4E00C'>Space:					</font color> Activates Nos<br/>
	<font color = '#E4E00C'>F3:					</font color> Insert Earplugs<br/>
	<font color = '#E4E00C'>Left-Ctrl + 8:					</font color> Donation Menu<br/>
	<br/><br/><br/>

									<font color = '#0CE413'>Civilian Controls	</font color><br/><br/>

	<font color = '#0CE413'>Tab: 				</font color>Mine resources (If you have a pickaxe)<br/>
	<font color = '#0CE413'>Shift + G:			</font color>Knock out (If Armed)<br/>

									<font color = '#214EAF'>Police Controls (Security)</font color><br/>

	<font color = '#214EAF'>0:					</font color> Open Nearest Bargate<br/>
	<font color = '#214EAF'>5:					</font color> Wanted Menu<br/>
	<font color = '#214EAF'>6:					</font color> Martial Law Menu<br/>
	<font color = '#214EAF'>4:					</font color> Set wanted menu<br/>
	<font color = '#214EAF'>F:					</font color> Cop Siren<br/>
	<font color = '#214EAF'>Ctrl + L:			</font color> Police speed gun<br/>
	<font color = '#214EAF'>Shift + 2:			</font color> Fire fuel darts<br/>
	<font color = '#214EAF'>Shift + 3:			</font color> Remove weapons off the ground<br/>
	<font color = '#214EAF'>Left Shift + R:		</font color> Restrain (If player has hands up or tazed)<br/>
	<font color = '#214EAF'>F2:					</font color> Check Police Status<br/>
	<font color = '#214EAF'>F4:					</font color> Switch Ammo Type<br/>
	<font color = '#214EAF'>Shift + E:					</font color> Enter nearest locked vehicle<br/>
	<font color = '#214EAF'>Right Shift + L:		</font color> Activates cop siren lights<br/>
	<font color = '#214EAF'>F5:		</font color> Activates police map markers (Debugging map crash)<br/><br/><br/>

									<font color = '#214EAF'>User Bound Keys</font color><br/>

	<font color = '#214EAF'>userAction1:		</font color>Eat Food<br/>
	<font color = '#214EAF'>userAction2:		</font color>Drink<br/>
	<font color = '#214EAF'>userAction3:		</font color>Heal<br/>
	<font color = '#214EAF'>userAction4:		</font color>(Cop/Sec) Spikes<br/>
	<font color = '#214EAF'>userAction5:		</font color>Unpack GoKart<br/>
	<font color = '#214EAF'>userAction6:		</font color>(Cop) Fire fuel dart<br/>
	<font color = '#214EAF'>userAction7:		</font color>(Cop/Sec) Open Bargates<br/>
	<font color = '#214EAF'>userAction8:		</font color>Unlock Gang (If quest completed)<br/>
	<font color = '#214EAF'>userAction9:		</font color>Increase View Distance by 500m<br/>
	<font color = '#214EAF'>userAction10:		</font color>Windows key - Opens most interaction menu on people and objects<br/>
	<font color = '#214EAF'>userAction11:		</font color>Decrease View Distance by 500m<br/>
	<font color = '#214EAF'>userAction12:		</font color>Inform target to pull over (Highway Patrol Only)<br/>
	<font color = '#214EAF'>userAction13:		</font color>Un-escort (Cops only)<br/>
	<font color = '#214EAF'>userAction14:		</font color>Retexture Clothing/Backpack (Donors only) Must have assigned clan base outfit<br/>
	<font color = '#214EAF'>userAction15:		</font color>Retexture vehicle (Donors only) Must have assigned clan base vehicle texture<br/>
	<font color = '#214EAF'>userAction16:		</font color>Enable / Disable help/trade chat channels<br/>
				"
		]

	];