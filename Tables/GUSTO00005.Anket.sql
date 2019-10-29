CREATE TABLE [GUSTO00005].[Anket] (
  [Anket_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [sAnketKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sAnketAdi] [varchar](60) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [nSoruSayisi] [int] NULL DEFAULT (0),
  [cDolduracakKisi] [char](1) NOT NULL DEFAULT (' '),
  [cAnketTuru] [char](1) NOT NULL DEFAULT ('P'),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Anket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cDolduracakKisi]
  ON [GUSTO00005].[Anket] ([cDolduracakKisi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAnketAdi]
  ON [GUSTO00005].[Anket] ([sAnketAdi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAnketKodu]
  ON [GUSTO00005].[Anket] ([sAnketKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO