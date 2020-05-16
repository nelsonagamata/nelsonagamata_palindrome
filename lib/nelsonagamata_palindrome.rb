require "nelsonagamata_palindrome/version"

module NelsonagamataPalindrome
  #Returns true for palindrome, false otherwise
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  #Returns content for palindrome testing
  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include NelsonagamataPalindrome
end

class Integer
  include NelsonagamataPalindrome
end
