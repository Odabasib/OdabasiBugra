SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create  function [GUSTO00001].[YV_DevredenAlacak](  
    @pdonem int,@pHesapKodu int , @dtBas smalldatetime
)  
returns decimal  
as  
begin

declare @Bakiye decimal

select  
@Bakiye=  isnull((select sum( case when bBorcMu =  'A' then ldTutar else 0 end) 
       from GUSTO00001.YevmiyeHareketi SumY    where sumy.pDonem =@pdonem and  Sumy.pHesapKodu= @pHesapKodu and   Sumy.dtTarih < @dtBas ),0)


return @Bakiye

end
GO