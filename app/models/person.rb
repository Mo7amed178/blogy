class Person < ApplicationRecord
    validates :first_name, :last_name, presence: true

    validates :first_name, length: {minimum:3, too_short: "must have at least %{count} words"}
    
    # validates :age, numericality: true
    validates :age, numericality: {only_integer: true}
   
    validates :age, inclusion: { in: 18..60,
    message: "%{value} is not a valid age" }

end
