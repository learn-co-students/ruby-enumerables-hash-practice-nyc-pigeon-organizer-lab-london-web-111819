  
def nyc_pigeon_organizer(pigeon_original_data)
  pigeon_data_restructured = {}
  pigeon_original_data.each do |first_level_keys, others|
    others.each do |second_level_keys, arrays_filled_with_pigeons|
      arrays_filled_with_pigeons.each do |name|
        #if pigeon_data_restructured[name] == nil
        #  pigeon_data_restructured[name] = {}
        #end
        pigeon_data_restructured[name] = {} if (pigeon_data_restructured[name]==nil)
        #if pigeon_data_restructured[name][first_level_keys] == nil
        #  pigeon_data_restructured[name][first_level_keys] = []
        #end
        pigeon_data_restructured[name][first_level_keys] = [] if (pigeon_data_restructured[name][first_level_keys]==nil)
        pigeon_data_restructured[name][first_level_keys].push(second_level_keys.to_s)
      end
    end 
  end
  pigeon_data_restructured
end

pigeon_list = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

p nyc_pigeon_organizer(pigeon_list)