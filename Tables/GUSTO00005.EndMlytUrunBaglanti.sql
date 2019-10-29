CREATE TABLE [GUSTO00005].[EndMlytUrunBaglanti] (
  [EndMlytUrunBaglanti_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT ('0'),
  [pEndirekMaliyet] [int] NULL DEFAULT (0),
  [pUrunler] [int] NOT NULL DEFAULT (0),
  [ldKatsayi] [decimal](22, 2) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EndMlytUrunBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pEndirekMaliyet]
  ON [GUSTO00005].[EndMlytUrunBaglanti] ([pEndirekMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUrunler_cTur]
  ON [GUSTO00005].[EndMlytUrunBaglanti] ([pUrunler])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO