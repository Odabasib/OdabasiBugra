CREATE TABLE [GUSTO00001].[PersonelTahsilat] (
  [PersonelTahsilat_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pDuzenleyen] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelTahsilat_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CTahSeriNoKey]
  ON [GUSTO00001].[PersonelTahsilat] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CTahTarihSeriNoKey]
  ON [GUSTO00001].[PersonelTahsilat] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO