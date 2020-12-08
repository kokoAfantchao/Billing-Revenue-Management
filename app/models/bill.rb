class Bill < ApplicationRecord
  # belongs_to :insurance
  # has_many :cpt
  # has_many :icd

  def self.new_encontent(patient_id,cpt_codes,icd_codes,insurance_id)
    Bill.create(is_paid: false,date: DateTime.new, insurance_id: insurance_id,
                cpt_codes: cpt_codes,icd_codes: icd_codes)
  end

  def  self.generate_bill(bill_id)
    bill =  Bill.find_by(bill_id: bill_id)
    price = get_total_price(bill.icd_codes )
  end

  def get_total_price(list_of_icd_code)

  end
end