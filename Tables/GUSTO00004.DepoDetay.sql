CREATE TABLE [GUSTO00004].[DepoDetay] (
  [DepoDetay_rowid] [int] IDENTITY,
  [pDepoKodu] [int] NULL DEFAULT (0),
  [sDepoAdresi] [varchar](120) NULL DEFAULT (''),
  [sDepoUlke] [varchar](50) NULL DEFAULT (''),
  [sDepoSehir] [varchar](30) NULL DEFAULT (''),
  [pSehirKodu] [int] NULL DEFAULT (0),
  [sTelefonNo1] [varchar](20) NULL DEFAULT (''),
  [sTelefonNo2] [varchar](20) NULL DEFAULT (''),
  [sTelefonNo3] [varchar](20) NULL DEFAULT (''),
  [sFaxNo1] [varchar](20) NULL DEFAULT (''),
  [sFaxNo2] [varchar](20) NULL DEFAULT (''),
  [sPostaKodu] [varchar](10) NULL DEFAULT (''),
  [nGirisHareketleri] [int] NULL DEFAULT (0),
  [nCikisHareketleri] [int] NULL DEFAULT (0),
  [bMRPYeDahilEtme] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DepoDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [DepoKodu]
  ON [GUSTO00004].[DepoDetay] ([pDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO