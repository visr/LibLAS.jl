# Globally Unique Identifier

function create(::Type{LASGuid})
    ccall((:LASGuid_Create,liblas),LASGuid,())
end

function create(::Type{LASGuid}, string::String)
    ccall((:LASGuid_CreateFromString,liblas),LASGuid,(Ptr{Uint8},),string)
end

function destroy(hId::LASGuid)
    ccall((:LASGuid_Destroy,liblas),Void,(LASGuid,),hId)
end

function equals(hId1::LASGuid,hId2::LASGuid)
    ccall((:LASGuid_Equals,liblas),Cint,(LASGuid,LASGuid),hId1,hId2)
end

function convert(::Type{String},hId::LASGuid)
    str = ccall((:LASGuid_AsString,liblas),Ptr{Uint8},(LASGuid,),hId)
    bytestring(str)
end
