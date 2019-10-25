
total = {"Mike" => 10, "Joe" => 11, "Carl" => 20}
grandtotal = total.sum{ |k, v| v } # k is key, v is value
puts total.length   # result is 3
puts grandtotal     # sum is 41 