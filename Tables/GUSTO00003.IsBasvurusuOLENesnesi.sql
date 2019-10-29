CREATE TABLE [GUSTO00003].[IsBasvurusuOLENesnesi] (
  [IsBasvurusuOLENesnesi_rowid] [int] IDENTITY,
  [sCaption] [varchar](30) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](255) NULL DEFAULT (''),
  [pOwnerID] [int] NULL DEFAULT (0),
  [pTanimID] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuOLENesnesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OwnerIDTanimIDKey]
  ON [GUSTO00003].[IsBasvurusuOLENesnesi] ([pOwnerID], [pTanimID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO