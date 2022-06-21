area_codes = {
    "Abu Dhabi" => 100, 
    "Dubai" => 101, 
    "Sharjah" => 102, 
    "Ajman" => 103,
    "Umm Al Quwain" => 104, 
    "Ras Al Khaimah" => 105, 
    "Fujeirah" => 106
}

def get_cities(areacodes)
    areacodes.keys
end

def get_city_code(areacodes, city)
    areacodes.each do |area_city, code|
        if area_city.downcase == city.downcase
            return code
        end
    end
    return "not found"
end

loop do
    print "Do you want to know the code for a city? (Y/N) : "
    choice = gets.chomp.downcase
    break if choice != 'y'
    puts get_cities(area_codes)
    print "Choose the city whose code you wish to find : "
    city_name = gets.chomp
    city_code = get_city_code(area_codes, city_name)
    puts "Required code is #{city_code}."
end

