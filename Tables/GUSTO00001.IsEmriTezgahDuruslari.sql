CREATE TABLE [GUSTO00001].[IsEmriTezgahDuruslari] (
  [IsEmriTezgahDuruslari_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pTezgahMesai] [int] NULL DEFAULT (0),
  [pMakinaKodu] [int] NULL DEFAULT (0),
  [pDurusTanimi] [int] NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [dtBitisTarihi] [smalldatetime] NULL,
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IsEmriTezgahDuruslari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00001].[IsEmriTezgahDuruslari] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00001].[IsEmriTezgahDuruslari] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO