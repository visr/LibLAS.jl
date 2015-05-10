function create(::Type{LASPoint})
    ccall((:LASPoint_Create,liblas),LASPoint,())
end

function xcoord(hPoint::LASPoint)
    ccall((:LASPoint_GetX,liblas),Cdouble,(LASPoint,),hPoint)
end

function xcoord!(hPoint::LASPoint,value::Cdouble)
    ccall((:LASPoint_SetX,liblas),LASError,(LASPoint,Cdouble),hPoint,value)
end

function raw_xcoord(hPoint::LASPoint)
    ccall((:LASPoint_GetRawX,liblas),Clong,(LASPoint,),hPoint)
end

function raw_xcoord!(hPoint::LASPoint,value::Clong)
    ccall((:LASPoint_SetRawX,liblas),LASError,(LASPoint,Clong),hPoint,value)
end

function ycoord(hPoint::LASPoint)
    ccall((:LASPoint_GetY,liblas),Cdouble,(LASPoint,),hPoint)
end

function ycoord!(hPoint::LASPoint,value::Cdouble)
    ccall((:LASPoint_SetY,liblas),LASError,(LASPoint,Cdouble),hPoint,value)
end

function raw_ycoord(hPoint::LASPoint)
    ccall((:LASPoint_GetRawY,liblas),Clong,(LASPoint,),hPoint)
end

function raw_ycoord!(hPoint::LASPoint,value::Clong)
    ccall((:LASPoint_SetRawY,liblas),LASError,(LASPoint,Clong),hPoint,value)
end

function zcoord(hPoint::LASPoint)
    ccall((:LASPoint_GetZ,liblas),Cdouble,(LASPoint,),hPoint)
end

function zcoord!(hPoint::LASPoint,value::Cdouble)
    ccall((:LASPoint_SetZ,liblas),LASError,(LASPoint,Cdouble),hPoint,value)
end

function raw_zcoord(hPoint::LASPoint)
    ccall((:LASPoint_GetRawZ,liblas),Clong,(LASPoint,),hPoint)
end

function raw_zcoord!(hPoint::LASPoint,value::Clong)
    ccall((:LASPoint_SetRawZ,liblas),LASError,(LASPoint,Clong),hPoint,value)
end

function intensity(hPoint::LASPoint)
    ccall((:LASPoint_GetIntensity,liblas),Uint16,(LASPoint,),hPoint)
end

function intensity!(hPoint::LASPoint,value::Uint16)
    ccall((:LASPoint_SetIntensity,liblas),LASError,(LASPoint,Uint16),hPoint,value)
end

function returnnumber(hPoint::LASPoint)
    ccall((:LASPoint_GetReturnNumber,liblas),Uint16,(LASPoint,),hPoint)
end

function returnnumber!(hPoint::LASPoint,value::Uint16)
    ccall((:LASPoint_SetReturnNumber,liblas),LASError,(LASPoint,Uint16),hPoint,value)
end

function numberofreturns(hPoint::LASPoint)
    ccall((:LASPoint_GetNumberOfReturns,liblas),Uint16,(LASPoint,),hPoint)
end

function numberofreturns!(hPoint::LASPoint,value::Uint16)
    ccall((:LASPoint_SetNumberOfReturns,liblas),LASError,(LASPoint,Uint16),hPoint,value)
end

function scandirection(hPoint::LASPoint)
    ccall((:LASPoint_GetScanDirection,liblas),Uint16,(LASPoint,),hPoint)
end

function scandirection!(hPoint::LASPoint,value::Uint16)
    ccall((:LASPoint_SetScanDirection,liblas),LASError,(LASPoint,Uint16),hPoint,value)
end

function flightline_edge(hPoint::LASPoint)
    ccall((:LASPoint_GetFlightLineEdge,liblas),Uint16,(LASPoint,),hPoint)
end

function flightline_edge!(hPoint::LASPoint,value::Uint16)
    ccall((:LASPoint_SetFlightLineEdge,liblas),LASError,(LASPoint,Uint16),hPoint,value)
end

function scanflags(hPoint::LASPoint)
    ccall((:LASPoint_GetScanFlags,liblas),Cuchar,(LASPoint,),hPoint)
end

function scanflags!(hPoint::LASPoint,value::Cuchar)
    ccall((:LASPoint_SetScanFlags,liblas),LASError,(LASPoint,Cuchar),hPoint,value)
end

function classification(hPoint::LASPoint)
    ccall((:LASPoint_GetClassification,liblas),Cuchar,(LASPoint,),hPoint)
end

function classification!(hPoint::LASPoint,value::Cuchar)
    ccall((:LASPoint_SetClassification,liblas),LASError,(LASPoint,Cuchar),hPoint,value)
end

function gps_time(hPoint::LASPoint)
    ccall((:LASPoint_GetTime,liblas),Cdouble,(LASPoint,),hPoint)
end

function gps_time!(hPoint::LASPoint,value::Cdouble)
    ccall((:LASPoint_SetTime,liblas),LASError,(LASPoint,Cdouble),hPoint,value)
end

function scan_angle_rank(hPoint::LASPoint)
    ccall((:LASPoint_GetScanAngleRank,liblas),Uint8,(LASPoint,),hPoint)
end

function scan_angle_rank!(hPoint::LASPoint,value::Uint8)
    ccall((:LASPoint_SetScanAngleRank,liblas),LASError,(LASPoint,Uint8),hPoint,value)
end

function pointsource_id(hPoint::LASPoint)
    ccall((:LASPoint_GetPointSourceId,liblas),Uint16,(LASPoint,),hPoint)
end

function pointsource_id!(hPoint::LASPoint,value::Uint16)
    ccall((:LASPoint_SetPointSourceId,liblas),LASError,(LASPoint,Uint16),hPoint,value)
end

function userdata(hPoint::LASPoint)
    ccall((:LASPoint_GetUserData,liblas),Cuchar,(LASPoint,),hPoint)
end

function userdata!(hPoint::LASPoint,value::Cuchar)
    ccall((:LASPoint_SetUserData,liblas),LASError,(LASPoint,Cuchar),hPoint,value)
end

function validate(hPoint::LASPoint)
    ccall((:LASPoint_Validate,liblas),Cint,(LASPoint,),hPoint)
end

function isvalid(hPoint::LASPoint)
    ccall((:LASPoint_IsValid,liblas),Cint,(LASPoint,),hPoint)
end

function copy(hPoint::LASPoint)
    ccall((:LASPoint_Copy,liblas),LASPoint,(LASPoint,),hPoint)
end

function destroy(hPoint::LASPoint)
    ccall((:LASPoint_Destroy,liblas),Void,(LASPoint,),hPoint)
end

function lasheader(hPoint::LASPoint)
    ccall((:LASPoint_GetHeader,liblas),LASHeader,(LASPoint,),hPoint)
end

function lasheader!(hPoint::LASPoint,hHeader::LASHeader)
    ccall((:LASPoint_SetHeader,liblas),Void,(LASPoint,LASHeader),hPoint,hHeader)
end

function data(hPoint::LASPoint,data::Ptr{Cuchar})
    ccall((:LASPoint_GetData,liblas),LASError,(LASPoint,Ptr{Cuchar}),hPoint,data)
end

function data!(hPoint::LASPoint,data::Ptr{Cuchar})
    ccall((:LASPoint_SetData,liblas),LASError,(LASPoint,Ptr{Cuchar}),hPoint,data)
end

function xml(hPoint::LASPoint)
    ccall((:LASPoint_GetXML,liblas),Ptr{Uint8},(LASPoint,),hPoint)
end

function color(hPoint::LASPoint)
    ccall((:LASPoint_GetColor,liblas),LASColor,(LASPoint,),hPoint)
end

function color!(hPoint::LASPoint,hColor::LASColor)
    ccall((:LASPoint_SetColor,liblas),LASError,(LASPoint,LASColor),hPoint,hColor)
end
