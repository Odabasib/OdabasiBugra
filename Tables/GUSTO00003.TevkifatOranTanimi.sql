CREATE TABLE [GUSTO00003].[TevkifatOranTanimi] (
  [TevkifatOranTanimi_rowid] [int] IDENTITY,
  [sTanimKodu] [varchar](60) NULL DEFAULT (''),
  [sTanimAdi] [varchar](60) NULL DEFAULT (''),
  [nFaturaTuru] [int] NULL DEFAULT (0),
  [cStokHizmetDemirbas] [char](1) NULL DEFAULT ('S'),
  [ldOranCarpani] [decimal](22, 2) NULL DEFAULT (0),
  [ldOranBoleni] [decimal](22, 2) NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [bAktif] [bit] NULL DEFAULT (0),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([TevkifatOranTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TevkifatOranKodAd]
  ON [GUSTO00003].[TevkifatOranTanimi] ([nFaturaTuru], [cStokHizmetDemirbas], [sTanimKodu], [sTanimAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO