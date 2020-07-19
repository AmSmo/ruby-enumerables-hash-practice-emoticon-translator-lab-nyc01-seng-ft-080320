# require modules here
require "yaml"
require "pry"
def load_library(file)
  translated = {}
  emoticons = YAML.load_file(file)
  emoticons.each do |name, lang_array|
      translated[name]= {:english => lang_array[0], :japanese => lang_array[1]}
  end
  
  translated
end

def get_japanese_emoticon(file, emoticon)
    lib = load_library(file)
    lib[emoticon][:japanese]
end

def get_english_meaning(file, emoticon)
  # code goes here
  lib = load_library(file)
  lib.each do |name, language|
    if language.value?(emoticon)
      return name
    end
  end
end