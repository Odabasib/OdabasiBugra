CREATE TABLE [GUSTO00005].[Repo] (
  [Repo_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [lSeriNo] [int] NOT NULL DEFAULT (0),
  [sRefNo] [varchar](20) NULL DEFAULT (''),
  [pBanka] [int] NOT NULL DEFAULT (0),
  [dtRepoTarihi] [smalldatetime] NOT NULL,
  [dtDonusTarihi] [smalldatetime] NOT NULL,
  [ldFaizOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldGVK] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSDF] [decimal](22, 2) NULL DEFAULT (0),
  [cFaizNetBrut] [char](1) NOT NULL DEFAULT (' '),
  [cAlacakliTuru] [char](1) NOT NULL DEFAULT (' '),
  [pAlacakliKodu] [int] NOT NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldDonusTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldDonusDovizTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldDovizTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [pDovizYeri] [int] NOT NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NOT NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldsdDonusTutari] [decimal](22, 2) NOT NULL DEFAULT (0),
  [sAciklamaYatirma] [varchar](60) NULL DEFAULT (''),
  [sAciklamaCekme] [varchar](60) NULL DEFAULT (''),
  [cBorcluTuru] [char](1) NULL DEFAULT (' '),
  [pBorcluKodu] [int] NULL DEFAULT (0),
  [pIslemIDYatirma] [int] NOT NULL DEFAULT (0),
  [pIslemIDCekme] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Repo_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BankaTarihKey]
  ON [GUSTO00005].[Repo] ([pBanka], [dtRepoTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemIDCekme]
  ON [GUSTO00005].[Repo] ([pIslemIDCekme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIslemIDYatirma]
  ON [GUSTO00005].[Repo] ([pIslemIDYatirma], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriKey]
  ON [GUSTO00005].[Repo] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO