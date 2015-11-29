class Account < ActiveRecord::Base

  has_secure_password

  has_many :tweet

  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :lastname, :firstname, :presence => true

end
