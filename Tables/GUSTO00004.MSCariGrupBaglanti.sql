CREATE TABLE [GUSTO00004].[MSCariGrupBaglanti] (
  [MSCariGrupBaglanti_rowid] [int] IDENTITY,
  [pMSKodu] [int] NULL DEFAULT (0),
  [pMSGrupKodu] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSCariGrupBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMSKodu_pMSGrupKoduKey]
  ON [GUSTO00004].[MSCariGrupBaglanti] ([pMSKodu], [pMSGrupKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO