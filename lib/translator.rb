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