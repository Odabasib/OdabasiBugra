CREATE TABLE [GUSTO00001].[SabitKymTurleri] (
  [SabitKymTurleri_rowid] [int] IDENTITY,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [bKisitAmortisman] [bit] NULL DEFAULT (0),
  [cAmortismanSekli] [tinyint] NULL DEFAULT (0),
  [bYeniDegerTabi] [bit] NULL DEFAULT (0),
  [bEnabledKisitAmortisman] [bit] NULL DEFAULT (0),
  [bEnabledAmortismanSekli] [bit] NULL DEFAULT (0),
  [bEnabledYeniDegerTabi] [bit] NULL DEFAULT (0),
  [bGayriMenkul] [bit] NULL DEFAULT (0),
  [nAmortismanSuresi] [smallint] NULL DEFAULT (0),
  [ldAmortismanOrani] [decimal](22, 6) NULL DEFAULT (0),
  [sPozisyonNo] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SabitKymTurleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAd]
  ON [GUSTO00001].[SabitKymTurleri] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO