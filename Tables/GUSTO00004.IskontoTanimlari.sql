CREATE TABLE [GUSTO00004].[IskontoTanimlari] (
  [IskontoTanimlari_rowid] [int] IDENTITY,
  [sAdi] [varchar](60) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [cYuvarlamaTuru] [char](1) NULL DEFAULT (' '),
  [nYuvarlamaHassasiyeti] [smallint] NULL DEFAULT (0),
  [nTumKullanicilar] [smallint] NULL DEFAULT (0),
  [nTumCariler] [smallint] NULL DEFAULT (0),
  [nTumStoklar] [smallint] NULL DEFAULT (0),
  [bOndegerMi] [bit] NULL DEFAULT (0),
  [bOranAralikKontrollu] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IskontoTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAdi]
  ON [GUSTO00004].[IskontoTanimlari] ([sAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO