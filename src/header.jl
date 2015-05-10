
function create(::Type{LASHeader})
    ccall((:LASHeader_Create,liblas),LASHeader,())
end

function copy(hHeader::LASHeader)
    ccall((:LASHeader_Copy,liblas),LASHeader,(LASHeader,),hHeader)
end

function destroy(hHeader::LASHeader)
    ccall((:LASHeader_Destroy,liblas),Void,(LASHeader,),hHeader)
end

function filesignature(hHeader::LASHeader)
    ccall((:LASHeader_GetFileSignature,liblas),Ptr{Uint8},(LASHeader,),hHeader)
end

function filesourceid(hHeader::LASHeader)
    ccall((:LASHeader_GetFileSourceId,liblas),Uint16,(LASHeader,),hHeader)
end

function filesourceid!(hHeader::LASHeader,value::Uint16)
    ccall((:LASHeader_SetFileSourceId,liblas),LASError,(LASHeader,Uint16),hHeader,value)
end

function projectid(hHeader::LASHeader)
    ccall((:LASHeader_GetProjectId,liblas),Ptr{Uint8},(LASHeader,),hHeader)
end

function projectid!(hHeader::LASHeader,value::Ptr{Uint8})
    ccall((:LASHeader_SetProjectId,liblas),LASError,(LASHeader,Ptr{Uint8}),hHeader,value)
end

function guid(hHeader::LASHeader)
    ccall((:LASHeader_GetGUID,liblas),LASGuid,(LASHeader,),hHeader)
end

function guid!(hHeader::LASHeader,hId::LASGuid)
    ccall((:LASHeader_SetGUID,liblas),LASError,(LASHeader,LASGuid),hHeader,hId)
end

function versionmajor(hHeader::LASHeader)
    ccall((:LASHeader_GetVersionMajor,liblas),Cuchar,(LASHeader,),hHeader)
end

function versionmajor!(hHeader::LASHeader,value::Cuchar)
    ccall((:LASHeader_SetVersionMajor,liblas),LASError,(LASHeader,Cuchar),hHeader,value)
end

function versionminor(hHeader::LASHeader)
    ccall((:LASHeader_GetVersionMinor,liblas),Cuchar,(LASHeader,),hHeader)
end

function versionminor!(hHeader::LASHeader,value::Cuchar)
    ccall((:LASHeader_SetVersionMinor,liblas),LASError,(LASHeader,Cuchar),hHeader,value)
end

function systemid(hHeader::LASHeader)
    ccall((:LASHeader_GetSystemId,liblas),Ptr{Uint8},(LASHeader,),hHeader)
end

function systemid!(hHeader::LASHeader,value::Ptr{Uint8})
    ccall((:LASHeader_SetSystemId,liblas),LASError,(LASHeader,Ptr{Uint8}),hHeader,value)
end

function softwareid(hHeader::LASHeader)
    ccall((:LASHeader_GetSoftwareId,liblas),Ptr{Uint8},(LASHeader,),hHeader)
end

function softwareid!(hHeader::LASHeader,value::Ptr{Uint8})
    ccall((:LASHeader_SetSoftwareId,liblas),LASError,(LASHeader,Ptr{Uint8}),hHeader,value)
end

function reserved(hHeader::LASHeader)
    ccall((:LASHeader_GetReserved,liblas),Uint16,(LASHeader,),hHeader)
end

function reserved!(hHeader::LASHeader,value::Uint16)
    ccall((:LASHeader_SetReserved,liblas),LASError,(LASHeader,Uint16),hHeader,value)
end

function creationdoy(hHeader::LASHeader)
    ccall((:LASHeader_GetCreationDOY,liblas),Uint16,(LASHeader,),hHeader)
end

function creationdoy!(hHeader::LASHeader,value::Uint16)
    ccall((:LASHeader_SetCreationDOY,liblas),LASError,(LASHeader,Uint16),hHeader,value)
end

function creationyear(hHeader::LASHeader)
    ccall((:LASHeader_GetCreationYear,liblas),Uint16,(LASHeader,),hHeader)
end

function creationyear!(hHeader::LASHeader,value::Uint16)
    ccall((:LASHeader_SetCreationYear,liblas),LASError,(LASHeader,Uint16),hHeader,value)
end

function headersize(hHeader::LASHeader)
    ccall((:LASHeader_GetHeaderSize,liblas),Uint16,(LASHeader,),hHeader)
end

function dataoffset(hHeader::LASHeader)
    ccall((:LASHeader_GetDataOffset,liblas),Uint32,(LASHeader,),hHeader)
end

function dataoffset!(hHeader::LASHeader,value::Uint32)
    ccall((:LASHeader_SetDataOffset,liblas),LASError,(LASHeader,Uint32),hHeader,value)
end

function headerpadding(hHeader::LASHeader)
    ccall((:LASHeader_GetHeaderPadding,liblas),Uint32,(LASHeader,),hHeader)
end

function headerpadding!(hHeader::LASHeader,value::Uint32)
    ccall((:LASHeader_SetHeaderPadding,liblas),LASError,(LASHeader,Uint32),hHeader,value)
end

function recordscount(hHeader::LASHeader)
    ccall((:LASHeader_GetRecordsCount,liblas),Uint32,(LASHeader,),hHeader)
end

function datarecordlength(hHeader::LASHeader)
    ccall((:LASHeader_GetDataRecordLength,liblas),Uint16,(LASHeader,),hHeader)
end

function datarecordlength!(hHeader::LASHeader,value::Uint16)
    ccall((:LASHeader_SetDataRecordLength,liblas),LASError,(LASHeader,Uint16),hHeader,value)
end

function dataformatid(hHeader::LASHeader)
    ccall((:LASHeader_GetDataFormatId,liblas),Cuchar,(LASHeader,),hHeader)
end

function dataformatid!(hHeader::LASHeader,value::Cuchar)
    ccall((:LASHeader_SetDataFormatId,liblas),LASError,(LASHeader,Cuchar),hHeader,value)
end

function pointrecordscount(hHeader::LASHeader)
    ccall((:LASHeader_GetPointRecordsCount,liblas),Uint32,(LASHeader,),hHeader)
end

function pointrecordscount!(hHeader::LASHeader,value::Uint32)
    ccall((:LASHeader_SetPointRecordsCount,liblas),LASError,(LASHeader,Uint32),hHeader,value)
end

function pointrecordsbyreturncount(hHeader::LASHeader,index::Cint)
    ccall((:LASHeader_GetPointRecordsByReturnCount,liblas),Uint32,(LASHeader,Cint),hHeader,index)
end

function pointrecordsbyreturncount!(hHeader::LASHeader,index::Cint,value::Uint32)
    ccall((:LASHeader_SetPointRecordsByReturnCount,liblas),LASError,(LASHeader,Cint,Uint32),hHeader,index,value)
end

function scale_x(hHeader::LASHeader)
    ccall((:LASHeader_GetScaleX,liblas),Cdouble,(LASHeader,),hHeader)
end

function scale_y(hHeader::LASHeader)
    ccall((:LASHeader_GetScaleY,liblas),Cdouble,(LASHeader,),hHeader)
end

function scale_z(hHeader::LASHeader)
    ccall((:LASHeader_GetScaleZ,liblas),Cdouble,(LASHeader,),hHeader)
end

function scale!(hHeader::LASHeader,x::Cdouble,y::Cdouble,z::Cdouble)
    ccall((:LASHeader_SetScale,liblas),LASError,(LASHeader,Cdouble,Cdouble,Cdouble),hHeader,x,y,z)
end

function offset_x(hHeader::LASHeader)
    ccall((:LASHeader_GetOffsetX,liblas),Cdouble,(LASHeader,),hHeader)
end

function offset_y(hHeader::LASHeader)
    ccall((:LASHeader_GetOffsetY,liblas),Cdouble,(LASHeader,),hHeader)
end

function offset_z(hHeader::LASHeader)
    ccall((:LASHeader_GetOffsetZ,liblas),Cdouble,(LASHeader,),hHeader)
end

function offset!(hHeader::LASHeader,x::Cdouble,y::Cdouble,z::Cdouble)
    ccall((:LASHeader_SetOffset,liblas),LASError,(LASHeader,Cdouble,Cdouble,Cdouble),hHeader,x,y,z)
end

function min_x(hHeader::LASHeader)
    ccall((:LASHeader_GetMinX,liblas),Cdouble,(LASHeader,),hHeader)
end

function min_y(hHeader::LASHeader)
    ccall((:LASHeader_GetMinY,liblas),Cdouble,(LASHeader,),hHeader)
end

function min_z(hHeader::LASHeader)
    ccall((:LASHeader_GetMinZ,liblas),Cdouble,(LASHeader,),hHeader)
end

function min!(hHeader::LASHeader,x::Cdouble,y::Cdouble,z::Cdouble)
    ccall((:LASHeader_SetMin,liblas),LASError,(LASHeader,Cdouble,Cdouble,Cdouble),hHeader,x,y,z)
end

function max_x(hHeader::LASHeader)
    ccall((:LASHeader_GetMaxX,liblas),Cdouble,(LASHeader,),hHeader)
end

function max_y(hHeader::LASHeader)
    ccall((:LASHeader_GetMaxY,liblas),Cdouble,(LASHeader,),hHeader)
end

function max_z(hHeader::LASHeader)
    ccall((:LASHeader_GetMaxZ,liblas),Cdouble,(LASHeader,),hHeader)
end

function max!(hHeader::LASHeader,x::Cdouble,y::Cdouble,z::Cdouble)
    ccall((:LASHeader_SetMax,liblas),LASError,(LASHeader,Cdouble,Cdouble,Cdouble),hHeader,x,y,z)
end

function vlr(hHeader::LASHeader,i::Uint32)
    ccall((:LASHeader_GetVLR,liblas),LASVLR,(LASHeader,Uint32),hHeader,i)
end

function deletevlr(hHeader::LASHeader,index::Uint32)
    ccall((:LASHeader_DeleteVLR,liblas),LASError,(LASHeader,Uint32),hHeader,index)
end

function addvlr(hHeader::LASHeader,hVLR::LASVLR)
    ccall((:LASHeader_AddVLR,liblas),LASError,(LASHeader,LASVLR),hHeader,hVLR)
end

function xml(hHeader::LASHeader)
    ccall((:LASHeader_GetXML,liblas),Ptr{Uint8},(LASHeader,),hHeader)
end

function schema(hHeader::LASHeader)
    ccall((:LASHeader_GetSchema,liblas),LASSchema,(LASHeader,),hHeader)
end

function schema!(hHeader::LASHeader,hFormat::LASSchema)
    ccall((:LASHeader_SetSchema,liblas),LASError,(LASHeader,LASSchema),hHeader,hFormat)
end

function compressed(hHeader::LASHeader)
    ccall((:LASHeader_Compressed,liblas),Cint,(LASHeader,),hHeader)
end

function compressed!(hHeader::LASHeader,b::Cint)
    ccall((:LASHeader_SetCompressed,liblas),LASError,(LASHeader,Cint),hHeader,b)
end

function srs(hHeader::LASHeader)
    ccall((:LASHeader_GetSRS,liblas),LASSRS,(LASHeader,),hHeader)
end

function srs!(hHeader::LASHeader,hSRS::LASSRS)
    ccall((:LASHeader_SetSRS,liblas),LASError,(LASHeader,LASSRS),hHeader,hSRS)
end
