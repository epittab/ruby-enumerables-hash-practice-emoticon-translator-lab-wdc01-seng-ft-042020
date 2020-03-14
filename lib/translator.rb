# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  unaltered_hash = YAML.load_file(filepath)
  jap_hash = {}
  eng_hash = {}
  
  unaltered_hash.each do |key, value| 
    if (!jap_hash[key]) 
      jap_hash[key] = value[1]
    end
    if (!eng_hash[key])
      eng_hash[key] = value[0]
    end
  end
  
  
  hash = {
    :get_meaning => jap_hash,
    :get_emoticon => eng_hash
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