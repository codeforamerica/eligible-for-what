class Search < ActiveRecord::Base

  def search_services
    services = Service.all

    services = services.where(["location like ?", "%#{city}%"]) if city.present?

    return services

  end

end
