﻿CREATE TABLE [GUSTO00003].[GenelAciklama] (
  [GenelAciklama_rowid] [int] IDENTITY,
  [sGenelAciklama] [varchar](60) NULL DEFAULT (''),
  [nModul] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GenelAciklama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [GenelAciklamaKey]
  ON [GUSTO00003].[GenelAciklama] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sGenelAciklama]
  ON [GUSTO00003].[GenelAciklama] ([sGenelAciklama])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO