# require modules here

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoticon_hash= {}
  emoticons.each do |key, value|
    emoticons[key][:english]= value[0]
    emoticons[key][:japanese] = value[1]
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end