class Icd < ApplicationRecord

  def self.get_all
    Icd.all
  end

  def self.find_by_description(description)
    Icd.where("description LIKE  '%#{description}%' ")
  end

  def self.find_by_category_title(category_title)
    Icd.where("category_title LIKE '%#{category_title}%' ")
  end

  def self.find_by_category_code(category_code)
    Icd.where("category_code LIKE '%#{category_code}%' ")
  end

  def self.find_by_diagnosis_code(diagnosis_code)
    Icd.where("diagnosis_code LIKE '%#{diagnosis_code}%' ")
  end
end
