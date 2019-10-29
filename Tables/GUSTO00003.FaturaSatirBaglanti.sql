CREATE TABLE [GUSTO00003].[FaturaSatirBaglanti] (
  [FaturaSatirBaglanti_rowid] [int] IDENTITY,
  [pStokHareketSatir] [int] NULL DEFAULT (0),
  [pAktarildigiSatir] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaSatirBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAktarildigiSatir]
  ON [GUSTO00003].[FaturaSatirBaglanti] ([pAktarildigiSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokHareketSatir]
  ON [GUSTO00003].[FaturaSatirBaglanti] ([pStokHareketSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO