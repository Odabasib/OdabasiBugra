CREATE TABLE [GUSTO00003].[BESServisTanimi] (
  [BESServisTanimi_rowid] [int] IDENTITY,
  [pSigortaSirketi] [int] NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [sIsverenVergiKimlikNo] [varchar](30) NULL DEFAULT (''),
  [sServisKullaniciAdi] [varchar](500) NULL DEFAULT (''),
  [sServisKullaniciSifre] [varchar](50) NULL DEFAULT (''),
  [bAktif] [bit] NULL DEFAULT (0),
  [sEkBilgi1] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi2] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi3] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi4] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi5] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi6] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi7] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi8] [varchar](500) NULL DEFAULT (''),
  [sEkBilgi9] [varchar](500) NULL DEFAULT (''),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BESServisTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [bAktif]
  ON [GUSTO00003].[BESServisTanimi] ([bAktif])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO