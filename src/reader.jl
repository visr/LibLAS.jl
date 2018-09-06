
function create(::Type{LASReader},filename::AbstractString)
    ccall((:LASReader_Create,liblas),LASReader,(Ptr{UInt8},),filename)
end

function create(::Type{LASReader},filename::AbstractString,hHeader::LASHeader)
    ccall((:LASReader_CreateWithHeader,liblas),LASReader,(Ptr{UInt8},LASHeader),filename,hHeader)
end

function nextpoint(hReader::LASReader)
    ccall((:LASReader_GetNextPoint,liblas),LASPoint,(LASReader,),hReader)
end

function point_at(hReader::LASReader,position::Int)
    ccall((:LASReader_GetPointAt,liblas),LASPoint,(LASReader,UInt32),hReader,position)
end

function destroy(hReader::LASReader)
    ccall((:LASReader_Destroy,liblas),Cvoid,(LASReader,),hReader)
end

function lasheader(hReader::LASReader)
    ccall((:LASReader_GetHeader,liblas),LASHeader,(LASReader,),hReader)
end

function lasheader!(hReader::LASReader,hHeader::LASHeader)
    ccall((:LASReader_SetHeader,liblas),Cvoid,(LASReader,LASHeader),hReader,hHeader)
end

function srs!(hReader::LASReader,hSRS::LASSRS)
    ccall((:LASReader_SetSRS,liblas),LASError,(LASReader,LASSRS),hReader,hSRS)
end

function input_srs!(hReader::LASReader,hSRS::LASSRS)
    ccall((:LASReader_SetInputSRS,liblas),LASError,(LASReader,LASSRS),hReader,hSRS)
end

function output_srs!(hReader::LASReader,hSRS::LASSRS)
    ccall((:LASReader_SetOutputSRS,liblas),LASError,(LASReader,LASSRS),hReader,hSRS)
end

function seek(hReader::LASReader,position::Int)
    ccall((:LASReader_Seek,liblas),LASError,(LASReader,UInt32),hReader,position)
end

function summary_xml(hReader::LASReader)
    ccall((:LASReader_GetSummaryXML,liblas),Ptr{UInt8},(LASReader,),hReader)
end
