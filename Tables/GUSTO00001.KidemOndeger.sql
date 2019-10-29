CREATE TABLE [GUSTO00001].[KidemOndeger] (
  [KidemOndeger_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NULL,
  [nEsasGun] [tinyint] NULL DEFAULT (0),
  [ldGunlukUstSinir] [decimal](22, 6) NULL DEFAULT (0),
  [ldEnflasyonZamOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldFaizIskontoOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldTazminatsizAyrilmaOran] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KidemOndeger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtBasTar]
  ON [GUSTO00001].[KidemOndeger] ([dtBasTar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO