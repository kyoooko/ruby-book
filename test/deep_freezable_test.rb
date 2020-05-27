require "minitest/autorun"
require "./lib/bank"
require "./lib/team"


class DeepFreezableTest < MiniTest::Test
  def test_deep_freeze_to_array
    #配列の値が正しいか
    assert_equal ["Japan","US","Indeia"],Team::COUNTRIES
    #配列自信がfreezeされてるか
    assert Team::COUNTRIES.frozen?
    #配列の要素全てがfreezeされてるか    
    assert Team::COUNTRIES.all?{|country| country.frozen?}
  end

  def test_deep_freeze_to_hash
    #ハッシュの値が正しいか
    assert_equal(
    	{"Japan"=> "yen","US"=> "doller","Indeia"=>"rupee"},
    	Bank::CURRENCIES
    	)
    #ハッシュ自信がfreezeされてるか
    assert Bank::CURRENCIES.frozen?
    #ハッシュの要素全てがfreezeされてるか    
    assert Bank::CURRENCIES.all?{|key,value| key.frozen? && value.frozen?}
  end


end





