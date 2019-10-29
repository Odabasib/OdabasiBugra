SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE View [GUSTO00001].[VG_PersSonGorevYeri] As Select pPersonel, max(dtGoreveBaslayis) as GoreveBaslayisTarihi  From GUSTO00001.PersonelGorevYerleri Group By pPersonel
GO