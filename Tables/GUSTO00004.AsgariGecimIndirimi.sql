CREATE TABLE [GUSTO00004].[AsgariGecimIndirimi] (
  [AsgariGecimIndirimi_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NOT NULL,
  [ldAsgariUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldPersonelGecimIndOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldEsGecimIndOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldIkiCocukOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldDigerCocuklarOrani] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [ldASGUcuncuCocukOrani] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AsgariGecimIndirimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [dtBasTar]
  ON [GUSTO00004].[AsgariGecimIndirimi] ([dtBasTar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO