class Event < ActiveRecord::Base
  attr_accessible :content, :end_date, :start_date, :title

  validates :title, :start_date, :end_date, :presence => true
end
