module API
  module V1
    class IcdCode < Grape::API
      include API::V1::Defaults
      resource :icd do
        desc 'Return  all ICD CODE '
        get '' do
          Icd.all
        end

        desc 'Return a list of ICD  that match description  '
        params do
          requires :description, type: String, desc: 'Description of the ICD'
        end
        get ':description' do
          Icd.find_by_description(description)
        end

        desc 'Return a list of ICD with the same the Category Code '
        params do
          requires :category_code, type: String, desc: 'Category code  of the ICD'
        end
        get ':category_code' do
          Icd.find_by_category_code(category_code)
        end

        desc 'Return a list of ICD with the same the Category Title  '
        params do
          requires :category_title, type: String, desc: 'Category title   of the ICD'
        end
        get ':category_title' do
          Icd.find_by_category_title(category_title)
        end

        desc 'Return a list of ICD with the same the diagnosis  Code '
        params do
          requires :diagnosis_code, type: String, desc: 'Diagnosis code  of the ICD'
        end
        get ':diagnosis_code' do
          Icd.find_by_diagnosis_code(diagnosis_code)
        end

      end
    end
  end
end