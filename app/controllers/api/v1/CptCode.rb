module API
  module V1
    class CptCode < Grape:: API
      include API::V1::Defaults
      resource :cpt do
        desc 'Return  all CPT CODE'
        get '' do
          '{ all CPT  code as json }'
        end

        desc 'Return a CPT by Description '
        params do
          requires :description, type: String, desc: 'Decription of the CPT'
        end
        get ':description' do
          '{return a specific CPT Code  that match the descriptions }'
        end

        desc 'Return a list of CPT  that match description  Description '
        params do
          requires :description, type: String, desc: 'Decription of the CPT'
        end
        get ':description' do
          '{return a  list of CPT Code  that match the descriptions }'
        end


      end
    end
  end
end