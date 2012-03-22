require 'faker'
require 'populator'
require 'sha1'

User.destroy_all
Request.destroy_all

10.times do
user = User.new
user.username = Faker::Internet.user_name
user.email = Faker::Internet.email
user.password = "test"
user.password_confirmation = "test"
user.save

end

User.all.each do |user|
Request.populate(5..10) do |request|
request.leavedate = DateTime.now
request.returndate = DateTime.now + 5 
request.total = 5
request.user_id = user.id
end

end

