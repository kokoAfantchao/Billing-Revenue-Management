module API
  module V1
    class IcdCode < Grape::API
      include API::V1::Defaults

      resource :icds do
        desc 'Return  all ICD CODE '
        get '' do
          Icd.all
        end

        desc 'Return a list of ICD  that match description  '
        params do
          requires :describe, type: String, desc: 'Description of the ICD'
        end
        get '/description' do
          Icd.find_by_description(params[:describe])
        end

        desc 'Return a list of ICD with the same the Category Code '
        params do
          requires :ctg_code, type: String, desc: 'Category code  of the ICD'
        end
        get '/category_code' do
          Icd.find_by_category_code(params[:ctg_code])
        end

        desc 'Return a list of ICD with the same the Category Title  '
        params do
          requires :ctg_title, type: String, desc: 'Category title   of the ICD'
        end
        get '/category_title' do
          Icd.find_by_category_title(params[:ctg_title])
        end

        desc 'Return a list of ICD with the same the diagnosis Code'
        params do
          requires :diag_code, type: String, desc: 'Diagnosis code of the ICD'
        end
        get '/diagnosis_code' do
          Icd.find_by_diagnosis_code(params[:diag_code])
        end

      end
    end
  end
end