CREATE TABLE [GUSTO00003].[EB_Mukellefler] (
  [EB_Mukellefler_rowid] [int] IDENTITY,
  [sVergiKimlikNo] [varchar](20) NULL DEFAULT (''),
  [sUnvan] [varchar](1024) NULL DEFAULT (''),
  [sUnvanDevam] [varchar](1024) NULL DEFAULT (''),
  [sTcKimlikNo] [varchar](20) NULL DEFAULT (''),
  [sTicaretSicilNo] [varchar](64) NULL DEFAULT (''),
  [sEposta] [varchar](256) NULL DEFAULT (''),
  [sTelAlanKodu] [varchar](3) NULL DEFAULT (''),
  [sTelNo] [varchar](256) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EB_Mukellefler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO