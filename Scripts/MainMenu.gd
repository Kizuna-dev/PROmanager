extends Control

var Version := "0.1"

func _ready():
	var dataExist = File.new()
	var DataExists = dataExist.file_exists(Datastore.SAVE_LOCATION)
	if DataExists:
		$TabContainer.tabs_visible = true
	$TabContainer/Profiles/VBC/VBC/HBC/Version.text = "Version " + Version
	
	# Check for an update
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	print(json.result)
