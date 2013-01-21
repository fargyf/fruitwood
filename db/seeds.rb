#User.find_or_create_by_name_and_tel('guomu', '12345678', :password => '666666').save!

User.delete_all

# admin
admin = User.new(
  :tel       => '12345678',
  :name      => 'admin',
  :password  => 'password'
)
admin.roles = 'admin'
admin.save!
