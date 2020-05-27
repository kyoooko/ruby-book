module Effects
  # リバース
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  # エコー
  def self.echo(rate)
    ->(words) do
      words.chars.map{ |c| c == ' ' ? c :c * rate}.join
    end
  end
  # ラウド
  def self.loud(level)
    ->(words) do
      words.split(' ').map{ |word| word.upcase + '!' * level}.join(' ')
    end
  end
end