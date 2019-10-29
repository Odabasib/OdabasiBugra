CREATE TABLE [GUSTO00005].[RotaBaslik] (
  [RotaBaslik_rowid] [int] IDENTITY,
  [pUrunAgaciKodu] [int] NULL DEFAULT (0),
  [sRotaOncelikKodu] [varchar](20) NULL DEFAULT (''),
  [sRotaAdi] [varchar](60) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [UrunAgaciOncelik]
  ON [GUSTO00005].[RotaBaslik] ([pUrunAgaciKodu], [sRotaOncelikKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO