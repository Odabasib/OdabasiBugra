CREATE TABLE [GUSTO00005].[SozlesmeKosulTanim] (
  [SozlesmeKosulTanim_rowid] [int] IDENTITY,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [nTur] [int] NULL DEFAULT (0),
  [bAktifPasif] [bit] NULL DEFAULT (1),
  PRIMARY KEY CLUSTERED ([SozlesmeKosulTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO