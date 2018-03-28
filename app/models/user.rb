class User < ApplicationRecord
  # Association(1:many)
  has_many :islands
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :omniauthable
  # def self.find_for_oauth(auth)
  #  user = User.where(uid: auth.uid, provider: auth.provider).first

  #  unless user
  #    user = User.create(
  #      uid:      auth.uid,
  #      provider: auth.provider,
  #      email:    auth.info.email,
  #      password: Devise.friendly_token[0, 20]
  #    )
  #  end

  #  user
  # end
end
