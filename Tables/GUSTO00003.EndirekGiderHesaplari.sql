CREATE TABLE [GUSTO00003].[EndirekGiderHesaplari] (
  [EndirekGiderHesaplari_rowid] [int] IDENTITY,
  [sAdi] [varchar](60) NULL DEFAULT (''),
  [sAciklama] [varchar](2048) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT (' '),
  [bSinaiMaliyet] [bit] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EndirekGiderHesaplari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cTur]
  ON [GUSTO00003].[EndirekGiderHesaplari] ([cTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAdi]
  ON [GUSTO00003].[EndirekGiderHesaplari] ([sAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO