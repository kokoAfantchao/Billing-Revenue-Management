require 'rspec'
require 'byebug'
ALL_CPT = [nil] + Cpt.all.order('id')

def check(actual, expected_ids)
  actual ||= []
  expected = ALL_CPT.values_at(*expected_ids)
  missing = expected - actual
  unless missing.empty?
    raise "Result should have contained these, but it did not:\n" + missing.join("\n")
  end
  extra = actual - expected
  unless extra.empty?
    raise "Result should NOT have contained these, but it did:\n" + missing.join("\n")
  end
end

describe 'ActiveRecord CPT CODE' do
  around(:each) do |example|
    ActiveRecord::Base.transaction do
      example.run
      raise ActiveRecord::Rollback
    end
  end

  describe 'to find cpt_code (s)' do
    before(:each) do
      # disable methods we don't want you to use...
      expect(Cpt).not_to receive(:find)
      expect(Cpt).not_to receive(:expect)
      expect(Cpt).to receive(:where).and_call_original
    end
    specify 'get all the cpt code ' do
      check Cpt.get_all, [24]
    end

    specify 'find cpt code by description' do
      check Cpt.find_by_description('Cervicography'),1
    end
  end

end