def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash = {}
  data.each do |trait,attribute|
    attribute.each do |detail,names|
      names.each do |name|
        if !pigeon_hash[name] 
          pigeon_hash[name] = {}
        end
        if !pigeon_hash[name][trait]
          pigeon_hash[name][trait] = []
        end
        pigeon_hash[name][trait].push(detail.to_s)
      end
    end
  end
  pigeon_hash
end
