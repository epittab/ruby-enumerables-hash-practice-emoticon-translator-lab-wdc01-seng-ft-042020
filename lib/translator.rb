# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  hash = YAML.load_file(filepath)
  
  return hash
end

def get_japanese_emoticon(filepath, emoticon)
  # code goes here
  hash = load_library(filepath)
  puts hash[emoticon]
  return hash
end

def get_english_meaning(filepath, emoticon)
  # code goes here
  hash = load_library(filepath)
  return hash[emoticon][0]
end