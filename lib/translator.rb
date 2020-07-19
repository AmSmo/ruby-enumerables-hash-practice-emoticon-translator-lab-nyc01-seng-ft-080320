# require modules here
require "yaml", "pry"

def load_library(file)
  translated = {}
  emoticons = YAML.load_file(file)
  emoticons.each do |name, lang_array|
    # binding.pry
      translated[name][:english] = lang_array[0]
      translated[name][:japanese] = lang_array[1]
    end
  
  translated
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end