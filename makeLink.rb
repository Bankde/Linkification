def link(text)
  if (text[/([[http:]|[ftp:]]\/\/)(\p{Letter}+)(\.)(\p{Letter}{2,})/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
