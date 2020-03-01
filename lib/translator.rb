# require modules here
require "yaml"
require "pry"
def load_library (path)
  n=YAML.load_file(path)
j=[]
e=[]
n.each_key{|meaning|
j<< {n[meaning]=> meaning}
e<< {meaning=> n[meaning]}
}
newhash={:get_meaning=>j,
:get_emoticon=>e}
end

def get_japanese_emoticon (path, emo)
  n=load_library(path)
jap_emo=nil
  n.each_key{|key|
    jap_emo=n[key][1] if n[key][0]==emo
  }
  jap_emo
  "Sorry, that emoticon was not found" if jap_emo=nil
end

def get_english_meaning (path, emo)
  n=load_library(path)
  jap_emo=nil
  n.each_key{|key|
    jap_emo=n[key][0] if n[key][1]==emo
  }
  jap_emo
  "Sorry, that emoticon was not found" if jap_emo=nil
end