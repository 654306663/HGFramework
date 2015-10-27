--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--


require 'Thrift'
require 'user_constants'

C2SLoadUserInfo = __TObject:new{

}

function C2SLoadUserInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SLoadUserInfo:write(oprot)
  oprot:writeStructBegin('C2SLoadUserInfo')
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CLoadUserInfo = __TObject:new{
  userDTO
}

function S2CLoadUserInfo:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.userDTO = UserDTO:new{}
        self.userDTO:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CLoadUserInfo:write(oprot)
  oprot:writeStructBegin('S2CLoadUserInfo')
  if self.userDTO then
    oprot:writeFieldBegin('userDTO', TType.STRUCT, 1)
    self.userDTO:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

C2SCreateSummoner = __TObject:new{
  nickName,
  heroConfigId
}

function C2SCreateSummoner:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.nickName = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.heroConfigId = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function C2SCreateSummoner:write(oprot)
  oprot:writeStructBegin('C2SCreateSummoner')
  if self.nickName then
    oprot:writeFieldBegin('nickName', TType.STRING, 1)
    oprot:writeString(self.nickName)
    oprot:writeFieldEnd()
  end
  if self.heroConfigId then
    oprot:writeFieldBegin('heroConfigId', TType.STRING, 2)
    oprot:writeString(self.heroConfigId)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

S2CCreateSummoner = __TObject:new{
  status
}

function S2CCreateSummoner:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.status = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function S2CCreateSummoner:write(oprot)
  oprot:writeStructBegin('S2CCreateSummoner')
  if self.status then
    oprot:writeFieldBegin('status', TType.I32, 1)
    oprot:writeI32(self.status)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end