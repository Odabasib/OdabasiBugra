CREATE TABLE [GUSTO00001].[FaturaSatirBaglanti] (
  [FaturaSatirBaglanti_rowid] [int] IDENTITY,
  [pStokHareketSatir] [int] NULL DEFAULT (0),
  [pAktarildigiSatir] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaSatirBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAktarildigiSatir]
  ON [GUSTO00001].[FaturaSatirBaglanti] ([pAktarildigiSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokHareketSatir]
  ON [GUSTO00001].[FaturaSatirBaglanti] ([pStokHareketSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO