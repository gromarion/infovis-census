#!bin/rails r
require 'csv'

file_name = ARGV[0]
people_created = 0
people_already_created = 0

CSV.open(file_name, 'r').each_with_index do |row, index|
  next if index == 0

  values = row.first.split(';').map(&:to_i)

  attributes = {
    person_id: values[0],
    home_id: values[1],
    p01: values[2],
    p02: values[3],
    p03: values[4],
    p05: values[5],
    p06: values[6],
    p07: values[7],
    p12: values[8],
    edadgru: values[9],
    edadqui: values[10],
    p08: values[11],
    p09: values[12],
    p10: values[13],
    condact: values[14]
  }
  person = Person.find_by(person_id: values[0], home_id: values[1])
  
  if person
    puts "Person Already created with attributes #{attributes}"
    people_already_created += 1
    next
  end

  puts "Creating Person with attributes #{attributes}..."
  Person.create(attributes)
  people_created += 1
  puts "DONE!"
end

puts "RESULTS:\n========"
puts "People created: #{people_created}"
puts "People already created: #{people_already_created}"
puts "------------"
puts "Total: #{people_created + people_already_created}"
