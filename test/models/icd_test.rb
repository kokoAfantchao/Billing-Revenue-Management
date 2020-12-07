require 'minitest/autorun'
require 'test_helper'

class IcdTest < ActiveSupport::TestCase
  def setup
    more_icd = [
        {:category_code => 'A00', :diagnosis_code => '0',:full_code => 'A000',:abbreviated_description => 'Cholera due to Vibrio cholerae 01, biovar cholerae',:full_description => 'Cholera due to Vibrio cholerae 01, biovar cholerae',:category_title => 'Cholera'},
        {:category_code => 'A00', :diagnosis_code => '1',:full_code => 'A001',:abbreviated_description => 'Cholera due to Vibrio cholerae 01, biovar eltor',:full_description => 'Cholera due to Vibrio cholerae 01, biovar eltor',:category_title => 'Cholera'},
        {:category_code => 'A00', :diagnosis_code => '9',:full_code => 'A009',:abbreviated_description => 'Cholera, unspecified',:full_description => 'Cholera, unspecified',:category_title => 'Cholera'},
        {:category_code => 'A010', :diagnosis_code => '0', :full_code => 'A0100', :abbreviated_description => 'Typhoid fever, unspecified', :full_description => 'Typhoid fever, unspecified', :category_title => 'Typhoid fever'},
        {:category_code => 'A010', :diagnosis_code => '1', :full_code => 'A0101', :abbreviated_description => 'Typhoid meningitis', :full_description => 'Typhoid meningitis', :category_title => 'Typhoid fever'},
        {:category_code => 'A010', :diagnosis_code => '2', :full_code => 'A0102', :abbreviated_description => 'Typhoid fever with heart involvement', :full_description => 'Typhoid fever with heart involvement', :category_title => 'Typhoid fever'},
        {:category_code => 'A010', :diagnosis_code => '3', :full_code => 'A0103', :abbreviated_description => 'Typhoid pneumonia', :full_description => 'Typhoid pneumonia', :category_title => 'Typhoid fever'},
        {:category_code => 'A010', :diagnosis_code => '4', :full_code => 'A0104', :abbreviated_description => 'Typhoid arthritis', :full_description => 'Typhoid arthritis', :category_title => 'Typhoid fever'},
        {:category_code => 'A010', :diagnosis_code => '5', :full_code => 'A0105', :abbreviated_description => 'Typhoid osteomyelitis', :full_description => 'Typhoid osteomyelitis', :category_title => 'Typhoid fever'},
        {:category_code => 'A010', :diagnosis_code => '9', :full_code => 'A0109', :abbreviated_description => 'Typhoid fever with other complications', :full_description => 'Typhoid fever with other complications', :category_title => 'Typhoid fever'},
        {:category_code => 'A011', :diagnosis_code => '', :full_code => 'A011', :abbreviated_description => 'Paratyphoid fever A', :full_description => 'Paratyphoid fever A', :category_title => 'Paratyphoid fever A'},
        {:category_code => 'A012', :diagnosis_code => '', :full_code => 'A012', :abbreviated_description => 'Paratyphoid fever B', :full_description => 'Paratyphoid fever B', :category_title => 'Paratyphoid fever B'},
        {:category_code => 'A013', :diagnosis_code => '', :full_code => 'A013', :abbreviated_description => 'Paratyphoid fever C', :full_description => 'Paratyphoid fever C', :category_title => 'Paratyphoid fever C'},
        {:category_code => 'A014', :diagnosis_code => '', :full_code => 'A014', :abbreviated_description => 'Paratyphoid fever, unspecified', :full_description => 'Paratyphoid fever, unspecified', :category_title => 'Paratyphoid fever, unspecified'},
        {:category_code => 'A02', :diagnosis_code => '0', :full_code => 'A020', :abbreviated_description => 'Salmonella enteritis', :full_description => 'Salmonella enteritis', :category_title => 'Other salmonella infections'},
        {:category_code => 'A02', :diagnosis_code => '1', :full_code => 'A021', :abbreviated_description => 'Salmonella sepsis', :full_description => 'Salmonella sepsis', :category_title => 'Other salmonella infections'},
        {:category_code => 'A022', :diagnosis_code => '0', :full_code => 'A0220', :abbreviated_description => 'Localized salmonella infection, unspecified', :full_description => 'Localized salmonella infection, unspecified', :category_title => 'Localized salmonella infections'},
        {:category_code => 'A022', :diagnosis_code => '1', :full_code => 'A0221', :abbreviated_description => 'Salmonella meningitis', :full_description => 'Salmonella meningitis', :category_title => 'Localized salmonella infections'},
        {:category_code => 'A022', :diagnosis_code => '2', :full_code => 'A0222', :abbreviated_description => 'Salmonella pneumonia', :full_description => 'Salmonella pneumonia', :category_title => 'Localized salmonella infections'},
        {:category_code => 'A022', :diagnosis_code => '3', :full_code => 'A0223', :abbreviated_description => 'Salmonella arthritis', :full_description => 'Salmonella arthritis', :category_title => 'Localized salmonella infections'},
        {:category_code => 'A022', :diagnosis_code => '4', :full_code => 'A0224', :abbreviated_description => 'Salmonella osteomyelitis', :full_description => 'Salmonella osteomyelitis', :category_title => 'Localized salmonella infections'},
        {:category_code => 'A022', :diagnosis_code => '5', :full_code => 'A0225', :abbreviated_description => 'Salmonella pyelonephritis', :full_description => 'Salmonella pyelonephritis', :category_title => 'Localized salmonella infections'}
    ]

    more_icd.each do |icd|
      Icd.create(icd)
    end

  end

  def teardown
    # Do nothing
  end

  test 'get all icd in  ' do
    assert Icd.all.count, 'list of ICD in the database'
    assert_equal(22, Icd.all.count, '22 element in total Icd in the data base')
  end

  test 'find icd by  category code  A00' do
    assert_equal(3, Icd.find_by_category_code('A00').count,'3 item  with the category code')
  end

  test 'find icd by his diagnosis code  1 ' do
    assert_equal(4,Icd.find_by_diagnosis_code(1).count, '4 item with diagnosis code 1 ')
  end

  test 'find icd by full_code A0225' do
    assert_equal(1, Icd.find_by_full_code('A0225').count, ' one Icd with full code A0225 ')
  end

  test 'find icd by word in the  abbreviated description => Paratyphoid' do
    assert_equal(4,Icd.find_by_abbreviated_description('Paratyphoid').count,'4 items in the ICd with Paratyphoid description')
  end

  test 'find  icd by word in any attribute' do
    assert_equal( 7, Icd.find_code('fever').count, "in any icd code where fever appear ")
  end

end