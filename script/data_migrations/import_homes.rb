#!bin/rails r
require 'csv'

file_name = ARGV[0]
homes_created = 0
homes_already_created = 0

CSV.open(file_name, 'r').each_with_index do |row, index|
  next if index == 0

  values = row.first.split(';').map(&:to_i)

  attributes = {
    hogar_id: values[0],
    vivienda_id: values[1],
    nhog: values[2],
    h05: values[3],
    h06: values[4],
    h07: values[5],
    h08: values[6],
    h09: values[7],
    h10: values[8],
    h11: values[9],
    h12: values[10],
    h13: values[11],
    h14: values[12],
    h15: values[13],
    h16: values[14],
    h19a: values[15],
    h19b: values[16],
    h19c: values[17],
    h19d: values[18],
    prop: values[19],
    indhac: values[20],
    totpers: values[21],
    algunbi: values[22]
  }

  home = Home.find_by(hogar_id: values[0], vivienda_id: values[1])

  if home
    puts "Home Already created with attributes #{attributes}"
    homes_already_created += 1
    next
  end

  puts "Creating Home with attributes #{attributes}..."
  Home.create(attributes)
  homes_created += 1
  puts "DONE!"
end

puts "RESULTS:\n========"
puts "Homes created: #{homes_created}"
puts "Homes already created: #{homes_already_created}"
puts "------------"
puts "Total: #{homes_created + homes_already_created}"
