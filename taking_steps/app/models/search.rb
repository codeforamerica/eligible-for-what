class Search < ActiveRecord::Base

  def search_services
    services = Service.all

    services = services.where(["location like ?", "%#{address_city}%"]) if address_city.present?

    return services

  end

end
