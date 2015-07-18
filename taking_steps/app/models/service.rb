class Service < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 255 }

  def self.search(search)
    if search
      where(["location LIKE ?", "%#{address_city}%"])
    else
      all
    end
  end
end
