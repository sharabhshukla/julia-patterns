abstract type FileParser end
abstract type FileTypes end

struct CSVParser <: FileTypes
    file::String
end

struct JSONParser <: FileTypes
    file::String
end

struct XMLParser <: FileTypes
    file::String
end

struct JSONFile <: FileTypes
    file::String
end


function parse_file(filetype::CSVParser)
    println("Parsing CSV file: ", filetype.file)
end

function parse_file(filetype::JSONParser)
    println("Parsing JSON file: ", filetype.file)
end

function parse_file(filetype::XMLParser)
    println("Parsing XML file: ", filetype.file)
end

function parse_file(filetype::JSONFile)
    println("Parsing JSON file: ", filetype.file)
end


# Create a csv parser file object
csv_file = CSVParser("data.csv")

parse_file(csv_file)

xml_file = XMLParser("data.xml")


parse_file(xml_file)

