abstract type OptimizationStrategy end
abstract type Model end


function optimize!(strategy::OptimizationStrategy, model::Model)
    println("Optimizing model with strategy: ", strategy)
end


struct GradientDescent <: OptimizationStrategy end
struct DummyModel <: Model end

optimize!(GradientDescent(), DummyModel())