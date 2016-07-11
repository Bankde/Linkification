def link(text)
  if (text[/http:\/\/(.)+[.](.){2,}/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
