def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end


def print_header
  puts "The Students of my cohort at Makers Academy"
  puts "-----------------"
end


def input_students
  puts "Please enter a student name.".center(60)
  puts "To finish, just hit return twice".center(60)

#create an empty array
students = []

#get the first name
name = gets.chomp

#while the name is not empty, repeat this code
while !name.empty? do

puts "Cohort?".center(60)
cohort = gets.chomp
if cohort.empty?
  cohort = "November"
end


puts "Hobby?".center(60)
hobby = gets.chomp
if hobby.empty?
  hobby = "Baseball"
end

puts "Country of Origin?".center(60)
country = gets.chomp
if country.empty?
  country = "England"
end

puts "Height?".center(60)
height = gets.chomp
if height.empty?
  height = 160
end


#add the student hash to the array
students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
puts "Now we have #{students.count} students. Now enter another name, or hit enter twice to end."
name = gets.chomp
end
students
end


def print_footer(students)
  if students.length == 1
  puts "Overall, we have #{students.count} great student.".center(60)
else puts "Overall, we have #{students.count} great students.".center(60)
end
end


def print(students)
  n = 0
  while n <= students.length
    if(students[n][:name][0].downcase == "a" && students[n][:name].length <= 12)
    puts "#{n+1}. #{students[n][:name]} (#{students[n][:cohort]} cohort). Hobby: #{students[n][:hobby]}. Country: #{students[n][:country]}. Height: #{students[n][:height]}.".center(60)
    n += 1
    end
  end
end


interactive_menu
