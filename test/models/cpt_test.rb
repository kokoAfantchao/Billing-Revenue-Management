require 'minitest/autorun'
require 'test_helper'

class CptTest < ActiveSupport::TestCase
  def setup
    more_cpt = [ {:cpt_code => '0003T', :cpt_description => 'Cervicography', :price => 100},
                 {:cpt_code => '0008T', :cpt_description => 'Upper gi endoscopy w/suture', :price => 100},
                 {:cpt_code => '0010T', :cpt_description => 'Tb test, gamma interferon', :price => 100},
                 {:cpt_code => '0016T', :cpt_description => 'Thermotx choroid vasc lesion', :price => 100},
                 {:cpt_code => '0017T', :cpt_description => 'Photocoagulat macular drusen', :price => 100},
                 {:cpt_code => '0018T', :cpt_description => 'Transcranial magnetic stimul', :price =>100},
                 {:cpt_code => '0019T', :cpt_description => 'Extracorp shock wave tx, ms', :price => 100},
                 {:cpt_code => '0020T', :cpt_description => 'Extracorp shock wave tx, ft', :price =>100}]

    more_cpt.each do |cpt|
      Cpt.create(cpt)
    end
  end

  def teardown
    # Do nothing
  end

  test 'get list of cpt in the database  ' do
    assert_equal(8, Cpt.all.count, '8 element in total in the data base')
  end


  test 'find cpt by description word  Extracorp ' do
    assert_equal(2, Cpt.find_by_description('Extracorp').count, '2 item find by descption  Extracorp ')
  end

  test 'find cpt where the description contain word ' do
    assert_equal(2, Cpt.find_by_description('shock').count,'2 Item with contain in the description shock')
  end


  test 'find cpt by code  starting with 00 'do
    assert_equal 8,Cpt.find_by_code('00').count, 'all 8 item start with'
  end

  test 'fint cpt by code 0016T ' do
    assert_equal 1,Cpt.find_by_code('0016T').count, 'One Cpt with code 0016T '
  end
end