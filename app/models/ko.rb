class Ko
  include ActiveAttr::Model

  attribute :many_id
  attribute :name
  
  def initialize(hoge)
    super
  end
end