CREATE TABLE [GUSTO00001].[DigerTahsil] (
  [DigerTahsil_rowid] [int] IDENTITY,
  [pHareket] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [pDuzenleyen] [int] NULL DEFAULT (0),
  [sTeslimEden] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DigerTahsil_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DTahSeriNoKey]
  ON [GUSTO00001].[DigerTahsil] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DTahTarihSeriNoKey]
  ON [GUSTO00001].[DigerTahsil] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO