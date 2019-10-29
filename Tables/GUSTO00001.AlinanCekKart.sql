CREATE TABLE [GUSTO00001].[AlinanCekKart] (
  [AlinanCekKart_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lSeriNo] [int] NULL DEFAULT (0),
  [sCekNo] [varchar](20) NULL DEFAULT (''),
  [sBankaRefNo] [varchar](30) NULL DEFAULT (''),
  [pBankaSubesi] [int] NULL DEFAULT (0),
  [sBankaHesapNo] [varchar](30) NULL DEFAULT (''),
  [cBorcluTuru] [char](1) NULL DEFAULT (' '),
  [pBorcluKodu] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [dtVadeTarihi] [smalldatetime] NULL,
  [dtAlinisTarihi] [smalldatetime] NULL,
  [dtValorTarihi] [smalldatetime] NULL,
  [sDuzenleyen] [varchar](50) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](50) NULL DEFAULT (''),
  [sVergiNo] [varchar](50) NULL DEFAULT (''),
  [bAvansMi] [bit] NULL DEFAULT (0),
  [cTeminatMi] [char](1) NULL DEFAULT (' '),
  [nTeminatSekli] [tinyint] NOT NULL DEFAULT (0),
  [dtTeminattanCikis] [smalldatetime] NULL,
  [pTemCikIslemID] [int] NULL DEFAULT (0),
  [bCiroMi] [bit] NULL DEFAULT (0),
  [sCiroEdilen] [varchar](60) NULL DEFAULT (''),
  [sCekSonDurumKodu] [varchar](3) NULL DEFAULT (''),
  [pSonKasaKodu] [int] NULL DEFAULT (0),
  [pSonDurumHrkID] [int] NULL DEFAULT (0),
  [cKarsiliksizMi] [char](1) NULL DEFAULT (' '),
  [dtKarsiliksizOlmaTarihi] [smalldatetime] NULL,
  [pKarsiliksizIslemID] [int] NULL DEFAULT (0),
  [pSCBirlesim] [int] NULL DEFAULT (0),
  [pDuzenleyenCari] [int] NULL DEFAULT (0),
  [sIBAN] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlinanCekKart_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AlisTarKey]
  ON [GUSTO00001].[AlinanCekKart] ([dtAlinisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BankaNoKey]
  ON [GUSTO00001].[AlinanCekKart] ([pBankaSubesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BorcluSeriKey]
  ON [GUSTO00001].[AlinanCekKart] ([pBorcluKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaVadeKey]
  ON [GUSTO00001].[AlinanCekKart] ([pSonKasaKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiliksizIslemID]
  ON [GUSTO00001].[AlinanCekKart] ([pKarsiliksizIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSonDurumHrkID]
  ON [GUSTO00001].[AlinanCekKart] ([pSonDurumHrkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTemCikIslemID]
  ON [GUSTO00001].[AlinanCekKart] ([pTemCikIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00001].[AlinanCekKart] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VadeKey]
  ON [GUSTO00001].[AlinanCekKart] ([dtVadeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO