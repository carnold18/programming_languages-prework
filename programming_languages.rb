def reformat_languages(languages)
  new_hash = []
    langauges.each do |style, hash|
      hash.each do |langauge, type|
        if new_hash[langauge] == nil
          new_hash[langauge] = type
          new_hash[langauge][:style] = [style]
        else
          new_hash[langauge][:style] << style
        end
      end
    end
    new_hash
end
