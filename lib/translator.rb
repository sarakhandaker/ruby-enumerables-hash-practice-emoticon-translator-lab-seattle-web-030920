# require modules here
require "yaml"
require "pry"
def load_library (path)
n=YAML.load_file(path)
newhash={}
get_meaning={}
get_emoticon={}

n.each_key{|word|
  get_meaning[n[word][1]]=word
  get_emoticon[n[word][0]]=n[word][1]
}
newhash[:get_meaning]=get_meaning
newhash[:get_emoticon]=get_emoticon

newhash
end

def get_japanese_emoticon (path, emo)
  n=load_library(path)
  jap_emo= n[:get_emoticon][emo]
  binding.pry
  "Sorry, that emoticon was not found" if jap_emo=nil
  jap_emo
end

def get_english_meaning (path, emo)
  n=load_library(path)
  
  meaning=n[:get_meaning][emo]
  
  "Sorry, that emoticon was not found" if meaning=nil
  meaning
end