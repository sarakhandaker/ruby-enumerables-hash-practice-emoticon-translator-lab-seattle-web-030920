# require modules here
require "yaml"
require "pry"
def load_library (path)
  n=YAML.load_file(path)
binding.pry
newhash={}
n.each_key{|word|
newhash[key][:get_meaning=>word]
newhash[key][:get_emoticon=>n[word]]
}

end

def get_japanese_emoticon (path, emo)
  n=load_library(path)
jap_emo=nil
  n[:get_emoticon].each_key{|key|
    jap_emo=n[:get_emoticon][key][1] if n[:get_emoticon][key][0]==emo
  }
  jap_emo
  "Sorry, that emoticon was not found" if jap_emo=nil
end

def get_english_meaning (path, emo)
  n=load_library(path)
jap_emo=nil
  n[:get_emoticon].each_key{|key|
    jap_emo=n[:get_emoticon][key][1] if n[:get_emoticon][key][0]==emo
  }
  jap_emo
  "Sorry, that emoticon was not found" if jap_emo=nil
end