CREATE TABLE [GUSTO00003].[BorcSenediKart] (
  [BorcSenediKart_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lSeriNo] [int] NULL DEFAULT (0),
  [sBankaRefNo] [varchar](30) NULL DEFAULT (''),
  [sBorcSenNo] [varchar](20) NULL DEFAULT (''),
  [cAlacakliTuru] [char](1) NULL DEFAULT (' '),
  [pAlacakliKodu] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [dtDuzenlemeTarihi] [smalldatetime] NULL,
  [dtVerilisTarihi] [smalldatetime] NULL,
  [dtVadeTarihi] [smalldatetime] NULL,
  [dtSonOdemeTarihi] [smalldatetime] NULL,
  [sSenediDuzenleyen] [varchar](50) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](50) NULL DEFAULT (''),
  [sVergiNo] [varchar](50) NULL DEFAULT (''),
  [bAvansMi] [bit] NULL DEFAULT (0),
  [cTeminatMi] [char](1) NULL DEFAULT (' '),
  [nTeminatSekli] [tinyint] NOT NULL DEFAULT (0),
  [dtTeminattanCikis] [smalldatetime] NULL,
  [pTemCikIslemID] [int] NULL DEFAULT (0),
  [cProtestoluMu] [char](1) NULL DEFAULT (' '),
  [sYetkiliMahkeme] [varchar](30) NULL DEFAULT (''),
  [cSonDurum] [varchar](3) NULL DEFAULT (''),
  [pSonDurumHrkID] [int] NULL DEFAULT (0),
  [dtProtestoTarihi] [smalldatetime] NULL,
  [pProtestoIslemID] [int] NULL DEFAULT (0),
  [pKasaKoduCikis] [int] NULL DEFAULT (0),
  [cOdemeSekli] [char](1) NULL DEFAULT (' '),
  [dtValor] [smalldatetime] NULL,
  [pSCBirlesim] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BorcSenediKart_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AlacakliSeriKey]
  ON [GUSTO00003].[BorcSenediKart] ([pAlacakliKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaVerilisTarKey]
  ON [GUSTO00003].[BorcSenediKart] ([pKasaKoduCikis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pProtestoIslemID]
  ON [GUSTO00003].[BorcSenediKart] ([pProtestoIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSonDurumHrkID]
  ON [GUSTO00003].[BorcSenediKart] ([pSonDurumHrkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTemCikIslemID]
  ON [GUSTO00003].[BorcSenediKart] ([pTemCikIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00003].[BorcSenediKart] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VadeKey]
  ON [GUSTO00003].[BorcSenediKart] ([dtVadeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VerilisTarKey]
  ON [GUSTO00003].[BorcSenediKart] ([dtVerilisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO