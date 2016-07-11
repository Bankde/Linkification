def link(text)
  if (text[/(http:\/\/)([a-zA-Z]+)([.])([a-zA-Z]{2,})/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
