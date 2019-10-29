CREATE TABLE [GUSTO00003].[DirekGiderHesaplari] (
  [DirekGiderHesaplari_rowid] [int] IDENTITY,
  [sAdi] [varchar](60) NULL DEFAULT (''),
  [bDegisken] [bit] NOT NULL DEFAULT (0),
  [pBirim] [int] NOT NULL DEFAULT (0),
  [pGiderTuruKodu] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](2048) NULL DEFAULT (''),
  [bSinaiMaliyet] [bit] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DirekGiderHesaplari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [bDegisken]
  ON [GUSTO00003].[DirekGiderHesaplari] ([bDegisken])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAdi]
  ON [GUSTO00003].[DirekGiderHesaplari] ([sAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO