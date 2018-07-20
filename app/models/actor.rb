class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    a = self.first_name
    b = self.last_name
    "#{a} #{b}"
  end 
end
