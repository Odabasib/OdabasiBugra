CREATE TABLE [GUSTO00001].[BakimKartBaglanti] (
  [BakimKartBaglanti_rowid] [int] IDENTITY,
  [pKart] [int] NULL DEFAULT (0),
  [cKartTuru] [char](1) NOT NULL DEFAULT (' '),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [sBakimKodu] [varchar](10) NULL DEFAULT (''),
  [ldKilometre] [decimal](22, 6) NULL DEFAULT (0),
  [ldBaslangicKm] [decimal](22, 6) NULL DEFAULT (0),
  [cSureTuru] [char](1) NOT NULL DEFAULT (' '),
  [lSure] [int] NULL DEFAULT (0),
  [dtBakimBaslangic] [smalldatetime] NULL,
  [dtBakimBitis] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([BakimKartBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO