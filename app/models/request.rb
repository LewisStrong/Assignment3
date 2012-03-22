class Request < ActiveRecord::Base
  validates_presence_of :leavedate, :returndate, :total
  attr_accessible :leavedate, :returndate, :total, :authorised
  belongs_to :user
  
  def self.search(search, page)
  paginate :per_page => 5, :page => params[:page]
end
end




