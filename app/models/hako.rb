class Hako

  def initialize(array)
    @hoge = array.map { |e| AttrHoge.new(e) }
  end

  def hoget
    @hoge
  end
end