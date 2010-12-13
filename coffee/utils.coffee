
# Adapted from http://stackoverflow.com/questions/1240408/reading-bytes-from-javascript-string
String.prototype.getBytes = ->
  str = this.substring(0)
  re =[]
  for i  in [0...str.length]  
    ch = str.charCodeAt(i); 
    st = [];                
    while(ch) 
      st.push ch & 0xFF   
      ch = ch >> 8      
    re = re.concat st.reverse() 
  return re