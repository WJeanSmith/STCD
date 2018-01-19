unit uMsgExchange;

interface

type
  TMsgExchange = class
    class function CheckEncryptedMsg: boolean;  //
    class function GenerateKeys: boolean;  //
//    class function ;  //
  private
    class function CheckMsgKey: boolean;  // �������� SHA256 ���-�������� msg_key
    class function CheckMsgLength: boolean;  // �������� ����� ���������
    class function CheckSessionID: boolean;  // �������� session_id
//    class function Check: boolean;  //
//    class function Check: boolean; ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //
//    class function ;  //

  end;

implementation
uses uCommon;

{ TMsgExchange }

class function TMsgExchange.CheckEncryptedMsg: boolean;
begin
  result := false;
  if not CheckMsgKey then
    exit;
  if not CheckMsgLength then
    exit;
  if not CheckSessionID then
    exit;
end;

class function TMsgExchange.CheckMsgKey: boolean;
begin
  result := false;
end;

class function TMsgExchange.CheckMsgLength: boolean;
begin
  result := false;
end;

class function TMsgExchange.CheckSessionID: boolean;
begin
  result := false;
end;

class function TMsgExchange.GenerateKeys: boolean;
begin

end;

end.

