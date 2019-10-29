SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
CREATE View [GUSTO00004].[VG_PersSonGorevYeri] As Select pPersonel, max(dtGoreveBaslayis) as GoreveBaslayisTarihi  From GUSTO00004.PersonelGorevYerleri Group By pPersonel
GO