class EndPoint < ActiveRecord::Base
  attr_accessible :change_set, :environment, :specification, :url
end
