SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_IsemriGerTest] as

select opr.IsEmriGerceklesenOpr_rowid,op.IsEmriOperasyon_rowid,opr.pIsemri,opr.sSeri,opr.nNo,opr.dtIslemBaslamaTarihi from GUSTO00001.IsEmriGerceklesenOpr opr
inner join GUSTO00001.IsEmriOperasyon op on op.IsEmriOperasyon_rowid=opr.pIsEmriOperasyon
--where nNo=10816
GO