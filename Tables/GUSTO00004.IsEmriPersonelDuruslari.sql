CREATE TABLE [GUSTO00004].[IsEmriPersonelDuruslari] (
  [IsEmriPersonelDuruslari_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pPersonelMesai] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [pDurusTanimi] [int] NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [dtBitisTarihi] [smalldatetime] NULL,
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IsEmriPersonelDuruslari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00004].[IsEmriPersonelDuruslari] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00004].[IsEmriPersonelDuruslari] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO