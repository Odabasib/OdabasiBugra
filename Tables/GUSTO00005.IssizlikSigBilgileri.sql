CREATE TABLE [GUSTO00005].[IssizlikSigBilgileri] (
  [IssizlikSigBilgileri_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [nAy] [int] NOT NULL DEFAULT (0),
  [cTip] [char](1) NOT NULL DEFAULT (' '),
  [ldMatrah] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldGunMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciHissesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenHissesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldDevletKatkiPayi] [decimal](22, 2) NULL DEFAULT (0),
  [nPrimGunSayisi] [tinyint] NOT NULL DEFAULT (0),
  [bOlusturulmaSekli] [bit] NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [ldhdIsciHissesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIsverenHissesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIsciHissesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIsverenHissesi] [decimal](22, 2) NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IssizlikSigBilgileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelYilAyKey]
  ON [GUSTO00005].[IssizlikSigBilgileri] ([pPersonel], [pIkramiyeTanimi], [pIsyeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO