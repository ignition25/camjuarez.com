module ApplicationHelper
  def coderay(text)
      text.gsub(/\<pre( lang="(.+?)")?\>\<code( lang="(.+?)")?\>(.+?)\<\/code\>\<\/pre\>/m) do
      	lang = $4
      	text = CGI.unescapeHTML($5).gsub /\<code( lang="(.+?)")?\>|\<\/code\>/, ""
      	CodeRay.scan(text, lang).div(:css => :class)
      end
  end

  def default_description
  	"Cam Juarez is a computer science and math double major, software engineer, web dev, and music lover, 
  	who enjoys sharing interesting findings and elegant solutions."
  end

  def timeago(time)
    time_ago = ((Time.now - time) / 86400)
    # Less than a day ago
    if time_ago < 1 
      time_ago *= 24
    # Less than an hour ago
      if time_ago < 1
        time_ago *= 60
    # Less than a minute ago
        if time_ago < 1
          time_ago *= 60
          return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " second ago" :  " seconds ago")
        end
        return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " minute ago" :  " minutes ago")
      end
      return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " hour ago" :  " hours ago")
    elsif time_ago >= 30
      time_ago /= 30
      return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " month ago" :  " months ago")
    elsif time_ago == 1
      return "#{time_ago = time_ago.round} day ago"
    else
      return "#{time_ago = time_ago.round} days ago"
    end
  end
end
