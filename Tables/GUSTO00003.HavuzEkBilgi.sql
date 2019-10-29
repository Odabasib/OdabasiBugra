CREATE TABLE [GUSTO00003].[HavuzEkBilgi] (
  [HavuzEkBilgi_rowid] [int] IDENTITY,
  [pHavuz] [int] NULL DEFAULT (0),
  [nModul] [smallint] NULL DEFAULT (0),
  [cEkBilgiTuru] [char](1) NULL DEFAULT ('E'),
  [pEkBilgiTanimi] [int] NULL DEFAULT (0),
  [cSahibinTuru] [varchar](2) NULL DEFAULT (''),
  [cEkBilgiTipi] [char](1) NULL DEFAULT (' '),
  [sEkBilgiMetin1] [varchar](255) NULL DEFAULT (''),
  [sEkBilgiMetin2] [varchar](255) NULL DEFAULT (''),
  [ldEkBilgiSayi] [decimal](22, 6) NULL DEFAULT (0),
  [dtEkBilgiTarih] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([HavuzEkBilgi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HavuzEkBilgiTurTip]
  ON [GUSTO00003].[HavuzEkBilgi] ([pHavuz], [nModul], [cEkBilgiTuru], [pEkBilgiTanimi], [cSahibinTuru], [cEkBilgiTipi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO