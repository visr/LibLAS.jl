function create(::Type{LASColor})
    ccall((:LASColor_Create,liblas),LASColor,())
end

function destroy(hColor::LASColor)
    ccall((:LASColor_Destroy,liblas),Cvoid,(LASColor,),hColor)
end

function red(hColor::LASColor)
    ccall((:LASColor_GetRed,liblas),UInt16,(LASColor,),hColor)
end

function red(hColor::LASColor,value::UInt16)
    ccall((:LASColor_SetRed,liblas),LASError,(LASColor,UInt16),hColor,value)
end

function green(hColor::LASColor)
    ccall((:LASColor_GetGreen,liblas),UInt16,(LASColor,),hColor)
end

function green(hColor::LASColor,value::UInt16)
    ccall((:LASColor_SetGreen,liblas),LASError,(LASColor,UInt16),hColor,value)
end

function blue(hColor::LASColor)
    ccall((:LASColor_GetBlue,liblas),UInt16,(LASColor,),hColor)
end

function blue(hColor::LASColor,value::UInt16)
    ccall((:LASColor_SetBlue,liblas),LASError,(LASColor,UInt16),hColor,value)
end
