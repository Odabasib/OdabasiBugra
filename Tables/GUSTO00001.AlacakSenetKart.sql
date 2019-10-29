CREATE TABLE [GUSTO00001].[AlacakSenetKart] (
  [AlacakSenetKart_rowid] [int] IDENTITY,
  [sSenetSeri] [varchar](20) NULL DEFAULT (''),
  [lSenetNo] [int] NULL DEFAULT (0),
  [sBankaRefNo] [varchar](30) NULL DEFAULT (''),
  [sAlSenNo] [varchar](20) NULL DEFAULT (''),
  [cBorcluTuru] [char](1) NULL DEFAULT (' '),
  [pBorcluKodu] [int] NULL DEFAULT (0),
  [ldSenetTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizSenetTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [dtDuzenlemeTarihi] [smalldatetime] NULL,
  [dtAlinisTarihi] [smalldatetime] NULL,
  [dtVadesi] [smalldatetime] NULL,
  [dtSonOdemeTarihi] [smalldatetime] NULL,
  [sSenediDuzenleyen] [varchar](50) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](50) NULL DEFAULT (''),
  [sVergiNo] [varchar](50) NULL DEFAULT (''),
  [bAvansMi] [bit] NULL DEFAULT (0),
  [cTeminatMi] [char](1) NULL DEFAULT (' '),
  [nTeminatSekli] [tinyint] NOT NULL DEFAULT (0),
  [dtTeminattanCikis] [smalldatetime] NULL,
  [pTemCikIslemID] [int] NULL DEFAULT (0),
  [bCiroMi] [bit] NULL DEFAULT (0),
  [sCiroEdilen] [varchar](60) NULL DEFAULT (''),
  [cProtestoluMu] [char](1) NULL DEFAULT (' '),
  [ldPulTutari] [decimal](22, 2) NULL DEFAULT (0),
  [cPulMasrafKarsiTur] [char](1) NULL DEFAULT (' '),
  [pPulMasrafKrsHrk] [int] NULL DEFAULT (0),
  [ldMevcutPulMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [sYetkiliMahkeme] [varchar](30) NULL DEFAULT (''),
  [sSenetSonDurumKodu] [varchar](3) NULL DEFAULT (''),
  [pSonDurumHrkID] [int] NULL DEFAULT (0),
  [dtProtestoTarihi] [smalldatetime] NULL,
  [pProtestoIslemID] [int] NULL DEFAULT (0),
  [pSonKasa] [int] NULL DEFAULT (0),
  [cOdemeSekli] [char](1) NULL DEFAULT (' '),
  [sAdinaDuzenlenen] [varchar](50) NULL DEFAULT (''),
  [dtValor] [smalldatetime] NULL,
  [pSCBirlesim] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlacakSenetKart_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AlisTarKey]
  ON [GUSTO00001].[AlacakSenetKart] ([dtAlinisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [BorcluAlisTarKey]
  ON [GUSTO00001].[AlacakSenetKart] ([pBorcluKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaAlisTarKey]
  ON [GUSTO00001].[AlacakSenetKart] ([pSonKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaVadeKey]
  ON [GUSTO00001].[AlacakSenetKart] ([pSonKasa], [dtVadesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pProtestoIslemID]
  ON [GUSTO00001].[AlacakSenetKart] ([pProtestoIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSonDurumHrkID]
  ON [GUSTO00001].[AlacakSenetKart] ([pSonDurumHrkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTemCikIslemID]
  ON [GUSTO00001].[AlacakSenetKart] ([pTemCikIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00001].[AlacakSenetKart] ([lSenetNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VadeKey]
  ON [GUSTO00001].[AlacakSenetKart] ([dtVadesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO