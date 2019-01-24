
using Test
#import CTPSS.sampleSize

    #@testset "Test" begin
        #vals = CTPSS.ParamSet("mean","ea","one",0.05,0.2,1.0,1.5,2,1)
        #@test ceil(CTPSS.sampleSizeParam(vals)) == 32
        #@test ceil(sampleSize(param="mean", type="ea", group="one", alpha=0.05, beta=0.2, sd=1, a=1.5, b=2, k=1)) == 32
        #@test ceil(sampleSize(param="mean", type="ei", group="one", alpha=0.05, beta=0.2, sd=0.1, diff=0.05, a=2, b=2, k=1)) == 35
    #end

    '''
                tfn

    R Project
    1, 2 = 0.07846821
    2, 1 = 0.01111628
    0, 10 = 0.2341222
    0, 100 = 0.2342008
    20, 20 = 0
    15, 15 =  1.835484e-51
    -10,15 = 3.809928e-24
    -0.1, 150 = 0.2382264
    -5, Inf = Error
    Inf, Inf = 0
    1.0E-5, -1 = -0.125
    1.0E-10, -10 = -0.2341222
    -Inf, Inf = 0

                owensT

julia> CTPSS.owensT(1,2)
0.07846818535354307
> OwensT (1,2)
[1] 0.07846819

julia> CTPSS.owensT(2,2)
0.011374908790171596
> OwensT (2,2)
[1] 0.01137491

julia> CTPSS.owensT(20,2)
0.0
> OwensT (20,2)
[1] 0

julia> CTPSS.owensT(-0.01,2)
0.17619226214926362
> OwensT (-0.01,2)
[1] 0.1761923

julia> CTPSS.owensT(-0.01,20)
0.24189025023372523
> OwensT (-0.01,20)
[1] 0.2418903

julia> CTPSS.owensT(-0.01,200)
0.24798838649952515
> OwensT (-0.01,200)
[1] 0.2479884

julia> CTPSS.owensT(-1.0E-10,200)
0.24920423175674383
> OwensT (-1.0E-10,200)
[1] 0.2492042

julia> CTPSS.owensT(5,30)
1.4332578601727874e-7
> OwensT (5,30)
[1] 1.433258e-07

julia> CTPSS.owensT(-6, -40)
-4.93293822518849e-10
> OwensT (-6,-40)
[1] -4.932938e-10

julia> CTPSS.owensT(-11, 57)
9.553297872493378e-29
> OwensT (-11, 57)
[1] 9.553298e-29

julia> CTPSS.owensT(11, 57)
0.0
> OwensT (11, 57)
[1] 0
 ---------------------------------------------------

            owensQo

> OwensQOwen (nu=2, t=1, delta=0.5, a=0, b=0.2)
[1] 0.006781741
julia> CTPSS.owensQo(2,1,0.5,0.2;a=0)
0.006781740849793494

> OwensQOwen (nu=3, t=1, delta=0.5, a=0, b=0.2)
[1] 0.0007140675
julia> CTPSS.owensQo(3,1,0.5,0.2;a=0)
0.000714067462717051

> OwensQOwen (nu=4, t=1, delta=0.5, a=0, b=0.2)
[1] 6.655454e-05
julia> CTPSS.owensQo(4,1,0.5,0.2;a=0)
6.655453722681504e-5

> OwensQOwen (nu=3, t=5, delta=0.5, a=0, b=0.2)
[1] 0.0009950627
julia> CTPSS.owensQo(3,5,0.5,0.2;a=0)
0.000995062742377012

> OwensQOwen (nu=3, t=5, delta=0.7, a=0, b=0.2)
[1] 0.0008309063
julia> CTPSS.owensQo(3,5,0.7,0.2;a=0)
0.0008309062844733539

> OwensQOwen (nu=3, t=5, delta=0.7, a=0, b=0.5)
[1] 0.01978927
julia> CTPSS.owensQo(3,5,0.7,0.5;a=0)
0.01978927435750341

> OwensQOwen (nu=3, t=5, delta=0.7, a=0, b=0.75)
[1] 0.0755257
julia> CTPSS.owensQo(3,5,0.7,0.75;a=0)
0.07552570026416983

> OwensQOwen (nu=3, t=5, delta=0.9, a=0, b=0.75)
[1] 0.07026852
julia> CTPSS.owensQo(3,5,0.9,0.75;a=0)
0.07026852130848105

> OwensQOwen (nu=3, t=20, delta=0.9, a=0, b=0.75)
[1] 0.09443499
julia> CTPSS.owensQo(3,20,0.9,0.75;a=0)
0.09443499306279901
------------------------------------------------------
> OwensQOwen (nu=4, t=20, delta=0.9, a=0, b=0.75)
[1] 0.03276002
julia> CTPSS.owensQo(4,20,0.9,0.75;a=0)
0.032760015173071005

> OwensQOwen (nu=5, t=20, delta=0.9, a=0, b=0.75)
[1] 0.01032483
julia> CTPSS.owensQo(5,20,0.9,0.75;a=0)
0.010324834612567557

> OwensQOwen (nu=6, t=20, delta=0.9, a=0, b=0.75)
[1] 0.003003187
julia> CTPSS.owensQo(6,20,0.9,0.75;a=0)
0.0030031866986452715

> OwensQOwen (nu=9, t=1, delta=0.5, a=0, b=0.2)
[1] 2.186626e-11
julia> CTPSS.owensQo(9,1,0.5,0.2;a=0)
2.1866258803626692e-11

> OwensQOwen (nu=9, t=-100, delta=2, a=0, b=0.01)
[1] 1.330372e-10
julia> CTPSS.owensQo(9,-100,2,0.01;a=0)
1.3303723002248448e-10


nu = 5
t = 1
delta = 0.5
a = 0
b = 0.2

nu <- 5
t <- 1
delta <- 0.5
a <- 0
b <- 0.2

-------------------------------------------------------------------

julia> CTPSS.owensTint2(1, 3, 20, 3)
0.4839414490382867
> .Q.integrand (x=1, nu=3, t=20, delta=3)
[1] 0.4839414



nu <- 4
t <- 100
delta <- 40

> OwensQ (nu=4, t=100, delta=40, a=0, b=Inf)
[1] 0.9584071
julia> CTPSS.owensQ(4,100,40,0,Inf)
0.9584070994785919

> OwensQ (nu=4, t=100, delta=30, a=0, b=Inf)
[1] 0.9855395
julia> CTPSS.owensQ(4,100,30,0,Inf)
0.9855394838428024

> OwensQ (nu=4, t=100, delta=40, a=0, b=0.8)
[1] 0.001429002
julia> CTPSS.owensQ(4,100,40,0,0.8)
0.0014290018033243632

> OwensQ (nu=4, t=100, delta=30, a=0, b=0.8)
[1] 0.02702275
julia> CTPSS.owensQ(4,100,30,0,0.8)
0.027022754905530633

> .power.TOST (alpha=0.05, ltheta1=0.1, ltheta2=0.4, diffm=0.05, sem=0.11, df=23)
[1] 0.00147511
julia> CTPSS.powerTOSTOwenQ(0.05,0.1,0.4,0.05,0.11,23)
0.0014751101803128774

alpha <- 0.05
ltheta1 <- 0.1
ltheta2 <- 0.4
diffm <- 0.05
sem <- 0.11
df <- 23

alpha = 0.05
ltheta1 = 0.1
ltheta2 = 0.4
diffm = 0.05
sem = 0.11
df = 23

julia> CTPSS.approxPowerTOST(0.05,0.4,0.9,0.05,0.11,23)
1.0769643498109716e-6
> .approx.power.TOST (alpha=0.05, ltheta1=0.4, ltheta2=0.9, diffm=0.05, sem=0.11, df=23)
[1] 1.076964e-06

julia> CTPSS.approxPowerTOST(0.05,0.1,0.9,0.05,0.11,23)
0.018475943647805915
> .approx.power.TOST (alpha=0.05, ltheta1=0.1, ltheta2=0.9, diffm=0.05, sem=0.11, df=23)
[1] 0.01847594

> .approx.power.TOST (alpha=0.05, ltheta1=0.1, ltheta2=1.0, diffm=0.5, sem=0.2, df=1000)
[1] 0.4415495
julia> CTPSS.approxPowerTOST(0.05,0.1,1.0,0.5,0.2,1000)
0.4415495199129315

julia> CTPSS.approxPowerTOST(0.05,1.0,1.0,0.5,0.2,100)
0
> .approx.power.TOST (alpha=0.05, ltheta1=1.0, ltheta2=1.0, diffm=0.5, sem=0.2, df=100)
[1] 0

> .approx2.power.TOST (alpha=0.05, ltheta1=0.1, ltheta2=1.0, diffm=0.5, sem=0.2, df=1000)
[1] 0.4413917
> .approx2.power.TOST (alpha=0.05, ltheta1=1.0, ltheta2=1.0, diffm=0.5, sem=0.2, df=100)
[1] 0

julia> CTPSS.approx2PowerTOST(0.05,1.0,1.0,0.5,0.2,100)
0
julia> CTPSS.approx2PowerTOST(0.05,0.1,1.0,0.5,0.2,1000)
0.4413916615556126

> power.TOST(alpha=0.05, logscale=TRUE, theta1=0.8, theta2=1.25, theta0=0.95, CV=0.2, n=20, design="2x2", method="owenq")
[1] 0.8346802
julia> CTPSS.powerTOST(alpha=0.05, logscale=true, theta1=0.8, theta2=1.25, theta0=0.95, cv=0.2, n=20, design="2x2", method="owenq")
0.8346801908570283

> power.TOST(alpha=0.05, logscale=TRUE, theta1=0.8, theta2=1.25, theta0=0.95, CV=0.2, n=100, design="2x2", method="owenq")
[1] 0.9999957
julia> CTPSS.powerTOST(alpha=0.05, logscale=true, theta1=0.8, theta2=1.25, theta0=0.95, cv=0.2, n=100, design="2x2", method="owenq")
0.9999956683139025

> power.TOST(alpha=0.05, logscale=TRUE, theta1=0.8, theta2=1.25, theta0=0.95, CV=0.2, n=10, design="2x2", method="nct")
[1] 0.4316618
julia> CTPSS.powerTOST(alpha=0.05, logscale=true, theta1=0.8, theta2=1.25, theta0=0.95, cv=0.2, n=10, design="2x2", method="nct")
0.4316618202249526

> power.TOST(alpha=0.05, logscale=FALSE, theta1=-0.1, theta2=0.1, theta0=0, CV=0.14, n=30, design="2x2", method="nct")
[1] 0.7079951
julia> CTPSS.powerTOST(alpha=0.05, logscale=false, theta1=-0.1, theta2=0.1, theta0=0, cv=0.14, n=30, design="2x2", method="nct")
0.7079951477313315

> power.TOST(alpha=0.1, logscale=FALSE, theta1=-0.1, theta2=0.1, theta0=0, CV=0.14, n=21, design="2x2", method="shifted")
Unbalanced design. n(i)=11/10 assumed.
[1] 0.6626132
julia> CTPSS.powerTOST(alpha=0.1, logscale=false, theta1=-0.1, theta2=0.1, theta0=0, cv=0.14, n=21, design="2x2", method="shifted")
0.6626131671398885


    '''
