data = File.open("nota.data").read).split("\n")
data.map![|x| x.split(".")]

def nota mas alta(arr)
    [arr[0]. arr.map{|e| e.to_i}.max]
end

pp nota_mas_alta(data[1])