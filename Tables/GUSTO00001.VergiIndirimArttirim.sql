CREATE TABLE [GUSTO00001].[VergiIndirimArttirim] (
  [VergiIndirimArttirim_rowid] [int] IDENTITY,
  [cIndirimArttirim] [char](1) NOT NULL DEFAULT (' '),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [bAktif] [bit] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [bDegisken] [bit] NULL DEFAULT (0),
  [bLimitsiz] [bit] NULL DEFAULT (0),
  [ldLimitYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [bIsverenOder] [bit] NULL DEFAULT (0),
  [bSSKMatrahinaTabi] [bit] NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NULL DEFAULT (0),
  [pDigerFinansHesabi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VergiIndirimArttirim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO