CREATE TABLE [GUSTO00001].[TekDinamikKodDegerleri] (
  [TekDinamikKodDegerleri_rowid] [int] IDENTITY,
  [sDegerler] [text] NOT NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TekDinamikKodDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO