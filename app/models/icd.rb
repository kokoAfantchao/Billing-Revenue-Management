class Icd < ApplicationRecord

  def self.get_all
    Icd.all
  end

  def self.find_by_description(description)
    Icd.where("full_description LIKE  '%#{description}%' ")
  end

  def self.find_by_category_title(category_title)
    Icd.where("category_title LIKE '%#{category_title}%' ")
  end

  def self.find_by_category_code(category_code)
    Icd.where("category_code LIKE '%#{category_code}%' ")
  end

  def self.find_by_full_code(full_code)
    Icd.where("full_code LIKE '%#{full_code}%' ")
  end

  def self.find_by_abbreviated_description(abbreviation)
    Icd.where("abbreviated_description LIKE '%#{abbreviation}%'")
  end
  def self.find_by_diagnosis_code(diagnosis_code)
    Icd.where("diagnosis_code LIKE '%#{diagnosis_code}%' ")
  end

  def self.find_code( word )
    Icd.where("full_description LIKE '%#{word}%'") or where("category_title LIKE '%#{word}%' ") or where("category_code LIKE '%#{word}%' ") or where("full_code LIKE '%#{word}%' ") or where("abbreviated_description LIKE '%#{word}%'") or where("diagnosis_code LIKE '%#{diagnosis_code}%' ")
  end
end
