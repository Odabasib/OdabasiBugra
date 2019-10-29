CREATE TABLE [GUSTO00005].[EDICikisDosyaTanim] (
  [EDICikisDosyaTanim_rowid] [int] IDENTITY,
  [sTanimAdi] [varchar](49) NULL DEFAULT (''),
  [nMiktarHassasiyeti] [int] NULL DEFAULT (0),
  [sMiktarAyiraci] [char](1) NULL,
  [nFiyatHassasiyeti] [int] NULL DEFAULT (0),
  [sFiyatAyiraci] [char](1) NULL,
  [bKDVliFiyat] [bit] NULL DEFAULT (0),
  [sSabitMetin] [varchar](74) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDICikisDosyaTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO