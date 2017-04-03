using LibLAS
using Base.Test

info("Using LibLAS version $(LibLAS.liblas_version())")

# testfile downloaded from http://www.liblas.org/samples/
filename = "libLAS_1.2.las"

reader = LibLAS.create(LibLAS.LASReader, filename)
header = LibLAS.lasheader(reader)

n = LibLAS.pointrecordscount(header)
@test n == 497536

bounds = [LibLAS.min_x(header), LibLAS.min_y(header), LibLAS.min_z(header),
          LibLAS.max_x(header), LibLAS.max_y(header), LibLAS.max_z(header)]
@test bounds == [1440000.0, 375000.03, 832.1800000000001,
                 1444999.96, 379999.99, 972.6700000000001]

x_sum = 0.0
y_sum = 0.0
z_sum = 0.0

# looping over all points
@time for i = 1:n
    p = LibLAS.nextpoint(reader)
    x = LibLAS.xcoord(p)
    y = LibLAS.ycoord(p)
    z = LibLAS.zcoord(p)

    x_sum += x
    y_sum += y
    z_sum += z
end

x_avg = x_sum / n
y_avg = y_sum / n
z_avg = z_sum / n

@test_approx_eq x_avg 1442694.2739025319
@test_approx_eq y_avg 377449.24373880465
@test_approx_eq z_avg 861.60254888088491

# jumping to a specific point
p = LibLAS.point_at(reader, 101)
@test LibLAS.intensity(p) == 244
