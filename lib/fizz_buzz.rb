# どちらでも同じように動いた

# 解答
def fizz_buzz(i)
  if i % 15 == 0
    "Fizz Buzz"
  elsif i % 3 == 0
    "Fizz"
  elsif i % 5 == 0
    "Buzz"
  else
  i.to_s
  end
end

# puts fizz_buzz(30)


# 自分のコード
# def fizz_buzz(i)
#   if i % 3 == 0 && i % 5 == 0
#     puts "Fizz Buzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   else
#   i.to_s
#   end
# end

# fizz_buzz(9)


