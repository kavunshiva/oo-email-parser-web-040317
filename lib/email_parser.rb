# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    # 1) split by either space or comma
    # 2) remove empty elements
    # 3) only return unique elements
    @emails.split(/\s|,/).reject{|c| c == ""}.uniq{|email| email} #regex
  end
end
