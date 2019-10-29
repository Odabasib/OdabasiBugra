CREATE TABLE [GUSTO00001].[KaliteToplantiKarar] (
  [KaliteToplantiKarar_rowid] [int] IDENTITY,
  [cKaynakTuru] [char](1) NULL DEFAULT (' '),
  [pKaynak] [int] NULL DEFAULT (0),
  [sKarar] [text] NULL DEFAULT (''),
  [pSorumlu] [int] NULL DEFAULT (0),
  [dtPlanlama] [smalldatetime] NULL,
  [dtGerceklesme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KaliteToplantiKarar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO