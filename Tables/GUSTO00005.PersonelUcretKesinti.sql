CREATE TABLE [GUSTO00005].[PersonelUcretKesinti] (
  [PersonelUcretKesinti_rowid] [int] IDENTITY,
  [dtBaslangicTarihi] [smalldatetime] NULL,
  [pPersonel] [int] NULL DEFAULT (0),
  [cUcretTuru] [char](1) NULL DEFAULT (' '),
  [cUcretTipi] [char](1) NULL DEFAULT (' '),
  [ldUcret] [decimal](22, 6) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [cKurTarihi] [char](1) NULL DEFAULT (' '),
  [nMemurDerece] [int] NULL DEFAULT (0),
  [nMemurKademe] [int] NULL DEFAULT (0),
  [nEmekliEsasDerece] [int] NULL DEFAULT (0),
  [nEmekliEsasKidem] [int] NULL DEFAULT (0),
  [nMemurEkGosterge] [int] NULL DEFAULT (0),
  [nKidemYili] [int] NULL DEFAULT (0),
  [ldEmekliEsasEkGosterge] [decimal](22, 2) NULL DEFAULT (0),
  [ldFazlaMesaiSaatUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [nIsRiskiPuani] [int] NULL DEFAULT (0),
  [nIsGucluguPuani] [int] NULL DEFAULT (0),
  [nTeminGuclukPuani] [int] NULL DEFAULT (0),
  [nArtisOrani] [int] NULL DEFAULT (0),
  [nOzelHizmetTazminatOrani] [int] NULL DEFAULT (0),
  [nOHALTazminatOrani] [int] NULL DEFAULT (0),
  [ldEmekliSandikBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurumBorc] [decimal](22, 2) NULL DEFAULT (0),
  [nMemurKazHakAyDerece] [int] NULL DEFAULT (0),
  [nMemurKazHakAyKademe] [int] NULL DEFAULT (0),
  [pYasalStatu] [int] NULL DEFAULT (0),
  [ldEmekliFarkGosterge] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelUcretKesinti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [UcretPersonelTarihKey]
  ON [GUSTO00005].[PersonelUcretKesinti] ([pPersonel], [dtBaslangicTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO