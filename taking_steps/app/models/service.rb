class Service < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 255 }

  # Converts an address to its corresponding Google Maps link.
  def google_maps_link(location)
    # Start: 155 9th St, San Francisco, CA
    # End: https://www.google.com/maps/place/155+9th+St+San+Francisco+CA

    # @someday: Validate location.
    gmaps_url = 'https://www.google.com/maps/place/' + location.tr(' ', '+')

  end

end
