CREATE TABLE [GUSTO00004].[OzelIsaretTanimi] (
  [OzelIsaretTanimi_rowid] [int] IDENTITY,
  [sTanimAdi] [varchar](30) NULL DEFAULT (''),
  [cVarsayilan] [char](1) NULL DEFAULT (' '),
  [nSira] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelIsaretTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO