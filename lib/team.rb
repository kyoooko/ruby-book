require "./lib/deep_freezable"

class Team
	extend DeepFreezable
	COUNTRIES = deep_freeze(["Japan","US","Indeia"])
end

