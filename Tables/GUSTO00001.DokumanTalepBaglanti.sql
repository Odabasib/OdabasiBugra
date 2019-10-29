CREATE TABLE [GUSTO00001].[DokumanTalepBaglanti] (
  [DokumanTalepBaglanti_rowid] [int] IDENTITY,
  [pDegisTalep] [int] NULL DEFAULT (0),
  [pDokuman] [int] NULL DEFAULT (0),
  [bAktarildi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DokumanTalepBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO