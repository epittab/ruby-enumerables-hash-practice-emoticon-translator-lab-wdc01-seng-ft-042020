# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  unaltered_hash = YAML.load_file(filepath)
  jap_hash = {}
  eng_hash = {}
  
  unaltered_hash.each do |key, value| 
    if (!jap_hash[value[1]]) 
      jap_hash[value[1]] = key
    end
    if (!eng_hash[value[0]])
      eng_hash[value[0]] = key
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
  meaning = ''
  hash[:get_emoticon].each do |key, value|
    if (emoticon == key)
      meaning = value
    end
  end
  hash[:get_meaning].each do |key, value|
    if (meaning == value)
    
  end
  return hash
end

def get_english_meaning(filepath, emoticon)
  # code goes here
  hash = load_library(filepath)
  puts hash[emoticon]
  return hash
end