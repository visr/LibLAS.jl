using LibLAS
using Base.Test

info("Using LibLAS version $(liblas_version())")

# testfile downloaded from http://www.liblas.org/samples/
filename = "libLAS_1.2.las"

reader = create(LASReader, filename)
header = lasheader(reader)

n = pointrecordscount(header)
@test n == 497536

bounds = [min_x(header), min_y(header), min_z(header),
          max_x(header), max_y(header), max_z(header)]
@test bounds == [1440000.0, 375000.03, 832.1800000000001,
                 1444999.96, 379999.99, 972.6700000000001]

x_sum = 0.0
y_sum = 0.0
z_sum = 0.0

# looping over all points
@time for i = 1:n
    p = nextpoint(reader)
    x = xcoord(p)
    y = ycoord(p)
    z = zcoord(p)

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
p = point_at(reader, 101)
@test intensity(p) == 244
