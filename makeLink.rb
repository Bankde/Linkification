def link(text)
  if (text[/((http:\/\/|ftp:\/\/|https:\/\/|ssh:\/\/|file:\/\/)([\p{Letter}\p{Number}-]+)((\.)(\p{Letter}{2,})){1,2})/])
    if (text[/(.*)(#{$1})(.*)/])
      return "#{$1}<a href=\"#{$2}\">#{$2}</a>#{$3}"
    end
  elsif (text[/((mailto:)([\p{Letter}\p{Number}\-\.\_]+)(@)([\p{Letter}\p{Number}-]+)((\.)(\p{Letter}{2,})){1,2})/])
    if (text[/(.*)(#{$1})(.*)/])
      return "#{$1}<a href=\"#{$2}\">#{$2}</a>#{$3}"
    end
  elsif (text[/((www\.)([\p{Letter}\p{Number}-]+)((\.)(\p{Letter}{2,})){1,2})/])
    if (text[/(.*)(#{$1})(.*)/])
      return "#{$1}<a href=\"http://#{$2}\">#{$2}</a>#{$3}"
    end
  elsif (text[/(([\p{Letter}\p{Number}\-\.\_]+)(@)([\p{Letter}\p{Number}-]+)((\.)(\p{Letter}{2,})){1,2})/])
    if (text[/(.*)(#{$1})(.*)/])
      return "#{$1}<a href=\"mailto:#{$2}\">#{$2}</a>#{$3}"
    end
  else
    return text
  end
end
