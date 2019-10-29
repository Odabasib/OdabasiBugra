CREATE TABLE [GUSTO00004].[BakiyeKapatSatirlar] (
  [BakiyeKapatSatirlar_rowid] [int] IDENTITY,
  [sBaslangicKodu] [varchar](41) NULL DEFAULT (''),
  [sBitisKodu] [varchar](41) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pBakiyeKapat] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BakiyeKapatSatirlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [BakiyeKapatKey]
  ON [GUSTO00004].[BakiyeKapatSatirlar] ([pBakiyeKapat], [sBaslangicKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO