namespace :scheduler do
  desc "Update featured country"
  task update_country: :environment do
    last_country_order = CountryOrder.find_by(current: true)

    # Si nous sommes à la fin de la liste ou qu'aucune liste n'existe
    if last_country_order.nil? || last_country_order.order == 197
      CountryOrder.delete_all

      # Créez un nouvel ordre aléatoire
      Country.all.shuffle.each_with_index do |country, index|
        CountryOrder.create!(country: country, order: index + 1, current: index == 0)
      end
    else
      last_country_order.update!(current: false)
      next_country_order = CountryOrder.find_by(order: last_country_order.order + 1)

      # Nous vérifions si next_country_order n'est pas nul avant d'essayer de l'actualiser
      if next_country_order
        next_country_order.update!(current: true)
      else
        # S'il n'y a pas de prochain ordre, nous pouvons soit générer une nouvelle séquence, soit gérer l'erreur différemment.
        # Ici, je vais simplement régénérer l'ordre pour simplifier.
        CountryOrder.delete_all
        Country.all.shuffle.each_with_index do |country, index|
          CountryOrder.create!(country: country, order: index + 1, current: index == 0)
        end
      end
    end
  end
end
