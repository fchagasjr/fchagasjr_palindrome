require_relative "fchagasjr_palindrome/version"

module FchagasjrPalindrome
  def palindrome?
    return false if processed_content.empty?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

class String
  include FchagasjrPalindrome
end

class Integer
  include FchagasjrPalindrome
end
