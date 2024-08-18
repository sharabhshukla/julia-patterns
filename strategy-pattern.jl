abstract type Animal end


struct Dog <: Animal
    name::String
    vocal::String
end

struct Cat <: Animal
    name::String
    vocal::String
end

function create_animal(animal::Symbol, name::String, vocal::String)
    if animal == :dog
        @info "Creating a dog"
        return Dog(name, vocal)
    elseif animal == :cat
        @info "Creating a cat"
        return Cat(name, vocal)
    else
        throw(ArgumentError("Unknown animal"))
    end
end


dog = create_animal(:dog, "Rex", "Woof")
cat = create_animal(:cat, "Whiskers", "Meow")