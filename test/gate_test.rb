require "minitest/autorun"
require "./lib/gate"
require "./lib/ticket"

# ①
class GateTest < Minitest::Test
  def test_umeda_to_juso
   umeda=Gate.new(:umeda)
   juso=Gate.new(:juso)

   ticket=Ticket.new(150)
   umeda.enter(ticket)
   assert juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda=Gate.new(:umeda)
    mikuni=Gate.new(:mikuni)

    ticket=Ticket.new(150)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end


# ②
class GateTest < Minitest::Test
  # Minitestではsetupメソッドを用意すると毎回テストメソッドが実行される前に呼ばれる
  def setup
    @umeda=Gate.new(:umeda)
    @juso=Gate.new(:juso)
    @mikuni=Gate.new(:mikuni)
  end
# シナリオ１
  def test_umeda_to_juso
   ticket=Ticket.new(150)
   @umeda.enter(ticket)
   assert @juso.exit(ticket)
  end
# シナリオ２
  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket=Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  # シナリオ３
  def test_umeda_to_mikuni_when_fare_is_enough
    ticket=Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  # シナリオ４
  def test_juso_to_mikuni
    ticket=Ticket.new(150)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end
end