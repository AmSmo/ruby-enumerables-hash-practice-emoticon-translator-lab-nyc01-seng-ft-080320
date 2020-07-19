# require modules here
require "yaml"
def load_library(file)
  translated = {}
  emoticons = YAML.load_file(file)
  emoticons.each do |name, lang_array|
    lang_array.each do |eng,jap|
      translated[name][:english] = eng
      translated[name][:japanese] = jap
    end
  end
  translatd
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end