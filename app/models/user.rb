class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #//:registerable,//
         :recoverable, :rememberable, :validatable
end

# I have toggled registerable so others cannot register if it works just delete all togheter
# # Assuming you have a User model
# user = User.new(email: 'admin@example.com', password: 'your_password', password_confirmation: 'your_password')

# # Save the user
# user.save
