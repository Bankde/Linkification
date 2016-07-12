def link(text)
  if (text[/(http:\/\/|ftp:\/\/|mailto:([\p{Letter}\p{Number}]+@))([\p{Letter}\p{Number}-]+)(\.)(\p{Letter}{2,})/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
