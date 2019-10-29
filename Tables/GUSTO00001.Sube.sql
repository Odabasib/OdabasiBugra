CREATE TABLE [GUSTO00001].[Sube] (
  [Sube_rowid] [int] IDENTITY,
  [KisaAdi] [varchar](20) NOT NULL DEFAULT (''),
  [Adi] [varchar](120) NOT NULL DEFAULT (''),
  [Adresi] [varchar](240) NULL DEFAULT (''),
  [Email] [varchar](80) NULL DEFAULT (''),
  [Faks] [varchar](20) NULL DEFAULT (''),
  [PostaKodu] [varchar](10) NULL DEFAULT (''),
  [Sehir] [varchar](20) NULL DEFAULT (''),
  [Telefon1] [varchar](20) NULL DEFAULT (''),
  [Telefon2] [varchar](20) NULL DEFAULT (''),
  [Telefon3] [varchar](20) NULL DEFAULT (''),
  [Teleks] [varchar](20) NULL DEFAULT (''),
  [VergiDairesi] [varchar](30) NULL DEFAULT (''),
  [VergiNumarasi] [varchar](30) NULL DEFAULT (''),
  [WebAdresi] [varchar](250) NULL DEFAULT (''),
  [nSira] [smallint] NOT NULL DEFAULT (0),
  [SubeSembolu] [varchar](10) NOT NULL DEFAULT ('X'),
  [SubeId] [bigint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Sube_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KisaAdi]
  ON [GUSTO00001].[Sube] ([KisaAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [nSira]
  ON [GUSTO00001].[Sube] ([nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SubeId]
  ON [GUSTO00001].[Sube] ([SubeId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO