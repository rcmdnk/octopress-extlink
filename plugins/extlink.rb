module Jekyll

  class LinkTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      arr = markup.split(' ')
      @href = ""
      @att = ""
      @link = ""
      while true do
        break if arr.size() == 0
        if arr[0] =~ /(https?:\/\/|ftp:\/\/|\/).*/
          @href = arr[0]
          arr.delete_at(0)
          @link = arr.join(' ')
          break
        elsif
          @att = "#{@att} #{arr[0]}"
          arr.delete_at(0)
          next
        end
      end
      if not @att.include?('target')
        if @href =~ /(https?:\/\/).*/
          @att = "#{@att} target=\"_blank\""
        end
      end
    end

    def render(context)
      "<a href=\"#{@href}\" #{@att}>#{@link}</a>"
    end
  end
end

Liquid::Template.register_tag('link', Jekyll::LinkTag)
