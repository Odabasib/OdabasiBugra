CREATE TABLE [GUSTO00003].[CocukYardim] (
  [CocukYardim_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NOT NULL,
  [nVergiMuafCocukSayisi] [tinyint] NULL DEFAULT (0),
  [ldVergiMuafCocukTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldVergiMuafIlkogretim] [decimal](22, 2) NULL DEFAULT (0),
  [ldVergiMuafLise] [decimal](22, 2) NULL DEFAULT (0),
  [ldVergiMuafMeslekSanat] [decimal](22, 2) NULL DEFAULT (0),
  [ldVergiMuafYuksekokul] [decimal](22, 2) NULL DEFAULT (0),
  [nDamgaVergisiHesaplama] [tinyint] NOT NULL DEFAULT (0),
  [ldOkulOncesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIlkogretim] [decimal](22, 2) NULL DEFAULT (0),
  [ldLise] [decimal](22, 2) NULL DEFAULT (0),
  [ldMeslekSanat] [decimal](22, 2) NULL DEFAULT (0),
  [ldYuksekokul] [decimal](22, 2) NULL DEFAULT (0),
  [nYardimYapilanCocuk] [tinyint] NULL DEFAULT (0),
  [nUcretTipi] [tinyint] NULL DEFAULT (0),
  [ldYuzde] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CocukYardim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [dtBasTar]
  ON [GUSTO00003].[CocukYardim] ([dtBasTar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO