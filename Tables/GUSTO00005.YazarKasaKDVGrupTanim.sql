CREATE TABLE [GUSTO00005].[YazarKasaKDVGrupTanim] (
  [YazarKasaKDVGrupTanim_rowid] [int] IDENTITY,
  [pYazarKasa] [int] NULL DEFAULT (0),
  [nGrupNo] [int] NULL DEFAULT (0),
  [ldKDVOrani] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YazarKasaKDVGrupTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pYazarKasa]
  ON [GUSTO00005].[YazarKasaKDVGrupTanim] ([pYazarKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO