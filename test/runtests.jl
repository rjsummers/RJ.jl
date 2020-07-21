using Microwaves
using Test

@testset "Test S-Parameter Creation" begin

    freq = exp10.(2.0:0.1:9.0)
    Sp = Networks.SParameters(fill(complex(1.0,0.5), (2,2,length(freq))), freq)
    @test Sp.f == freq

end
