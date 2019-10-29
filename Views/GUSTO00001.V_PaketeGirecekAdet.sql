SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_PaketeGirecekAdet] as
select pOwnerID,cast(ldSayi as float) PaketeGirecekAdet from GUSTO00001.stokEkAlanSayi where pEkAlanTanimi=40
GO