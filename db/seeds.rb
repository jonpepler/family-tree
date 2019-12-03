require 'factory_bot_rails'

if Rails.env.development?
  User.create!(
    :email => 'dev@family-tree.com',
    :password => 'password',
    :password_confirmation => 'password')

  FactoryBot.create_list :person, 10
end
