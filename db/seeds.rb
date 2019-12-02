if Rails.env.development?
  User.create!(
    :email => 'dev@family-tree.com',
    :password => 'password',
    :password_confirmation => 'password')
end
