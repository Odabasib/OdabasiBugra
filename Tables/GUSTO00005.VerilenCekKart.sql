CREATE TABLE [GUSTO00005].[VerilenCekKart] (
  [VerilenCekKart_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lSeriNo] [int] NULL DEFAULT (0),
  [sBankaRefNo] [varchar](30) NULL DEFAULT (''),
  [sVerCekNo] [varchar](20) NULL DEFAULT (''),
  [pBanka] [int] NULL DEFAULT (0),
  [cAlacakliTuru] [char](1) NULL DEFAULT (' '),
  [pAlacakliKodu] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [dtVadesi] [smalldatetime] NULL,
  [dtVerilisTarihi] [smalldatetime] NULL,
  [dtValor] [smalldatetime] NULL,
  [sDuzenleyen] [varchar](50) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](50) NULL DEFAULT (''),
  [sVergiNo] [varchar](50) NULL DEFAULT (''),
  [bAvansMi] [bit] NULL DEFAULT (0),
  [nPersonelAvansTuru] [tinyint] NULL DEFAULT (0),
  [cTeminatMi] [char](1) NULL DEFAULT (' '),
  [nTeminatSekli] [tinyint] NOT NULL DEFAULT (0),
  [dtTeminattanCikis] [smalldatetime] NULL,
  [pTemCikIslemID] [int] NULL DEFAULT (0),
  [cSonDurum] [varchar](3) NULL DEFAULT (''),
  [pKasaKoduCikis] [int] NULL DEFAULT (0),
  [pSonDurumHrkID] [int] NULL DEFAULT (0),
  [cKarsiliksizMi] [char](1) NULL DEFAULT (' '),
  [dtKarsiliksizOlmaTarihi] [smalldatetime] NULL,
  [pKarsiliksizIslemID] [int] NULL DEFAULT (0),
  [pSCBirlesim] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerilenCekKart_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AlacakliSeriKey]
  ON [GUSTO00005].[VerilenCekKart] ([pAlacakliKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BankaSeriKey]
  ON [GUSTO00005].[VerilenCekKart] ([pBanka])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaSeriKey]
  ON [GUSTO00005].[VerilenCekKart] ([pKasaKoduCikis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiliksizIslemID]
  ON [GUSTO00005].[VerilenCekKart] ([pKarsiliksizIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSonDurumHrkID]
  ON [GUSTO00005].[VerilenCekKart] ([pSonDurumHrkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTemCikIslemID]
  ON [GUSTO00005].[VerilenCekKart] ([pTemCikIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00005].[VerilenCekKart] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VadeKey]
  ON [GUSTO00005].[VerilenCekKart] ([dtVadesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VerilisTarKey]
  ON [GUSTO00005].[VerilenCekKart] ([dtVerilisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO