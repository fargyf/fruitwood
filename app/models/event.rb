class Event < ActiveRecord::Base
  extend HasHtmlPipeline

  attr_accessible :content, :end_date, :start_date, :title

  has_html_pipeline :content, :markdown

  validates :title, :start_date, :end_date, :presence => true
end
