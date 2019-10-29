CREATE TABLE [GUSTO00003].[KKMSAVeriDeneme] (
  [KKMSAVeriDeneme_rowid] [int] IDENTITY,
  [pMSAVeriBaslik] [int] NULL DEFAULT (0),
  [nDenemeNo] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKMSAVeriDeneme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MSAVeriBaslikDenemeNo]
  ON [GUSTO00003].[KKMSAVeriDeneme] ([pMSAVeriBaslik], [nDenemeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pMSAVeriBaslik]
  ON [GUSTO00003].[KKMSAVeriDeneme] ([pMSAVeriBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO