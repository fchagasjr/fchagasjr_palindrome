# frozen_string_literal: true

require_relative "fchagasjr_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.scan(/[a-zA-Z0-9]/).join
  end

  private

  def processed_content
    self.letters.downcase
  end
end