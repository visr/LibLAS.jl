
function create(::Type{LASReader},filename::String)
    ccall((:LASReader_Create,liblas),LASReader,(Ptr{Uint8},),filename)
end

function create(::Type{LASReader},filename::String,hHeader::LASHeader)
    ccall((:LASReader_CreateWithHeader,liblas),LASReader,(Ptr{Uint8},LASHeader),filename,hHeader)
end

function nextpoint(hReader::LASReader)
    ccall((:LASReader_GetNextPoint,liblas),LASPoint,(LASReader,),hReader)
end

function point_at(hReader::LASReader,position::Int)
    ccall((:LASReader_GetPointAt,liblas),LASPoint,(LASReader,Uint32),hReader,position)
end

function destroy(hReader::LASReader)
    ccall((:LASReader_Destroy,liblas),Void,(LASReader,),hReader)
end

function lasheader(hReader::LASReader)
    ccall((:LASReader_GetHeader,liblas),LASHeader,(LASReader,),hReader)
end

function lasheader!(hReader::LASReader,hHeader::LASHeader)
    ccall((:LASReader_SetHeader,liblas),Void,(LASReader,LASHeader),hReader,hHeader)
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
    ccall((:LASReader_Seek,liblas),LASError,(LASReader,Uint32),hReader,position)
end

function summary_xml(hReader::LASReader)
    ccall((:LASReader_GetSummaryXML,liblas),Ptr{Uint8},(LASReader,),hReader)
end
