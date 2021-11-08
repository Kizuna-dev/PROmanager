extends Control

var Version := "0.1"

func _ready():
	var dataExist = File.new()
	var DataExists = dataExist.file_exists(Datastore.SAVE_LOCATION)
	if DataExists:
		$TabContainer.tabs_visible = true
	$TabContainer/Profiles/VBC/VBC/HBC/Version.text = "Version " + Version
