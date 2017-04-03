# LibLAS

Julia wrapper for [LibLAS](http://www.liblas.org/), a library for reading and writing the LAS LiDAR format.

[![Build Status](https://travis-ci.org/visr/LibLAS.jl.svg?branch=master)](https://travis-ci.org/visr/LibLAS.jl)

## Install

```julia
Pkg.clone("https://github.com/visr/LibLAS.jl.git")
```

You need to have the liblas_c shared library in your path, this is currently not added to the package.
See the [LibLAS website](http://www.liblas.org/download.html) for how to obtain it.

## Use

```julia
using LibLAS

filename = "libLAS_1.2.las"

reader = LibLAS.create(LASReader, filename)
header = LibLAS.lasheader(reader)

n = LibLAS.pointrecordscount(header)
bounds = [LibLAS.min_x(header), LibLAS.min_y(header), LibLAS.min_z(header),
          LibLAS.max_x(header), LibLAS.max_y(header), LibLAS.max_z(header)]

x_sum = 0.0
y_sum = 0.0
z_sum = 0.0

# looping over all points to find the centroid of the point cloud
for i = 1:n
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

# jumping to a specific point
p = LibLAS.point_at(reader, 101)
intens = LibLAS.intensity(p)
```

For more documentation on specific functions see the [LibLAS C API reference](http://www.liblas.org/doxygen/liblas_8h.html).
Function names are adapted to follow Julian naming conventions. They have not all been tested. Please open an issue/PR if you find any mistakes.
