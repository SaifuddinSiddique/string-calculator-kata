class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = extract_delimiter(numbers)
    else
      delimiter = /,|\n/
    end

    num_list = numbers.split(delimiter).map(&:to_i)

    check_for_negative_numbers(num_list)

    num_list.sum
  end

  private

  def extract_delimiter(numbers)
    delimiter_line, numbers = numbers.split("\n", 2)
    delimiter = delimiter_line[2..]  # Remove the "//" part
    [delimiter, numbers]
  end

  def check_for_negative_numbers(numbers)
    negatives = numbers.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end