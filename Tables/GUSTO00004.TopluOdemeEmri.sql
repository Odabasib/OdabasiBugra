CREATE TABLE [GUSTO00004].[TopluOdemeEmri] (
  [TopluOdemeEmri_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sRefNo] [varchar](30) NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TopluOdemeEmri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00004].[TopluOdemeEmri] ([sSeri], [lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO