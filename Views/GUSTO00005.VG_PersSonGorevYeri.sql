SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE View [GUSTO00005].[VG_PersSonGorevYeri] As Select pPersonel, max(dtGoreveBaslayis) as GoreveBaslayisTarihi  From GUSTO00005.PersonelGorevYerleri Group By pPersonel
GO