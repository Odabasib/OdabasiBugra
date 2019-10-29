CREATE TABLE [GUSTO00003].[GenelVirman] (
  [GenelVirman_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NOT NULL,
  [dtVadeTarihi] [smalldatetime] NULL,
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [sRefNo] [varchar](20) NULL DEFAULT (''),
  [lSeriNo] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pIslemID] [int] NOT NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bMaasOdeme] [bit] NULL DEFAULT (0),
  [nIslemTuru] [smallint] NULL DEFAULT (0),
  [nEDefterBelgeTuru] [smallint] NULL DEFAULT (0),
  [sEDefterBelgeTurAciklama] [varchar](60) NULL DEFAULT (''),
  [sEDefterOdemeSekli] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GenelVirman_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00003].[GenelVirman] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00003].[GenelVirman] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihSeriKey]
  ON [GUSTO00003].[GenelVirman] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO