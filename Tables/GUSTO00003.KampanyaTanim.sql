CREATE TABLE [GUSTO00003].[KampanyaTanim] (
  [KampanyaTanim_rowid] [int] IDENTITY,
  [sKampanyaAdi] [varchar](60) NULL DEFAULT (''),
  [sKampanyaKodu] [varchar](16) NULL DEFAULT (''),
  [sKampanyaAciklama] [varchar](120) NULL DEFAULT (''),
  [dtBaslangic] [smalldatetime] NULL,
  [dtBitis] [smalldatetime] NULL,
  [nTumCariler] [smallint] NULL DEFAULT (0),
  [ldToplamMiktar] [decimal](22) NULL DEFAULT (0),
  [nKacinciBirim] [smallint] NULL DEFAULT (0),
  [nBirkezKatlanarak] [smallint] NULL DEFAULT (0),
  [bSuresiz] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KampanyaTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO