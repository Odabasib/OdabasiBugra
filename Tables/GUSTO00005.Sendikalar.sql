CREATE TABLE [GUSTO00005].[Sendikalar] (
  [Sendikalar_rowid] [int] IDENTITY,
  [sSendikaKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sSendikaAdi] [varchar](60) NOT NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Sendikalar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sSendikaKodu]
  ON [GUSTO00005].[Sendikalar] ([sSendikaKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO