CREATE TABLE [GUSTO00001].[YazarkasaUrunAyrinti] (
  [YazarkasaUrunAyrinti_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [sPlu] [varchar](8) NULL DEFAULT (''),
  [sEan] [varchar](13) NULL DEFAULT (''),
  [nEanTipi] [int] NULL DEFAULT (0),
  [nKisim] [int] NOT NULL DEFAULT (0),
  [nStokHizmet] [smallint] NULL DEFAULT (0),
  [sKasaKodu] [varchar](6) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YazarkasaUrunAyrinti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO