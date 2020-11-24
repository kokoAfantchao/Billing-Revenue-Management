module API
  module V1
    class CptCode < Grape::API
      include API::V1::Defaults
      resource :cpts do
        desc 'Return  all CPT CODE'
        get '' do
          Cpt.get_all
        end
        desc 'Return a list of CPT  that match description  Description '
        params do
          requires :description, type: String, desc: 'Description of the CPT'
        end
        get ':description' do
          Cpt.find_by_description(params[:description])
        end
      end
    end
  end
end