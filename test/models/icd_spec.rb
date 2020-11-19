require 'rspec'
require 'byebug'
ALL_ICD = [nil] + Icd.all.order('id')

def check(actual, expected_ids)
  actual ||= []
  expected = ALL_ICD.values_at(*expected_ids)
  missing = expected - actual
  unless missing.empty?
    raise "Result should have contained these, but it did not:\n" + missing.join("\n")
  end
  extra = actual - expected
  unless extra.empty?
    raise "Result should NOT have contained these, but it did:\n" + missing.join("\n")
  end
end

describe 'ActiveRecord ICD CODE' do
  around(:each) do |example|
    ActiveRecord::Base.transaction do
      example.run
      raise ActiveRecord::Rollback
    end
  end

  describe 'to find icd_code (s)' do
    before(:each) do
      # disable methods we don't want you to use...
      expect(Icd).not_to receive(:find)
      expect(Icd).not_to receive(:expect)
      expect(Icd).to receive(:where).and_call_original
    end
    specify 'get all the Icd  code ' do
      check Icd.get_all, [24]
    end
    specify 'find ICD by description' do
      check Icd.find_by_description('Cervicography'),1
    end
    specify 'get ICD by category title' do
      check Icd.find_by_category_title('Cholera'), [1]
    end
    specify 'get ICD by category code' do
      check Icd.find_by_category_code('A00'), []
    end
    specify 'get ICD by  diagnosis Code' do
      check Icd.find_by_diagnosis_code('0'), []
    end
  end

end