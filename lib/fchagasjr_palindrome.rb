# frozen_string_literal: true

require_relative "fchagasjr_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    scan(/[a-z0-9]/i).join.downcase
  end
end