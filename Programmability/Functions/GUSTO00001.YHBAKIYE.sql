SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create FUNCTION [GUSTO00001].[YHBAKIYE]

    ( 

       @dtBasTar date,

       @dtBitTar date

    )

    RETURNS @Hareketler TABLE 

    (

       Bakiye decimal(22,2),

       bBorcMu varchar(1),

	   Tutar decimal(22,2),

	   dtTarih date,

	   pHesapKodu int,

	   pYevmiyeFisi int


    ) 

    AS

    BEGIN 
insert into @Hareketler (Bakiye,bBorcMu,Tutar,dtTarih,pHesapKodu,pYevmiyeFisi)   
select YToplam.Bakiye, y.bBorcMu,y.ldTutar,y.dtTarih,y.pHesapKodu,pYevmiyeFisi from GUSTO00001.YevmiyeHareketi Y
left join 
       (select sum( case when bBorcMu =  'B' then ldTutar else -ldTutar end) Bakiye, pHesapKodu 
       from GUSTO00001.YevmiyeHareketi SumY 
       where  SumY.dtTarih between @dtBasTar and @dtBitTar 
       group by Sumy.pHesapKodu ) YToplam on YToplam.pHesapKodu = y.pHesapKodu
where dtTarih between @dtBasTar and @dtBitTar   


      RETURN

    END
GO