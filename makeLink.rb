def link(text)
  if (text[/(http:\/\/|ftp:\/\/|https:\/\/|ssh:\/\/|file:\/\/)([\p{Letter}\p{Number}-]+)(\.)(\p{Letter}{2,})/])
    return "<a href=\"#{text}\">#{text}</a>"
  elsif (text[/(mailto:)([\p{Letter}\p{Number}\-\.\_]+)(@)([\p{Letter}\p{Number}-]+)(\.)(\p{Letter}{2,})/])
    return "<a href=\"#{text}\">#{text}</a>"
  else
    return text
  end
end
