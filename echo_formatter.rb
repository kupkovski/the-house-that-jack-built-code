# frozen_string_literal: true

# class to apply the Default format to the text (keep the original format)
class EchoFormatter
  def format(parts)
    parts.zip(parts)
  end
end
