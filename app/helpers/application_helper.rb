module ApplicationHelper
  def coderay(text)
      text.gsub(/\<pre( lang="(.+?)")?\>\<code( lang="(.+?)")?\>(.+?)\<\/code\>\<\/pre\>/m) do
      	CodeRay.scan(CGI.unescapeHTML($5), $2).div(:css => :class)
      end
  end

  def default_description
  	"Cam Juarez is a computer science and math double major, software engineer, web dev, and music lover, 
  	who enjoys sharing interesting findings and elegant solutions."
  end
end
