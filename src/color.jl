function create(::Type{LASColor})
    ccall((:LASColor_Create,liblas),LASColor,())
end

function destroy(hColor::LASColor)
    ccall((:LASColor_Destroy,liblas),Void,(LASColor,),hColor)
end

function red(hColor::LASColor)
    ccall((:LASColor_GetRed,liblas),Uint16,(LASColor,),hColor)
end

function red(hColor::LASColor,value::Uint16)
    ccall((:LASColor_SetRed,liblas),LASError,(LASColor,Uint16),hColor,value)
end

function green(hColor::LASColor)
    ccall((:LASColor_GetGreen,liblas),Uint16,(LASColor,),hColor)
end

function green(hColor::LASColor,value::Uint16)
    ccall((:LASColor_SetGreen,liblas),LASError,(LASColor,Uint16),hColor,value)
end

function blue(hColor::LASColor)
    ccall((:LASColor_GetBlue,liblas),Uint16,(LASColor,),hColor)
end

function blue(hColor::LASColor,value::Uint16)
    ccall((:LASColor_SetBlue,liblas),LASError,(LASColor,Uint16),hColor,value)
end
