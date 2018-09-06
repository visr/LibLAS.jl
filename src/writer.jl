function create(::Type{LASWriter},filename::AbstractString,hHeader::LASHeader,mode::Cint)
    ccall((:LASWriter_Create,liblas),LASWriter,(Ptr{UInt8},LASHeader,Cint),filename,hHeader,mode)
end

function writepoint(hWriter::LASWriter,hPoint::LASPoint)
    ccall((:LASWriter_WritePoint,liblas),LASError,(LASWriter,LASPoint),hWriter,hPoint)
end

function writeheader(hWriter::LASWriter,hHeader::LASHeader)
    ccall((:LASWriter_WriteHeader,liblas),LASError,(LASWriter,LASHeader),hWriter,hHeader)
end

function write_owned_header(hWriter::LASWriter)
    ccall((:LASWriter_WriteOwnedHeader,liblas),LASError,(LASWriter,),hWriter)
end

function destroy(hWriter::LASWriter)
    ccall((:LASWriter_Destroy,liblas),Cvoid,(LASWriter,),hWriter)
end

function lasheader(hWriter::LASWriter)
    ccall((:LASWriter_GetHeader,liblas),LASHeader,(LASWriter,),hWriter)
end

function lasheader!(hWriter::LASWriter,hHeader::LASHeader)
    ccall((:LASWriter_SetHeader,liblas),Cvoid,(LASWriter,LASHeader),hWriter,hHeader)
end

function srs!(hWriter::LASWriter,hSRS::LASSRS)
    ccall((:LASWriter_SetSRS,liblas),LASError,(LASWriter,LASSRS),hWriter,hSRS)
end

function input_srs!(hWriter::LASWriter,hSRS::LASSRS)
    ccall((:LASWriter_SetInputSRS,liblas),LASError,(LASWriter,LASSRS),hWriter,hSRS)
end

function output_srs!(hWriter::LASWriter,hSRS::LASSRS)
    ccall((:LASWriter_SetOutputSRS,liblas),LASError,(LASWriter,LASSRS),hWriter,hSRS)
end
