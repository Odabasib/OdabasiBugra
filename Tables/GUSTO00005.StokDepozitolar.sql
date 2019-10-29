CREATE TABLE [GUSTO00005].[StokDepozitolar] (
  [StokDepozitolar_rowid] [int] IDENTITY,
  [pStok] [int] NULL DEFAULT (0),
  [bZorunlu] [bit] NULL DEFAULT (0),
  [pDepozito] [int] NULL DEFAULT (0),
  [cDepozitoBirimi] [char](1) NULL DEFAULT (' '),
  [ldDepozitoMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [cYuvarlama] [char](1) NULL DEFAULT (' '),
  [nHassasiyet] [smallint] NULL DEFAULT (0),
  [cUrunBirimi] [char](1) NULL DEFAULT (' '),
  [ldUrunMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDepozitolar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pStok]
  ON [GUSTO00005].[StokDepozitolar] ([pStok])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO