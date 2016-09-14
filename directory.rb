@students = []

def interactive_menu
  print_menu
  process(gets.chomp)
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save data to students.csv"
  puts "4. Load data from students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def show_students
  print_header
  print_students_list
  print_footer
  interactive_menu
end

def print_header
  puts "The Students of my cohort at Makers Academy"
  puts "-----------------"
end


def input_students
  puts "Please enter a student name.".center(60)
  puts "To finish, just hit return twice".center(60)

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

@students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
puts "Now we have #{@students.count} students. Now enter another name, or hit enter twice to end.".center(60)
name = gets.chomp
end
@students
interactive_menu
end


def print_footer
    if @students.length == 1
      puts "Overall, we have #{@students.count} great student.".center(60)
    else puts "Overall, we have #{@students.count} great students.".center(60)
    end
end


def print_students_list
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort). Hobby: #{student[:hobby]}. Country: #{student[n][:country]}. Height: #{student[:height]}.".center(60)
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(", ")
    file.puts csv_line
  end
  file.close
  interactive_menu
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(", ")
  @students << {name: name, cohort: cohort.to_sym}
end
file.close
interactive_menu
end

interactive_menu
