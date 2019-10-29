SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create FUNCTION [GUSTO00001].[STOKSONALIS]

    ( 

       @dtTarih date

    )

    RETURNS @Hareketler TABLE 

    (

       StokKodu_Rowid int,
	   SonAlis decimal(22,2)




    ) 

    AS

    BEGIN 
insert into @Hareketler (StokKodu_Rowid,SonAlis)   
select pStokKodu,avg(ldBirimFiyatKDVsiz) from GUSTO00001.StokHareket where cGirisCikis = 0 and dtTarih<=@dtTarih group by pStokKodu 



      RETURN

    END
GO