json.extract! eg_user, :id, :name, :email, :encrypted_password, :created_at, :updated_at
json.url eg_user_url(eg_user, format: :json)
