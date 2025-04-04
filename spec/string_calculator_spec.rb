require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    context "when input is an empty string" do
      it "returns 0 for an empty string" do
        expect(calculator.add("")).to eq(0)
      end
    end

    context "when input is a single number" do
      it "returns the number itself for a single number" do
        expect(calculator.add("1")).to eq(1)
      end
    end

    context "when input has two numbers" do
      it "returns the sum of two numbers" do
        expect(calculator.add("1,2")).to eq(3)
      end
    end

    context "when input has multiple numbers" do
      it "returns sum for multiple numbers" do
        expect(calculator.add("1,2,3,4")).to eq(10)
      end
    end

    context "when the input has a custom delimiter" do
      it "correctly extracts the delimiter from the input string" do
        delimiter, remaining_numbers = calculator.send(:extract_delimiter, "//;\n1;2")
        expect(delimiter).to eq(";")
        expect(remaining_numbers).to eq("1;2")
      end

      it "adds numbers with the custom delimiter" do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end
    end


    context "when negative numbers are detected" do
      it "raises an error when multiple negative numbers are detected" do
        expect { calculator.send(:check_for_negative_numbers, [1, -2, -3, 4]) }.to raise_error("Negative numbers not allowed: -2, -3")
      end
    end
  end
end
