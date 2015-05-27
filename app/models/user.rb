class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :read_agreement, presence: true

  validates :email, uniqueness: true

  has_one :user_subscription
  has_many :art_pieces

  def full_name
    first_name + " " + last_name
  end

  def status
    if self.application_status == "sent"
      true
    else
      false
    end
  end

end
