# Variable Length Records

function create(::Type{LASVLR})
    ccall((:LASVLR_Create,liblas),LASVLR,())
end

function destroy(hVLR::LASVLR)
    ccall((:LASVLR_Destroy,liblas),Void,(LASVLR,),hVLR)
end

function userid(hVLR::LASVLR)
    ccall((:LASVLR_GetUserId,liblas),Ptr{UInt8},(LASVLR,),hVLR)
end

function userid!(hVLR::LASVLR,value::Ptr{UInt8})
    ccall((:LASVLR_SetUserId,liblas),LASError,(LASVLR,Ptr{UInt8}),hVLR,value)
end

function description(hVLR::LASVLR)
    ccall((:LASVLR_GetDescription,liblas),Ptr{UInt8},(LASVLR,),hVLR)
end

function description!(hVLR::LASVLR,value::Ptr{UInt8})
    ccall((:LASVLR_SetDescription,liblas),LASError,(LASVLR,Ptr{UInt8}),hVLR,value)
end

function recordlength(hVLR::LASVLR)
    ccall((:LASVLR_GetRecordLength,liblas),UInt16,(LASVLR,),hVLR)
end

function recordlength!(hVLR::LASVLR,value::UInt16)
    ccall((:LASVLR_SetRecordLength,liblas),LASError,(LASVLR,UInt16),hVLR,value)
end

function record_id(hVLR::LASVLR)
    ccall((:LASVLR_GetRecordId,liblas),UInt16,(LASVLR,),hVLR)
end

function record_id!(hVLR::LASVLR,value::UInt16)
    ccall((:LASVLR_SetRecordId,liblas),LASError,(LASVLR,UInt16),hVLR,value)
end

function reserved(hVLR::LASVLR)
    ccall((:LASVLR_GetReserved,liblas),UInt16,(LASVLR,),hVLR)
end

function reserved!(hVLR::LASVLR,value::UInt16)
    ccall((:LASVLR_SetReserved,liblas),LASError,(LASVLR,UInt16),hVLR,value)
end

function data(hVLR::LASVLR,data::Ptr{Cuchar})
    ccall((:LASVLR_GetData,liblas),LASError,(LASVLR,Ptr{Cuchar}),hVLR,data)
end

function data!(hVLR::LASVLR,data::Ptr{Cuchar},length::UInt16)
    ccall((:LASVLR_SetData,liblas),LASError,(LASVLR,Ptr{Cuchar},UInt16),hVLR,data,length)
end
