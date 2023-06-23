extends Node

var emptySaveFile = {"new" : true, "level" : 0, "exp" : 0, "collection_card" : [], "upgrade_tree" : [], "percentage" : 0}

var data = [
	JSON.parse_string(JSON.stringify(emptySaveFile)),
	JSON.parse_string(JSON.stringify(emptySaveFile)),
	JSON.parse_string(JSON.stringify(emptySaveFile))
]
