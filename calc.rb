
#Greets user
def greeting
	puts "Welcome to Calculator! Here you can do basic math operations."
end

#Prompts user to select operation by typing 1-4
def choose_operation
	puts "Please choose the operation you'd like to use:"
	puts "For addition (+), type '1'"
	puts "For subtraction (-), type '2'"
	puts "For multiplication (*), type '3'"
	puts "For division (/), type '4'"
	puts "For exponents, type '5'"
	puts "To square a number, type '6'"
	puts "To cube a number, type '7'"
	puts "To find a squareroot, type '8'"

	#Returns user selection
	return gets.chomp.to_i
end

#Based on function selected determines whether 1 or 2 input numbers needed
def inputs_needed(operation)
	if operation > 5
		return 1
	else
		return 2
	end
end

#Prompts user to input first number
def prompt_integer1
	puts "Please enter your first number"
	return gets.chomp.to_i
end

#If 2 numbers are needed, prompt user for second number
def prompt_integer2(inputs_needed)
	if inputs_needed > 1
		puts "Please enter your second number"
		return gets.chomp.to_i
	end
end

#Calculates by taking operation, first number and second number
def calculate(operation, num1, num2 = 0)
	case operation
	when 1
		num1 + num2
	when 2
		num1 - num2
	when 3
		num1 * num2
	when 4
		num1 / num2
	when 5
		num1 ** num2
	when 6
		num1 ** 2
	when 7
		num1 ** 3
	when 8
		Math.sqrt(num1)
	end
end

#Displays result
def print_result(result)
	puts "The answer is #{result}!"
end

#Invoke calculator
greeting
operation = choose_operation
number_of_inputs = inputs_needed(operation)

num1 = prompt_integer1
num2 = prompt_integer2(number_of_inputs)
answer = calculate(operation, num1, num2)
print_result(answer)



