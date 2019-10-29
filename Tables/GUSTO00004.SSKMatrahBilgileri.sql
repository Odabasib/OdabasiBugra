CREATE TABLE [GUSTO00004].[SSKMatrahBilgileri] (
  [SSKMatrahBilgileri_rowid] [int] IDENTITY,
  [cTip] [char](1) NULL DEFAULT (' '),
  [pPersonel] [int] NULL DEFAULT (0),
  [nAy] [int] NULL DEFAULT (0),
  [nYil] [int] NULL DEFAULT (0),
  [ldSSKMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKGunMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [nSSKGun] [tinyint] NULL DEFAULT (0),
  [nOlusturulmaSekli] [tinyint] NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [ldIsciSSKGenelSigortaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKGenelSigortaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevredenSSKMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevirKullanilmisMatrah] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevirKullanilmisMatrah2] [decimal](22, 2) NULL DEFAULT (0),
  [ldPrimIkramiye_Ebildirge] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalullukYasSigortaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSGKCocukYrdMuafiyeti] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SSKMatrahBilgileri_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelYilAyKey]
  ON [GUSTO00004].[SSKMatrahBilgileri] ([pPersonel], [pIsyeri])
  ON [PRIMARY]
GO

CREATE INDEX [TipPersonelYilAyKey]
  ON [GUSTO00004].[SSKMatrahBilgileri] ([pIkramiyeTanimi])
  ON [PRIMARY]
GO