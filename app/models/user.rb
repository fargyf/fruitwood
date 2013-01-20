class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :tel, :roles_mask

  ##############
  # validation #
  ##############
  validates :name, :presence => true
  validates :tel, :presence => true, :uniqueness => true, :format => { :with => /(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})/ }

  private
  def email_required?
    false
  end
end
