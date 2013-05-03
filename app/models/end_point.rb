class EndPoint < ActiveRecord::Base
  attr_accessible :change_set, :environment, :specification, :url
  
  Except_List = [:created_at, :updated_at, :server_id, :id]
  
  def as_json(options={})
    super(:except => Except_List)
  end
  
  def to_xml(options={})
    options.merge!(:except => Except_List)
    super(options)
  end
end
