CREATE TABLE [GUSTO00005].[VTekDinamikKodDegerleri] (
  [VTekDinamikKodDegerleri_rowid] [int] IDENTITY,
  [pTekDinamikKodDegerleri] [int] NULL DEFAULT (0),
  [nSira] [smallint] NULL DEFAULT (0),
  [pDinamikKodDegerleri] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VTekDinamikKodDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO