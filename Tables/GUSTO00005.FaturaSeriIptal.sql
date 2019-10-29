CREATE TABLE [GUSTO00005].[FaturaSeriIptal] (
  [FaturaSeriIptal_rowid] [int] IDENTITY,
  [pSeriTanimi] [int] NULL DEFAULT (0),
  [lNo] [int] NULL DEFAULT (0),
  [cDurum] [char](1) NULL DEFAULT (' '),
  [dtIptal] [smalldatetime] NULL,
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaSeriIptal_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FatSeriNoTanimKey]
  ON [GUSTO00005].[FaturaSeriIptal] ([pSeriTanimi], [lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO