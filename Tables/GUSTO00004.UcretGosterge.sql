CREATE TABLE [GUSTO00004].[UcretGosterge] (
  [UcretGosterge_rowid] [int] IDENTITY,
  [dtBastar] [smalldatetime] NOT NULL,
  [pGorevTanimlari] [int] NOT NULL DEFAULT (0),
  [nBasamak] [int] NOT NULL DEFAULT (0),
  [nHizmetYili] [int] NOT NULL DEFAULT (0),
  [ldUcretGostergesi] [decimal](22, 2) NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UcretGosterge_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UcretGostergeBastarKey]
  ON [GUSTO00004].[UcretGosterge] ([dtBastar], [pGorevTanimlari], [nBasamak], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO