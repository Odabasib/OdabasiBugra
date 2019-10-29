CREATE TABLE [GUSTO00003].[OdemeEmri] (
  [OdemeEmri_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [lSeriNo] [int] NOT NULL DEFAULT (0),
  [sBankaRefNo] [varchar](30) NULL DEFAULT (''),
  [sOdemeRefNo] [varchar](20) NULL DEFAULT (''),
  [pBanka] [int] NOT NULL DEFAULT (0),
  [cAlacakliTuru] [char](1) NOT NULL DEFAULT (' '),
  [pAlacakliKodu] [int] NOT NULL DEFAULT (0),
  [pAlacakliBankaSubesi] [int] NOT NULL DEFAULT (0),
  [sAlacakliHesapNo] [varchar](30) NULL DEFAULT (''),
  [sAlacakliIBAN] [varchar](50) NULL DEFAULT (''),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldSistemDovizTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldDovizTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [dtVerilisTarihi] [smalldatetime] NOT NULL,
  [dtVerilisValor] [smalldatetime] NOT NULL,
  [dtOdemeTarihi] [smalldatetime] NULL,
  [dtOdemeValor] [smalldatetime] NULL,
  [pDuzenleyen] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [bAvansMi] [bit] NULL DEFAULT (0),
  [nPersonelAvansTuru] [tinyint] NULL DEFAULT (0),
  [bTeminatMi] [bit] NULL DEFAULT (0),
  [pIslemIDVerilis] [int] NOT NULL DEFAULT (0),
  [pVerilisHareketi] [int] NULL DEFAULT (0),
  [pIslemIDOdeme] [int] NULL DEFAULT (0),
  [pOdemeHareketi] [int] NULL DEFAULT (0),
  [pTopluOdemeEmri] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OdemeEmri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIslemIDOdeme]
  ON [GUSTO00003].[OdemeEmri] ([pIslemIDOdeme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIslemIDVerilis]
  ON [GUSTO00003].[OdemeEmri] ([pIslemIDVerilis], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00003].[OdemeEmri] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VerilisTarKey]
  ON [GUSTO00003].[OdemeEmri] ([dtVerilisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO