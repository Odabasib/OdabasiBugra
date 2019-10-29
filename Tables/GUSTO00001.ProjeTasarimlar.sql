CREATE TABLE [GUSTO00001].[ProjeTasarimlar] (
  [ProjeTasarimlar_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [pOperasyon] [int] NULL DEFAULT (0),
  [bGrafiker] [bit] NULL DEFAULT (0),
  [bMusteriTemsilcisi] [bit] NULL DEFAULT (0),
  [ldSure] [decimal](22, 2) NULL DEFAULT (0),
  [ldMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldKar] [decimal](22, 2) NULL DEFAULT (0),
  [nSira] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeTasarimlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO