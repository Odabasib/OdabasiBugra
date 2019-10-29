CREATE TABLE [GUSTO00004].[EnfMuhBilancoDonem] (
  [EnfMuhBilancoDonem_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NOT NULL,
  [ldDODK] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EnfMuhBilancoDonem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [dtBasTar]
  ON [GUSTO00004].[EnfMuhBilancoDonem] ([dtBasTar], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO