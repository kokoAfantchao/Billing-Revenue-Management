class Bill < ApplicationRecord
  # belongs_to :insurance
  # has_many :cpt
  # has_many :icd

  def self.new_encontent(patient_id,cpt_codes,icd_codes,insurance_id)
    Bill.create(is_paid: false,date: DateTime.now, insurance_id: insurance_id,
                cpt_codes: cpt_codes,icd_codes: icd_codes)
  end

  def  self.generate_bill(bill_id)
    price  = 0
    bill = Bill.find_by(bill_id: bill_id)
    list = bill.cpt_codes.split(',')
    list.each { |code| price += Cpt.get_price(code)}
    bill.update(total_price: price)
    bill
  end
end