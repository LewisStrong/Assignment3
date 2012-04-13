class Request < ActiveRecord::Base
  validates_presence_of :leavedate, :returndate, :total
  attr_accessible :leavedate, :returndate, :total, :authorised, :photo
  belongs_to :user

has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/requests/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/requests/:id/:style/:basename.:extension"

validates_attachment_size :photo, :less_than => 30.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  def self.search(search, page)
  paginate :per_page => 5, :page => params[:page]
end
end




