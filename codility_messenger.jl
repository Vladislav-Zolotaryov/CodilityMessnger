using Test


function sorty(s::String, a::Vector{Int})::String
    result = Char[]
    push!(result, s[1])
    next = a[1] + 1
    for _ in a
        str = (s[next])
        push!(result, str)
        next = a[next] + 1
        if (next == 1) 
            break
        end
    end
    return join(result)
end


s = "cdeo"
a = [3, 2, 0, 1]
@test sorty(s, a) == "code"


s = "cdeenetpi"
a = [5, 2, 0, 1, 6, 4, 8, 3, 7]
@test sorty(s, a) == "centipede"


s = "bytdag"
a = [4, 3, 0, 1, 2, 5]
@test sorty(s, a) == "bat"