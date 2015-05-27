json.array!(@user_subscriptions) do |user_subscription|
  json.extract! user_subscription, :id, :birth_date, :nationality, :address, :phone, :institution, :about, :status
  json.url user_subscription_url(user_subscription, format: :json)
end
