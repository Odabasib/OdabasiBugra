CREATE TABLE [GUSTO00001].[GGMuhasebeKodlari] (
  [GGMuhasebeKodlari_rowid] [int] IDENTITY,
  [pGelirGiderYeriKodu] [int] NOT NULL DEFAULT (0),
  [pGelirGiderTuruKodu] [int] NOT NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NOT NULL DEFAULT (0),
  [nMuhasebeKoduTanimi] [smallint] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GGMuhasebeKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [GGMK_GGYerTurKey]
  ON [GUSTO00001].[GGMuhasebeKodlari] ([pGelirGiderYeriKodu], [pGelirGiderTuruKodu], [nMuhasebeKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO