class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    chars = self.shows.map{ |x|  x.characters}
    "#{chars[0][0].name} - #{chars[0][0].show.name}"
  end

end
