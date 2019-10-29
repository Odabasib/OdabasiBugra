CREATE TABLE [Gusto].[Modul] (
  [Modul_rowid] [int] IDENTITY,
  [ModulNumarasi] [smallint] NOT NULL DEFAULT (0),
  [Adi] [varchar](50) NULL DEFAULT (''),
  [Surum] [varchar](4) NULL DEFAULT (''),
  [AltSurum] [varchar](10) NULL DEFAULT (''),
  [bKodTanimi] [bit] NOT NULL DEFAULT (0),
  [IsaretSayisi1] [smallint] NOT NULL DEFAULT (0),
  [IsaretSayisi2] [smallint] NOT NULL DEFAULT (0),
  [IsaretSayisi3] [smallint] NOT NULL DEFAULT (0),
  [KultanSayisi1] [smallint] NOT NULL DEFAULT (0),
  [KultanSayisi2] [smallint] NOT NULL DEFAULT (0),
  [KultanSayisi3] [smallint] NOT NULL DEFAULT (0),
  [NotSayisi1] [smallint] NOT NULL DEFAULT (0),
  [NotSayisi2] [smallint] NOT NULL DEFAULT (0),
  [NotSayisi3] [smallint] NOT NULL DEFAULT (0),
  [OLESayisi1] [smallint] NOT NULL DEFAULT (0),
  [OLESayisi2] [smallint] NOT NULL DEFAULT (0),
  [OLESayisi3] [smallint] NOT NULL DEFAULT (0),
  [EkAlanSayisi1] [smallint] NOT NULL DEFAULT (0),
  [EkAlanSayisi2] [smallint] NOT NULL DEFAULT (0),
  [EkAlanSayisi3] [smallint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Modul_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ModulNumarasi]
  ON [Gusto].[Modul] ([ModulNumarasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO