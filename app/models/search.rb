class Search < ActiveRecord::Base

  def search_services
    services = Service.all

    services = services.where(["location like ?", "%#{address_city}%"]) if address_city.present?

    # The magic numbers below are the IDs of the respective tags or properties.

    # Cost, filter:
    services = services.joins("join properties_services on services.id = properties_services.service_id").where(["properties_services.property_id = ?", '22']) if free.present? && free == true

    return services

  end

end
