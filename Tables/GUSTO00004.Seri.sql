CREATE TABLE [GUSTO00004].[Seri] (
  [Seri_rowid] [int] IDENTITY,
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [nBaslangicNumarasi] [int] NULL DEFAULT (0),
  [nBitisNumarasi] [int] NULL DEFAULT (0),
  [nNo] [int] NULL DEFAULT (0),
  [nGecerliTurler] [int] NULL DEFAULT (0),
  [bPasif] [bit] NULL DEFAULT (0),
  [nEDefterBelgeTuru] [smallint] NULL DEFAULT (0),
  [sEDefterBelgeTurAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Seri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [HareketTuru]
  ON [GUSTO00004].[Seri] ([nHareketTuru], [sSeri], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [HareketTuruBaslangicNo]
  ON [GUSTO00004].[Seri] ([nHareketTuru], [sSeri], [nBaslangicNumarasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO