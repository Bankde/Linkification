def link(text)
  if (text[/http:\/\/(.)+/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
