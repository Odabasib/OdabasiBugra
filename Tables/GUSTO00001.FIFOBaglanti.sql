CREATE TABLE [GUSTO00001].[FIFOBaglanti] (
  [FIFOBaglanti_rowid] [int] IDENTITY,
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [pAlimHareketi] [int] NULL DEFAULT (0),
  [pSatisHareketi] [int] NULL DEFAULT (0),
  [ldKarsilanan] [decimal](22, 6) NULL DEFAULT (0),
  [dtTarihGiris] [smalldatetime] NULL,
  [nSiraGiris] [smallint] NULL DEFAULT (0),
  [dtTarihCikis] [smalldatetime] NULL,
  [nSiraCikis] [smallint] NULL DEFAULT (0),
  [ldKalan] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FIFOBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAlimHareketi]
  ON [GUSTO00001].[FIFOBaglanti] ([pAlimHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSatisHareketi]
  ON [GUSTO00001].[FIFOBaglanti] ([pSatisHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokDepoCikisTarihKey]
  ON [GUSTO00001].[FIFOBaglanti] ([pStokKodu], [pIzlemeKodu], [pDepoMaliyetKodu], [dtTarihCikis], [nSiraCikis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokDepoGirisTarihKey]
  ON [GUSTO00001].[FIFOBaglanti] ([pStokKodu], [pIzlemeKodu], [pDepoMaliyetKodu], [dtTarihGiris], [nSiraGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO