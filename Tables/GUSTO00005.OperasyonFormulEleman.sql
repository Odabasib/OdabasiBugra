CREATE TABLE [GUSTO00005].[OperasyonFormulEleman] (
  [OperasyonFormulEleman_rowid] [int] IDENTITY,
  [pOperasyon] [int] NOT NULL DEFAULT (0),
  [cElemanTuru] [char](1) NOT NULL DEFAULT (' '),
  [nElemanSira] [tinyint] NULL DEFAULT (0),
  [nElemanNormalGeneric] [tinyint] NULL DEFAULT (0),
  [nElemanAddr] [tinyint] NOT NULL DEFAULT (0),
  [nSatirSira] [tinyint] NOT NULL DEFAULT (0),
  [nSatirTuru] [tinyint] NOT NULL DEFAULT (0),
  [cIslem] [char](1) NULL DEFAULT (' '),
  [cDegiskenTuru] [char](1) NULL DEFAULT (' '),
  [nDegiskenSira] [tinyint] NULL DEFAULT (0),
  [nDegiskenNormalGeneric] [tinyint] NULL DEFAULT (0),
  [nDegiskenAddr] [tinyint] NULL DEFAULT (0),
  [ldSabitDeger] [decimal](22, 2) NULL DEFAULT (0),
  [sFonksiyon] [varchar](5) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OperasyonFormulEleman_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [OperasyonElemanKey]
  ON [GUSTO00005].[OperasyonFormulEleman] ([pOperasyon], [cElemanTuru], [nElemanAddr], [nElemanNormalGeneric], [nElemanSira], [nSatirSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOperasyon]
  ON [GUSTO00005].[OperasyonFormulEleman] ([pOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO