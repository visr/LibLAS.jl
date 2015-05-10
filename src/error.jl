function reset(::Type{LASError})
    ccall((:LASError_Reset,liblas),Void,())
end

function pop(::Type{LASError})
    ccall((:LASError_Pop,liblas),Void,())
end

function last_error_num(::Type{LASError})
    ccall((:LASError_GetLastErrorNum,liblas),LASError,())
end

function last_error_msg(::Type{LASError})
    ccall((:LASError_GetLastErrorMsg,liblas),Ptr{Uint8},())
end

function last_error_method(::Type{LASError})
    ccall((:LASError_GetLastErrorMethod,liblas),Ptr{Uint8},())
end

function errorcount(::Type{LASError})
    ccall((:LASError_GetErrorCount,liblas),Cint,())
end

function print(::Type{LASError},message::Ptr{Uint8})
    ccall((:LASError_Print,liblas),Void,(Ptr{Uint8},),message)
end
