# Squad Based Rosters

This mod is a WIP and will certainly change to adjust balance. It's a collection of some longstanding ideas I had for changes to the XCOM2 soldier system. Beagle's recent modded campaign had some aspects in common and finally inspired me to work on it. It may not be viable at all, or maybe not much fun. Who knows?

## Main Goals

Bring some feel of UFO Defense's soldier system to modern XCOM, and some of the usual stuff many people say they want.

- Make losing high-ranked soldiers (or any soldiers) less crippling.
- Make losing soldiers more common.
- Make _most_ of the barracks more generic rather than superheroes.
- Make early game easier and late game harder.

If you love lots of classes and perks, this is not the mod for you. There are almost no classes and very few perks. This mod is about shooting aliens with guns, and having them shoot you with other guns.

## Squads

- The barracks is organized into squads, rather than a flat list of soldiers.
- Units can only be in one squad at a time, but can (mostly) easily move between them.
- Units can be unassociated with any squad, but can't be used in that state. New recruits initially go here.
- Squads may have a leader - squad leaders are always faction heroes and heroes can _only_ be squad leaders, not squad members.
- Squad leader sets the affiliation of the squad with a faction, and this is fixed for the campaign for the squad. Leader can only be replaced by another unit of the same faction.
- New squads can always be created for new heroes, or initially unaffiliated squads with no leader.
- Squads may deploy with no leader if no appropriate faction unit is available, but suffer some drawbacks.
- Missions are undertaken by squads (each mission by one squad). Implies no more than one faction hero per mission.
- Initially there is only one non-hero class - generic "soldier", all regular XCOM troops start with this class and at 'Squaddie' rank (which is mostly meaningless as soldiers don't level up).
- Soldiers can use ARs or shotguns, but not LMGs or Sniper Rifles. Secondary weapon is pistol.
- Initial squad size for missions is 5 - leader and 4 squad members.
- Squad size increase unlocks add 'specialist' slots (not the specialist class) to squads and mission prep. Same 2 unlocks are possible for a final max squad size of 7: leader + 4 soldiers + 2 specialists. Regular soldiers can go in specialist slots, but specialists cannot go in soldier slots.
- Once unlocked, soldiers can be "promoted" to specialist classes via the respec thingy.
- Specialist "class" allowed is dependent on the faction affiliation of the squad (based on the leader).
- Specialist soldiers are given a cosmetic rank and use special weapons.
- Specialist weapons have a few built in perks.
    - Skirmisher - Heavy (LMG) - suppression etc.
    - Reaper - Sharpshooter (sniper rifle) - squadsight etc
    - Templar - Psi (no special primary, psi thingy secondary) - some psi powers
- Promoting a soldier to specialist locks them to particular squad affiliations much like leaders, but can still move between squads of the same affiliation.
- Hero units have a few perks attached to their special weapon kinds, but also don't level up.
- Campaign starts with 2 squads lead by a unit of the initially contacted region, and enough soldiers to fill out the squads and have some reserves for killed/wounded units.
- Start with 2 faction leaders to lead these squads, but getting more and contacting other factions to get squads of the other factions still takes time.


## Progression
- Soldiers don't level up - squads do (sort of). Squads have a _squad level_ (SL).
- Squads level up by going on sufficient missions. Mission count rather than kills is the important number. Successful missions count more than failures, but failures still count more than doing nothing.
- SL passively increases over time, and the initial SL of new squads increases as the campaign progresses. But both are slower than actively going on missions. This helps ensure creating new squads mid/late campaign is still viable, and also ensures that a squad created early but infrequently used won't be outclassed by a newly created squad.
- Units have _squad affinity_ (SA) for each squad. Going on missions for a squad increases that unit's SA. Passively being a squad member also increases SA over time, but slowly. SA can not exceed SL, but going on missions will quickly raise SA to reach the SL.
- Moving a unit to a new squad does not remove the old SA from the old squad, but it does decay over time for units no longer in a particular squad.
- The mission squad as a whole has an _average affinity_ (AA) value, which is just an average of all the participating unit SA values.
- Each unit on the mission gets an _effective unit level_ (EL). This is influenced by the SL and modified by their SA and AA. Exact formula still to figure out.
- Examples/intent:
    - A fresh squad from campaign beginning has low SL, and all units have low SA. This means low AA. They're all basically rookies - they all have low EL.
    - A mid-game squad that has taken few losses and has lots of soldiers that have been around for a while has a medium SL, SA and AA values: the soldiers all have an EL near the (medium) SL.
    - If that squad loses a soldier and is replaced by a fresh recuit, this recruit has low SA, but the other vets still have high SA. The AA is dragged down a little by the newbie, so vets have their EL reduced a little bit each. But the AA is much higher than the newbie's SA, so this unit's EL is pulled up and they perform better than a rookie would.
    - If a midgame squad is wiped and has a completely new roster, the SL stays high but the units all have low SA, so the AA is also low. They will all have much lower EL, but this should still be offset by the higher SL so they are not just rookies.
    - Creating a brand new squad mid/late game is similar to a squadwipe in that there is low SA and AA, but because the baseline SL increases over time they still aren't just plain rookies.
- A unit's EL defines the bonuses it gets for the mission. EL imparts passive bonuses to stats, but since the EL is mission-specific this will vary as squad composition and level changes.
- Surviving late game is mostly a function of having better equipment than having better soldiers, but having squads with higher EL will help a lot too.
- Few if any action economy perks should hopefully mean more aliens surviving initial contact and actually shooting at XCOM now and then.

## Other

- Considered having squad-based perk trees, perhaps unique per faction.
    - Reaper and Skirmisher are fairly straightforward to come up with ideas, but Templars are harder.
    - Active perks are hard because everyone in the squad would get them (of appropriate EL).
    - Balancing perk trees is a pain and I don't like perks much anyway
    - Maybe just some simple passives at high EL, not faction specific
