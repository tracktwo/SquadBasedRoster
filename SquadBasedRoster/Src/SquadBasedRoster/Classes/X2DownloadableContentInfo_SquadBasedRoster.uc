class X2DownloadableContentInfo_SquadBasedRoster extends X2DownloadableContentInfo config(SquadBasedRoster);

// The class for all default non-faction soldiers
var config name STARTING_CLASS_NAME;

static event OnLoadedSavedGame()
{
}


static event InstallNewCampaign(XComGameState StartState)
{
}


static event OnPostTemplatesCreated()
{
	// Set normal soldier template DefaultSoldierClass to the soldier class
	UpdateDefaultSoldiers();
}

static event OnLoadedSavedGameToStrategy()
{

}

static function UpdateDefaultSoldiers()
{
	local X2CharacterTemplateManager CharacterTemplateManager;
	local X2CharacterTemplate SoldierTemplate;

	CharacterTemplateManager = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager();
	SoldierTemplate = CharacterTemplateManager.FindCharacterTemplate('Soldier');
	SoldierTemplate.DefaultSoldierClass = default.STARTING_CLASS_NAME;
}
