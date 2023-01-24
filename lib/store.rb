class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than: 0 }

  validate :must_have_apparel

  def must_have_apparel
    return unless !mens_apparel && !womens_apparel

    errors.add(:name, 'must carry some type of apparel')
  end
end
