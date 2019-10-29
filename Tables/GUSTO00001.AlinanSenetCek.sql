CREATE TABLE [GUSTO00001].[AlinanSenetCek] (
  [AlinanSenetCek_rowid] [int] IDENTITY,
  [cSenetCek] [char](1) NULL DEFAULT (' '),
  [pToSenetCek] [int] NULL DEFAULT (0),
  [dtVadeTarihi] [smalldatetime] NULL,
  [dtAlinisTarihi] [smalldatetime] NULL,
  [bAvansMi] [bit] NULL DEFAULT (0),
  [cTeminatMi] [char](1) NULL DEFAULT (' '),
  [cKarsiliksizMi] [char](1) NULL DEFAULT (' '),
  [cBorcluTuru] [char](1) NULL DEFAULT (' '),
  [pBorcluKodu] [int] NULL DEFAULT (0),
  [pSonKasaKodu] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [sSonDurum] [varchar](3) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlinanSenetCek_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BorcluVadeKey]
  ON [GUSTO00001].[AlinanSenetCek] ([pBorcluKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [dtAlinisTarihi]
  ON [GUSTO00001].[AlinanSenetCek] ([dtAlinisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [dtVadeTarihi]
  ON [GUSTO00001].[AlinanSenetCek] ([dtVadeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaVadeKey]
  ON [GUSTO00001].[AlinanSenetCek] ([pSonKasaKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO