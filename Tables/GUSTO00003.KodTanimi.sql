CREATE TABLE [GUSTO00003].[KodTanimi] (
  [KodTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [MaxSeviye] [int] NULL DEFAULT (0),
  [Serbest] [int] NULL DEFAULT (0),
  [Maske1] [varchar](40) NULL DEFAULT (''),
  [Maske2] [varchar](40) NULL DEFAULT (''),
  [Maske3] [varchar](40) NULL DEFAULT (''),
  [Maske4] [varchar](40) NULL DEFAULT (''),
  [Maske5] [varchar](40) NULL DEFAULT (''),
  [Maske6] [varchar](40) NULL DEFAULT (''),
  [Maske7] [varchar](40) NULL DEFAULT (''),
  [Maske8] [varchar](40) NULL DEFAULT (''),
  [Maske9] [varchar](40) NULL DEFAULT (''),
  [Maske10] [varchar](40) NULL DEFAULT (''),
  [Maske11] [varchar](40) NULL DEFAULT (''),
  [Maske12] [varchar](40) NULL DEFAULT (''),
  [SeviyeAdi1] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi2] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi3] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi4] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi5] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi6] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi7] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi8] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi9] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi10] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi11] [varchar](20) NULL DEFAULT (''),
  [SeviyeAdi12] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([KodTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [nModul]
  ON [GUSTO00003].[KodTanimi] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO