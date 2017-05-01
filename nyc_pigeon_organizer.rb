def nyc_pigeon_organizer(data)
  new_hash={}
  data.each do |info, info_hash|
    info_hash.each do |key, array|
      array.each do |value|
        if !new_hash.has_key?(value)
          new_hash[value]={}
        end
        if !new_hash[value].has_key?(info)
          new_hash[value][info]=[]
        end

        if array.include?(value)
          new_hash[value][info] << key.to_s
        end
      end
    end
  end
   new_hash
end
