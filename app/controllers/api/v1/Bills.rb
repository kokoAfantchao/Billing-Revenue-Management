module API
  module V1
    class Bills < Grape::API
      include API::V1::Defaults
      resource :bills do
        desc 'Return  all users'
        get '' do
          '{ all the bills as a json }'
        end
        desc 'Return a bill by Id'
        params do
          requires :id, type: String, desc: 'ID of the the patient'
        end
        get ':id' do
          "{return a specific  bill by patient #id }"
        end
      end
    end
  end
end
