CREATE TABLE [Gusto].[Kilit] (
  [Kilit_rowid] [int] IDENTITY,
  [pFirma] [int] NULL DEFAULT (0),
  [nNesneTuru] [tinyint] NULL DEFAULT (0),
  [lExtraKey] [int] NULL DEFAULT (0),
  [pNesneAddr] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [nKilitTuru] [tinyint] NULL DEFAULT (0),
  [tmLocked] [int] NULL DEFAULT (0),
  [dtLocked] [smalldatetime] NULL,
  [sBilgisayarAdi] [varchar](15) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [sKod] [varchar](61) NULL DEFAULT (''),
  [pProcessId] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Kilit_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KilitKey]
  ON [Gusto].[Kilit] ([pFirma], [nNesneTuru], [lExtraKey], [pNesneAddr])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO