# Julia wrapper for header: liblas.h
# Most functions have been moved to separate files,
# this file contains the types and miscellaneous functions.
# Originally generated using Clang.jl

const liblas = "liblas_c"


type LASWriterS end
const LASWriter = Ptr{LASWriterS}

type LASReaderS end
const LASReader = Ptr{LASReaderS}

type LASPointS end
const LASPoint = Ptr{LASPointS}

type LASHeaderS end
const LASHeader = Ptr{LASHeaderS}

type LASGuidS end
const LASGuid = Ptr{LASGuidS}

type LASVLRS end
const LASVLR = Ptr{LASVLRS}

type LASColorS end
const LASColor = Ptr{LASColorS}

type LASSRSS end
const LASSRS = Ptr{LASSRSS}

type LASSchemaS end
const LASSchema = Ptr{LASSchemaS}


# begin enum LASError
const LASError = UInt32
const LE_None = UInt32(0)
const LE_Debug = UInt32(1)
const LE_Warning = UInt32(2)
const LE_Failure = UInt32(3)
const LE_Fatal = UInt32(4)
# end enum LASError


# LAS

function liblas_version()
    version = ccall((:LAS_GetVersion,liblas),Ptr{UInt8},())
    Base.convert(VersionNumber, unsafe_string(version))
end

function liblas_fullversion()
    version = ccall((:LAS_GetFullVersion,liblas),Ptr{UInt8},())
    unsafe_string(version)
end

function liblas_islibgeotiffenabled()
    ccall((:LAS_IsLibGeoTIFFEnabled,liblas),Cint,())
end

function liblas_isgdalenabled()
    ccall((:LAS_IsGDALEnabled,liblas),Cint,())
end

function liblas_islibspatialindexenabled()
    ccall((:LAS_IsLibSpatialIndexEnabled,liblas),Cint,())
end

# LASString

function lasstring_free(string::Ptr{UInt8})
    ccall((:LASString_Free,liblas),Void,(Ptr{UInt8},),string)
end

# LASSchema

function bytesize(hFormat::LASSchema)
    ccall((:LASSchema_GetByteSize,liblas),UInt32,(LASSchema,),hFormat)
end

function base_bytesize(hFormat::LASSchema)
    ccall((:LASSchema_GetBaseByteSize,liblas),UInt32,(LASSchema,),hFormat)
end

function destroy(hFormat::LASSchema)
    ccall((:LASSchema_Destroy,liblas),Void,(LASSchema,),hFormat)
end
