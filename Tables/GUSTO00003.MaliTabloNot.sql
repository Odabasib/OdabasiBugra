CREATE TABLE [GUSTO00003].[MaliTabloNot] (
  [MaliTabloNot_rowid] [int] IDENTITY,
  [pMaliTabloKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](500) NULL DEFAULT (''),
  [sBelgeLink] [varchar](250) NULL DEFAULT (''),
  [sBelgeObject] [varchar](500) NULL DEFAULT (''),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MaliTabloNot_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO