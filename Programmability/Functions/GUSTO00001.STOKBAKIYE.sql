SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [GUSTO00001].[STOKBAKIYE]

    ( 

       @dtTarih date

    )

    RETURNS @Hareketler TABLE 

    (

       StokKodu_Rowid int,
	   Miktar decimal(22,2)




    ) 

    AS

    BEGIN 
insert into @Hareketler (StokKodu_Rowid,Miktar)   
select 
sk.StokKodu_rowid,

sum(case when cGirisCikis = 0 then ldMalMiktari1Birim else -ldMalMiktari1Birim end) Miktar
from GUSTO00001.StokHareket sh
inner join GUSTO00001.StokKodu sk on sh.pStokKodu = sk.StokKodu_rowid
inner join GUSTO00001.DepoKodu dk on sh.pDepo = dk.DepoKodu_rowid
where sh.cStokHizmetDemirbas = 'S' and sh.dtTarih<@dtTarih group by sk.StokKodu_rowid



      RETURN

    END
GO