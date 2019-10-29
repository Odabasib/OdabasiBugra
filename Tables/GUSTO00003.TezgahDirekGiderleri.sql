CREATE TABLE [GUSTO00003].[TezgahDirekGiderleri] (
  [TezgahDirekGiderleri_rowid] [int] IDENTITY,
  [pOperasyon] [int] NULL DEFAULT (0),
  [pTezgahTezgahSinifiKodu] [int] NULL DEFAULT (0),
  [pSabitKymKodu] [int] NULL DEFAULT (0),
  [cTezgahTezgahSinifi] [char](1) NOT NULL DEFAULT (' '),
  [pDirekHesapKodu] [int] NOT NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [ldKullanimMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimOrani] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TezgahDirekGiderleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDirekHesapKodu]
  ON [GUSTO00003].[TezgahDirekGiderleri] ([pDirekHesapKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOperasyon]
  ON [GUSTO00003].[TezgahDirekGiderleri] ([pOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TezgahTezgahSinifi]
  ON [GUSTO00003].[TezgahDirekGiderleri] ([pTezgahTezgahSinifiKodu], [pSabitKymKodu], [cTezgahTezgahSinifi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO