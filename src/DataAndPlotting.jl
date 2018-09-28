module DataAndPlotting

# Wave parameters
const ki = 3
const kj = 3

# Grid size
const ni = 30
const nj = 20

# i ranges from 1...ni
# x ranges from 0...1
function index2coord(i, ni)
     @assert ni > 1
     @assert 1 <= i <= ni
     (i-1) / (ni -1)
end
    
# Set up standing wave
export initialize
function initialize()
    arr= zeros(Float64, ni, nj)
    for j in 1:nj, i in 1:ni
         x= index2coord(i, ni)
         y= index2coord(j, nj)
         arr[i,j]= sin(2 * pi * ki * x) * sin(2 * pi * kj * y)
    end
    arr
end


end # module
