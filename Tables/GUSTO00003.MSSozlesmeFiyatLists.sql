CREATE TABLE [GUSTO00003].[MSSozlesmeFiyatLists] (
  [MSSozlesmeFiyatLists_rowid] [int] IDENTITY,
  [pMSSozlesme] [int] NULL DEFAULT (0),
  [pFiyatLstAd] [int] NULL DEFAULT (0),
  [ldEkIskontoOrani] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSSozlesmeFiyatLists_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SozlesmeFiyatLst]
  ON [GUSTO00003].[MSSozlesmeFiyatLists] ([pMSSozlesme], [pFiyatLstAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO