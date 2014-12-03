class ComponentValue < ActiveRecord::Base
  belongs_to :component
  has_many :product_components
  validates :component, :component_id, presence: true
end
