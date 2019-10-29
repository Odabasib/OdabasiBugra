CREATE TABLE [GUSTO00003].[EgitimPlan] (
  [EgitimPlan_rowid] [int] IDENTITY,
  [sEgitimciAdi] [varchar](50) NULL DEFAULT (''),
  [pEgitimci] [int] NULL DEFAULT (0),
  [pEgitimKodu] [int] NOT NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NOT NULL,
  [dtBitisTarihi] [smalldatetime] NOT NULL,
  [tmBaslamaSaati] [int] NOT NULL DEFAULT (0),
  [tmBitisSaati] [int] NOT NULL DEFAULT (0),
  [sRefNo] [varchar](50) NULL DEFAULT (''),
  [bKurumIci] [tinyint] NOT NULL DEFAULT (0),
  [pBirim] [int] NOT NULL DEFAULT (0),
  [sSinif] [varchar](50) NULL DEFAULT (''),
  [sOzellikler] [varchar](50) NULL DEFAULT (''),
  [sKonu] [varchar](100) NULL DEFAULT (''),
  [sAmac] [varchar](100) NULL DEFAULT (''),
  [sAciklama] [varchar](100) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [sIcerik] [varchar](255) NULL DEFAULT (''),
  [sNot] [varchar](255) NULL DEFAULT (''),
  [pEgitimciAnketi] [int] NULL DEFAULT (0),
  [pKatilimciAnketi] [int] NULL DEFAULT (0),
  [pEgitimAnketi] [int] NULL DEFAULT (0),
  [nEgitimDurum] [tinyint] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [tmEgitimSuresi] [int] NOT NULL DEFAULT (0),
  [ldToplamSure] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EgitimPlan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [EgitimEgitimci]
  ON [GUSTO00003].[EgitimPlan] ([pEgitimci], [pEgitimKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sEgitimciAdi]
  ON [GUSTO00003].[EgitimPlan] ([sEgitimciAdi], [pEgitimKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO