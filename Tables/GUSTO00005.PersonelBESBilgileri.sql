CREATE TABLE [GUSTO00005].[PersonelBESBilgileri] (
  [PersonelBESBilgileri_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pSigortaSirketi] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtBaslangicTarihi] [smalldatetime] NOT NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [nYatirimTercihi] [tinyint] NULL DEFAULT (0),
  [nHesaplamaSekli] [smallint] NULL DEFAULT (0),
  [ldBESDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [nBESBitisNedeni] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelBESBilgileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pPersonel_AktifKey]
  ON [GUSTO00005].[PersonelBESBilgileri] ([pPersonel], [dtBaslangicTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSigortaAktifKey]
  ON [GUSTO00005].[PersonelBESBilgileri] ([pSigortaSirketi], [dtBaslangicTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO