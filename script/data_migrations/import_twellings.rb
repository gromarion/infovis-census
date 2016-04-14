#!bin/rails r
require 'csv'

file_name = ARGV[0]
twellings_created = 0
twellings_already_created = 0

CSV.open(file_name, 'r').each_with_index do |row, index|
  next if index == 0

  values = row.first.split(';').map(&:to_i)

  attributes = {
    vivienda_id: values[0],
    radio_id: values[1],
    tipvv: values[2],
    v01: values[3],
    v02: values[4],
    v00: values[5],
    urp: values[6],
    incalserv: values[7],
    inmat: values[8],
    muni: values[9],
    local: values[10],
    incalcons: values[11],
    tothog: values[12]
  }

  twelling = Twelling.find_by(vivienda_id: values[0], radio_id: values[1])

  if twelling
    puts "Twelling Already created with attributes #{attributes}"
    twellings_already_created += 1
    next
  end

  puts "Creating Twelling with attributes #{attributes}..."
  Twelling.create(attributes)
  twellings_created += 1
  puts "DONE!"
end

puts "RESULTS:\n========"
puts "Twellings created: #{homes_created}"
puts "Twellings already created: #{homes_already_created}"
puts "------------"
puts "Total: #{twellings_created + twellings_already_created}"
