CREATE TABLE [GUSTO00001].[ASiparisIsEmriBaglanti] (
  [ASiparisIsEmriBaglanti_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT ('A'),
  [pIsEmriUrunler] [int] NULL DEFAULT (0),
  [pBaglayanBelge] [int] NULL DEFAULT (0),
  [pIsEmri] [int] NULL DEFAULT (0),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  [nBaglantiTuru] [tinyint] NULL DEFAULT (0),
  [pKokIsEmri] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ASiparisIsEmriBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBaglayanBelge]
  ON [GUSTO00001].[ASiparisIsEmriBaglanti] ([pBaglayanBelge])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriUrunler]
  ON [GUSTO00001].[ASiparisIsEmriBaglanti] ([pIsEmriUrunler], [pIsEmri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO