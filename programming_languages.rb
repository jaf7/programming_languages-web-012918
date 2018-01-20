require 'pry'
def reformat_languages(programming_languages)
  new_hash = {}

  programming_languages.each do |language_style, languages|
    # binding.pry
    languages.each do |language, attributes|
      # binding.pry
      attributes.each do |type_key, value|
        # binding.pry

        if !new_hash[language]
          new_hash[language] = {}
        end

        if !new_hash[language][type_key]
          new_hash[language][type_key] = value
        end

        new_hash[language][:style] ||= []
        new_hash[language][:style] << language_style
      end
    end
  end

  new_hash
end
