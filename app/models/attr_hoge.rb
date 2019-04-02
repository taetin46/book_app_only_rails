class AttrHoge
  include ActiveAttr::Model

  attribute :id
  attribute :many

  def initialize(hoge)
    super
    many.map! { |e| Ko.new(e) }
  end
end