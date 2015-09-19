# Globally Unique Identifier

function create(::Type{LASGuid})
    ccall((:LASGuid_Create,liblas),LASGuid,())
end

function create(::Type{LASGuid}, string::AbstractString)
    ccall((:LASGuid_CreateFromString,liblas),LASGuid,(Ptr{UInt8},),string)
end

function destroy(hId::LASGuid)
    ccall((:LASGuid_Destroy,liblas),Void,(LASGuid,),hId)
end

function equals(hId1::LASGuid,hId2::LASGuid)
    ccall((:LASGuid_Equals,liblas),Cint,(LASGuid,LASGuid),hId1,hId2)
end

function convert(::Type{AbstractString},hId::LASGuid)
    str = ccall((:LASGuid_AsString,liblas),Ptr{UInt8},(LASGuid,),hId)
    bytestring(str)
end
