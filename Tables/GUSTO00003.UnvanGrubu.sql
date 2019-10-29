﻿CREATE TABLE [GUSTO00003].[UnvanGrubu] (
  [UnvanGrubu_rowid] [int] IDENTITY,
  [sUnvanGrubu] [varchar](30) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UnvanGrubu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sUnvanGrubu]
  ON [GUSTO00003].[UnvanGrubu] ([sUnvanGrubu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO