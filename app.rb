def substring(string , dictionary)
    #to make case insensitive
    string.downcase!
    #returns the available substrings from the string
    scanned_array = dictionary.map { |str| string.scan str}
    scanned_array.flatten!
    # return scanned string into an array
    result = Hash.new(0)
    scanned_array.each { |str| result[str] += 1 }
    p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"
substring(string, dictionary)