module ApplicationHelper
  def coderay(text)
      text.gsub(/\<pre( lang="(.+?)")?\><code( lang="(.+?)")?\>(.+?)\<\/code\><\/pre\>/m) do
        CGI.unescapeHTML(CodeRay.scan($5, $2).div(:css => :class))
      end
  end
end
