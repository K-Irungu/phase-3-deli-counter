# Write your code here.
katz_deli = ["Kevin", "Irungu", "Andrew"]

def line (array_of_customers)

    unless array_of_customers == []
        people_in_line = array_of_customers.map.with_index { |customer, index| "#{index + 1}. #{customer}" }.join(" ")
        puts "The line is currently: #{people_in_line}"
    else
        puts "The line is currently empty."
    end

end

def take_a_number (array_of_customers, new_customer)
  array_of_customers.push(new_customer)
  puts "Welcome, #{new_customer}. You are number #{array_of_customers.length} in line."
end

def now_serving (array_of_customers)
    unless array_of_customers == []
        puts "Currently serving #{array_of_customers[0]}."
        array_of_customers.shift
    else
        puts "There is nobody waiting to be served!"
    end
end

now_serving(katz_deli)