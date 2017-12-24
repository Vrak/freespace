json.extract! member, :id, :first_name, :last_name, :nickname, :email, :emergency_contact, :emerg_phone, :med_history, :dependant, :vehicle_licence, :agrees_waiver, :created_at, :updated_at
json.url member_url(member, format: :json)
