require "test_helper"

class TestFchagasjrPalindrome < Minitest::Test
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palidrome_with_punctuation
    assert "Madam I'm Adam.".palindrome?
  end

  def test_empty_spaces
    refute "  ".palindrome?
  end

  def test_integer_non_palindrome
     refute 12345.palindrome?
   end

   def test_integer_palindrome
     assert 12321.palindrome?
   end
end
