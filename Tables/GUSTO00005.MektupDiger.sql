CREATE TABLE [GUSTO00005].[MektupDiger] (
  [MektupDiger_rowid] [int] IDENTITY,
  [pDigerKod] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MektupDiger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDigerKod]
  ON [GUSTO00005].[MektupDiger] ([pDigerKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO