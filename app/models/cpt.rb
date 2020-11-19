class Cpt < ApplicationRecord
  def self.get_all
    Cpt.all
  end

  def self.find_by_description(description)
    puts 'hello here '
    Cpt.where("cpt_description LIKE  '%#{description}%'")
  end
end
