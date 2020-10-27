module API
  module V1
    class Bills < Grape::API

      resource :bills do
        desc 'Return  all users'
        get '' do
          '{ all the bills as a json }'
        end
        desc 'Return a bill'
        params do
          requires :id, type: String, desc: 'ID of the the patient'
        end
        get ':id' do
          '{ retun a spesific  bill by patient ID }'
        end
      end
    end
  end
end
