CREATE TABLE [GUSTO00001].[OncelikTanimlari] (
  [OncelikTanimlari_rowid] [int] IDENTITY,
  [nOncelikNo] [tinyint] NULL DEFAULT (0),
  [sOncelikAdi] [varchar](30) NULL DEFAULT (''),
  [bVarsayilan] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OncelikTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nOncelikNo]
  ON [GUSTO00001].[OncelikTanimlari] ([nOncelikNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO