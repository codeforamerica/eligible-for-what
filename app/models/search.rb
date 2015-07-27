class Search < ActiveRecord::Base

  def search_services
    services = Service.all

#    services = services.where(["location like ?", "%#{address_city}%"]) if address_city.present?
#    services = services.where(["domestic_violence_hotline = ?", domestic_violence_hotline]) if domestic_violence_hotline.present?

    # The magic number here, 9, is the ID of the tag 'domestic violence hotline'
    services = services.joins("join services_tags on services.id = services_tags.service_id").where(["services_tags.tag_id = ?", '9']) if domestic_violence_hotline.present? && domestic_violence_hotline == true

    return services

  end

end
