module DeepFreezable
 def deep_freeze(array_or_hash)
 	case array_or_hash
 	  when Array
	 	#配列の各要素をフリーズ
	 	array_or_hash.each do |element|
	 		element.freeze
	  end

	  when Hash
	 	#配列の各要素をフリーズ
	 	array_or_hash.each do |key,value|
	 		key.freeze
	 		value.freeze
	  end
    end
    #配列自信をフリーズ（かつこれがメソッド戻り値になる）
	array_or_hash.freeze
  end
end
