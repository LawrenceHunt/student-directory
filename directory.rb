def print_header
  puts "The Students of my cohort at Makers Academy"
  puts "-----------------"
end


def input_students
  puts "Please enter a student name."
  puts "To finish, just hit return twice"

  #create an empty array
students = []

#get the first name
name = gets.chomp

#while the name is not empty, repeat this code
while !name.empty? do

puts "Hobby?"
hobby = gets.chomp

puts "Country of Origin?"
country = gets.chomp

puts "Height?"
height = gets.chomp


#add the student hash to the array
students << {name: name, cohort: :november, hobby: hobby, country: country, height: height}
puts "Now we have #{students.count} students. Now enter another name, or hit enter twice to end."
name = gets.chomp
end
students
end


def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end


def print(students)
  n = 0
  while n <= students.length
    if(students[n][:name][0].downcase == "a" && students[n][:name].length <= 12)
    puts "#{n+1}. #{students[n][:name]} (#{students[n][:cohort]} cohort). Hobby: #{students[n][:hobby]}. Country: #{students[n][:country]}. Height: #{students[n][:height]}."
    n += 1
    end
  end
end



students = input_students
print_header
print(students)
print_footer(students)
