CREATE TABLE [GUSTO00001].[PersonelAilesi] (
  [PersonelAilesi_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [nKim] [tinyint] NULL DEFAULT (0),
  [sAdi] [varchar](30) NULL DEFAULT (''),
  [sSoyadi] [varchar](30) NULL DEFAULT (''),
  [sMeslegi] [varchar](60) NULL DEFAULT (''),
  [nCinsiyeti] [tinyint] NULL DEFAULT (0),
  [nAskerlikDurumu] [int] NULL DEFAULT (0),
  [bCalisiyor] [bit] NULL DEFAULT (0),
  [dtDogumTarihi] [smalldatetime] NULL,
  [sDogumYeri] [varchar](30) NULL DEFAULT (''),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [sCuzdanSeriNo] [varchar](15) NULL DEFAULT (''),
  [sMernisNo] [varchar](11) NULL DEFAULT (''),
  [bAsgariIndDahil] [bit] NULL DEFAULT (0),
  [sBabaAdi] [varchar](30) NULL DEFAULT (''),
  [sAnaAdi] [varchar](30) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelAilesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PAIL_PersKey]
  ON [GUSTO00001].[PersonelAilesi] ([pPersonelKodu], [nKim], [sAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO