module API
  module V1
    class Bills < Grape::API
      include API::V1::Defaults
      resource :bills do
        desc 'Return  all  bills '
        get '' do
          Bill.all
        end
        desc 'Return a bill by patient Id '
        params do
          requires :patient_id, type: String, desc: 'unique indentifier of  patient in the system'
          optional :date, type: Date, desc: 'Use date if you want bills between now and any Date'
        end
        get '/patient ' do
          {}
        end

        desc 'send list of idc'
        params do
          requires :patient_id, type: String, desc: 'unique indentifier of the patient in the system '
          requires :icd_code, type: String, desc: 'List of icd full code separate by comma  Ex: A0102,A0104,A0105'
          requires :cpt_code, type: String, desc: 'List of  cpt code separate by comma  Ex: A0102,A0104,A0105'
          requires :insurance_id, type: String, desc: 'Patient insurance id to check the isurrance validity '
        end
        post '/enconter'do
          Bill.new_encontent(params[:patient_id],params[:cpt_code],params[:icd_code],params[:insurance_id])
        end

      end
    end
  end
end
