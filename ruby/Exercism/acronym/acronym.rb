# Module for sentence  abbreviate
module Acronym
  def self.abbreviate(msg)
    msg.scan(/\b\w/).join.upcase
  end
end
