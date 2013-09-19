class Order < ActiveRecord::Base

  attr_accessible :person_id, :beverage_id, :completed_at

  belongs_to :person

  belongs_to :beverage

  validates :person, :presence => true

  validates :beverage, :presence => true

end
