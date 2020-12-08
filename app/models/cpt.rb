class Cpt < ApplicationRecord
  def self.get_all
    Cpt.all
  end

  def self.find_by_description(description)
    Cpt.where("cpt_description LIKE  '%#{description}%'")
  end
  def self.find_by_code(code)
    Cpt.where("cpt_code LIKE  '%#{code}%'")
  end

  def self.get_price(code)
    Cpt.find_by(cpt_code: code).price
  end

end
