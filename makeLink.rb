def link(text)
  if (text[/(http:\/\/|ftp:\/\/|mailto:(\p{Letter}+@))(\p{Letter}+)(\.)(\p{Letter}{2,})/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
