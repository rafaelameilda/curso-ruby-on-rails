class User < ApplicationRecord
  rolify
  has_many :articles, dependent: :destroy
  has_many :coments, dependent: :destroy

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  devise :confirmable,
         :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable
end
