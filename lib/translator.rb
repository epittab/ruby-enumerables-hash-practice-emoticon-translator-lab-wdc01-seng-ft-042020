# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  unaltered_hash = YAML.load_file(filepath)
  hash = {
    :
  }
  pp hash
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
  puts hash[emoticon]
  return hash
end