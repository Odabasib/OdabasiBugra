CREATE TABLE [GUSTO00001].[EkMaliyetTanimiKisitlari] (
  [EkMaliyetTanimiKisitlari_rowid] [int] IDENTITY,
  [pEkMaliyetTanimi] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pBaslangicKodu] [int] NOT NULL DEFAULT (0),
  [pBitisKodu] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkMaliyetTanimiKisitlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pEkMaliyetTanimi]
  ON [GUSTO00001].[EkMaliyetTanimiKisitlari] ([pEkMaliyetTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO