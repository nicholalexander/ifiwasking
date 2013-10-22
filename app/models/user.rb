class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :generate_username

  has_many :proclamations

  private

  def generate_username
    binding.pry
    self.username = self.email.split("@")[0]
  end
end
