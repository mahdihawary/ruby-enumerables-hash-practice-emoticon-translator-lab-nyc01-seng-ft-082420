# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoticon_hash= {}
  
  emoticons.each do |key, value|
    emoticons[key][:english]= value[0]
    emoticons[key][:japanese] = value[1]
  end
  emoticon_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end


def get_english_meaning(file_path, emoticon)
  # code goes here
end