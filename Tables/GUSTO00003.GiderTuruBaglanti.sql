CREATE TABLE [GUSTO00003].[GiderTuruBaglanti] (
  [GiderTuruBaglanti_rowid] [int] IDENTITY,
  [pKaynakTanim] [int] NULL DEFAULT (0),
  [pGelirGiderTuruKodu] [int] NULL DEFAULT (0),
  [nHareketTuru] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GiderTuruBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GiderTuruHareketTuru]
  ON [GUSTO00003].[GiderTuruBaglanti] ([pKaynakTanim], [nHareketTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO