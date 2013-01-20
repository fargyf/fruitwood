class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :tel, :loginable, :roles_mask

  ##############
  # validation #
  ##############
  validates :name, presence: true, uniqueness: { case_sensitive: false }, format: { with: /[a-zA-Z0-9_]+/ }
  validates :tel, :presence => true
  validates :tel, :uniqueness => true

  private
  def email_required?
    false
  end

  def password_required?
    self.loginable? && new_record? || password.present?
  end
end
