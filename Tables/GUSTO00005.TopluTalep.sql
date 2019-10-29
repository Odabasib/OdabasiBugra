CREATE TABLE [GUSTO00005].[TopluTalep] (
  [TopluTalep_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TopluTalep_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TarihSeriNoKey]
  ON [GUSTO00005].[TopluTalep] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TopluTalepSeriNoKey]
  ON [GUSTO00005].[TopluTalep] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO