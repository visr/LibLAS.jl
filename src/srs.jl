# Spatial Reference System

function create(::Type{LASSRS})
    ccall((:LASSRS_Create,liblas),LASSRS,())
end

function gtif(hSRS::LASSRS)
    ccall((:LASSRS_GetGTIF,liblas),Ptr{Void},(LASSRS,),hSRS)
end

function gtif!(hSRS::LASSRS,pgtiff::Ptr{Void},ptiff::Ptr{Void})
    ccall((:LASSRS_SetGTIF,liblas),LASError,(LASSRS,Ptr{Void},Ptr{Void}),hSRS,pgtiff,ptiff)
end

function wkt(hSRS::LASSRS)
    ccall((:LASSRS_GetWKT,liblas),Ptr{UInt8},(LASSRS,),hSRS)
end

function wkt_compound_ok(hSRS::LASSRS)
    ccall((:LASSRS_GetWKT_CompoundOK,liblas),Ptr{UInt8},(LASSRS,),hSRS)
end

function wkt!(hSRS::LASSRS,value::Ptr{UInt8})
    ccall((:LASSRS_SetWKT,liblas),LASError,(LASSRS,Ptr{UInt8}),hSRS,value)
end

function from_userinput!(hSRS::LASSRS,value::Ptr{UInt8})
    ccall((:LASSRS_SetFromUserInput,liblas),LASError,(LASSRS,Ptr{UInt8}),hSRS,value)
end

function proj4(hSRS::LASSRS)
    ccall((:LASSRS_GetProj4,liblas),Ptr{UInt8},(LASSRS,),hSRS)
end

function proj4!(hSRS::LASSRS,value::Ptr{UInt8})
    ccall((:LASSRS_SetProj4,liblas),LASError,(LASSRS,Ptr{UInt8}),hSRS,value)
end

function vertical_cs!(hSRS::LASSRS,verticalCSType::Cint,citation::Ptr{UInt8},verticalDatum::Cint,verticalUnits::Cint)
    ccall((:LASSRS_SetVerticalCS,liblas),LASError,(LASSRS,Cint,Ptr{UInt8},Cint,Cint),hSRS,verticalCSType,citation,verticalDatum,verticalUnits)
end

function destroy(hSRS::LASSRS)
    ccall((:LASSRS_Destroy,liblas),Void,(LASSRS,),hSRS)
end

function vlr(hSRS::LASSRS,i::UInt32)
    ccall((:LASSRS_GetVLR,liblas),LASVLR,(LASSRS,UInt32),hSRS,i)
end

function vlrcount(hSRS::LASSRS)
    ccall((:LASSRS_GetVLRCount,liblas),UInt32,(LASSRS,),hSRS)
end
