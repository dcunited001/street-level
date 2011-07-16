Factory.define :user, :class => 'User' do |u|
  u.sequence(:username) { |n| "username#{n}" }
  u.sequence(:email) { |n| "email#{n}@example.com" }
  u.password 'password'
  u.password_confirmation 'password'

  u.roles { [Role[:refinery]] }
end

Factory.define :admin, :parent => :user do |a|
  a.sequence(:username) { |n| "admin#{n}" }
  a.sequence(:email) { |n| "admin#{n}@example.com" }
end