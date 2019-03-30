// XComGameState_SBRSquad
//
// Represents a single squad. Similar to and based off LW2's XComGameState_LWPersistentSquad.

class XComGameState_SBRSquad extends XComGameState_BaseObject config (SquadBasedRoster);

// Struct for tracking squad affinity amounts for each unit. As units participate in missions in this
// squad they gain affinity.
struct SquadAffinity
{
    var StateObjectReference UnitRef;
    var float Value;
};

// Affinity values for all units that have ever been in this squad, including the
// leader(s)
var array<SquadAffinity> Affinity;

// The current squad leader
var StateObjectReference Leader;

// Current squad members
var array<StateObjectReference> Members;

// The faction this squad is affiliated with - only heroes of this faction
// can lead this squad.
var StateObjectReference Faction;

// User-provided (or random) squad name
var String SquadName;

// User-provided (or randon) squad logo
var String SquadLogoPath;

// The squad level. Squads rank up after enough missions have been completed.
var float SquadLevel;

// The number of missions this squad has gone on
var int NumMissions;

// Number of kills from squad members. This is not just the sum of
// all kills of all squad members, as members can be moved between squads.
var int NumKills;
