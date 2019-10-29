CREATE TABLE [GUSTO00005].[MSBankaHesaplari] (
  [MSBankaHesaplari_rowid] [int] IDENTITY,
  [cCariTuru] [char](1) NULL DEFAULT ('C'),
  [pCari] [int] NOT NULL DEFAULT (0),
  [pBankaSubesi] [int] NOT NULL DEFAULT (0),
  [sHesapNo] [varchar](25) NULL DEFAULT (''),
  [pDoviz] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [cHesapTuru] [char](1) NULL DEFAULT (' '),
  [ldKDBSKullanilabilirLimit] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSGuncelKulLimit] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSMusteriLimit] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSLimitAsimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSBekleyen] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSBekleyenSevk] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSBekleyenFatura] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDBSKredidenKullanilan] [decimal](22, 2) NULL DEFAULT (0),
  [nKDBSBankaOncelik] [int] NULL DEFAULT (0),
  [dtGuncellemeTarihi] [smalldatetime] NULL,
  [tmGuncellemeZamani] [int] NULL DEFAULT (0),
  [sIBAN] [varchar](50) NULL DEFAULT (''),
  [sAraciBanka] [varchar](250) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSBankaHesaplari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBankaSubesi]
  ON [GUSTO00005].[MSBankaHesaplari] ([pBankaSubesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pCari]
  ON [GUSTO00005].[MSBankaHesaplari] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO