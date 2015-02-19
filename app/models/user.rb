class User < ActiveRecord::Base
  acts_as_trivia_user

  #User roles
  ROLES = %w[user admin reviewer]
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
