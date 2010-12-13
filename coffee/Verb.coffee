class Verb
  constructor: (tag, body) ->
    @tag = tag
    @body = body
    @attributes = {}
    @children = [ ]
    @allowedVerbs = null
    
  append: (verb) ->
    for v in @allowedVerbs
      @children.push(verb) if v == verb.getTag()    
    
  toXML: ->
    xml = "<" + @tag
    for key, value of @attributes
        xml += " " + key + "=\"" + value + "\""
      
    xml += ">"
    xml += @body if @body isnt null
    for child in @children
        xml += child.toXML()
        
    return xml += "</" + this.tag + ">"
      
  asURL: ->
    return null
  
  setAttribute: (key, value) ->
    @attributes[key] = value
    
  getBody: ->
    return @body
    
  getTag: ->
    return @tag
    
  getChildren: ->
    return @children
    
  getAttributes: ->
    return @attributes

exports.Verb = Verb