CREATE TABLE [GUSTO00003].[VerilenSenetCek] (
  [VerilenSenetCek_rowid] [int] IDENTITY,
  [cSenetCek] [char](1) NULL DEFAULT (' '),
  [pToSenetCek] [int] NULL DEFAULT (0),
  [dtVadeTarihi] [smalldatetime] NULL,
  [dtVerilisTarihi] [smalldatetime] NULL,
  [bAvansMi] [bit] NULL DEFAULT (0),
  [nPersonelAvansTuru] [tinyint] NULL DEFAULT (0),
  [cTeminatMi] [char](1) NULL DEFAULT (' '),
  [cKarsiliksizMi] [char](1) NULL DEFAULT (' '),
  [cAlacakliTuru] [char](1) NULL DEFAULT (' '),
  [pAlacakliKodu] [int] NULL DEFAULT (0),
  [pCikisKasaKodu] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [sSonDurum] [varchar](3) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerilenSenetCek_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AlacakliVadeKey]
  ON [GUSTO00003].[VerilenSenetCek] ([pAlacakliKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [dtVadeTarihi]
  ON [GUSTO00003].[VerilenSenetCek] ([dtVadeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [dtVerilisTarihi]
  ON [GUSTO00003].[VerilenSenetCek] ([dtVerilisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaVerilisTarKey]
  ON [GUSTO00003].[VerilenSenetCek] ([pCikisKasaKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO