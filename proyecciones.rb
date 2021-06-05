data = open("ventas_base.db").read.split(".")
print data
puts
array = []

data.map!{|e| e.to_i}

def simulacion(array, aum1, aum2)
    sem1 = array[0..5]
    sem2 = array[6..11]

    (sem1 * aum1 + sem2 * aum2).round(2)
end

puts simulacion(data, 1.1, 1)
puts simulacion(data, 1, 1.2)

output = File.open("resultado.data", "w")

output.write("#(simulacion"))