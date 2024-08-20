abstract type FileParser end
abstract type FileTypes end

struct CSVParser <: FileType
    file::String
end

struct JSONParser <: FileType
    file::String
end

struct XMLParser <: FileType
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

