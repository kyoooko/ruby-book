require "./lib/deep_freezable"

class Bank
	extend DeepFreezable
	CURRENCIES = deep_freeze({"Japan"=> "yen","US"=> "doller","Indeia"=>"rupee"})
end

