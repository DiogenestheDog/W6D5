class Cat < ApplicationRecord
  # include ActiveView::DateHelpers
  validates :color, inclusion: { in: %w(brown white gray black orange 
    spotted striped), message: "#{:color} is not a natural color" }

  validates :birth_date, :name, :sex, :color, :description,  presence: true

  validates :sex, inclusion: { in: %w(M F X), message: "#{:sex} is not a valid sex" }
    
  def age
    @age ||= (1..10).sample
  end


end
