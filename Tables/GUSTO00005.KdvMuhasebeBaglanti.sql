CREATE TABLE [GUSTO00005].[KdvMuhasebeBaglanti] (
  [KdvMuhasebeBaglanti_rowid] [int] IDENTITY,
  [sTanimAdi] [varchar](20) NULL DEFAULT (''),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [nAlisSatis] [int] NULL DEFAULT (0),
  [ldKdvOranMin] [decimal](22, 2) NULL DEFAULT (0),
  [ldKdvOranMax] [decimal](22, 2) NULL DEFAULT (0),
  [pMuhasebeKodu] [int] NULL DEFAULT (0),
  [bSerbest] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KdvMuhasebeBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO