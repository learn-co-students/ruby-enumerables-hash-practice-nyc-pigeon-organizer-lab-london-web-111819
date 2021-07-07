require 'pry'

def nyc_pigeon_organizer(data)

# write your code here!
  pigeons = {}


  data.each do |descriptor, value| #keys from data are colour, gender, lives
    value.each do |info, list_of_names|
      list_of_names.each do |name|

        if pigeons.has_key?(name) == false # checks if the pigeons hash has all necessary names added
          #if the name check comes up false:
          pigeons[name] = {} #creates an entry for the missing pigeon

        end

        if pigeons[name].has_key?(descriptor) == false   # checks if each pigeon has existing descriptors
            #if the descriptor check comes up false:
            pigeons[name][descriptor] = []  #adds an empty array for new descriptor keys
        end

       pigeons[name][descriptor].push(info.to_s)

      end
    end
  end

  #binding.pry

  pigeons

end
