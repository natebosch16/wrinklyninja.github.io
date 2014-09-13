# Outputs the reading time

# "A 4 minute read"
# Put into your _plugins dir in your Jekyll site
# Usage: A {{ page.content | reading_time }} read

module ReadingTimeFilter
  def reading_time( input )
    words_per_minute = 180

    words = input.split.size;
    minutes = ( words / words_per_minute ).floor
    minutes = "#{minutes} minute"
  end
end

Liquid::Template.register_filter(ReadingTimeFilter)