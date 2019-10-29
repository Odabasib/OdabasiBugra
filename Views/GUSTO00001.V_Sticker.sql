SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_Sticker] as
select alsatKulTanHar_rowid,cHareketTuru,pHareket,pKulTan from GUSTO00001.alsatKulTanHar where pKulTan in 
(select alsatKulTan_rowid from GUSTO00001.alsatKulTan where pKulTanTanim=4)
GO