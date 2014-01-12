if Rails.env.production?
  ZeroPush.auth_token = ''
else
  ZeroPush.auth_token = ''
end
