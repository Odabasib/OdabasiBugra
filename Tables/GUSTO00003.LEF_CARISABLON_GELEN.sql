﻿CREATE TABLE [GUSTO00003].[LEF_CARISABLON_GELEN] (
  [LEF_CARISABLON_GELEN_ROWID] [int] IDENTITY,
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NULL DEFAULT (0),
  [SFATURASERI] [varchar](50) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEF_CARISABLON_GELEN_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEFCARISABLONGELEN]
  ON [GUSTO00003].[LEF_CARISABLON_GELEN] ([PSABLON], [PCARIID], [SFATURASERI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO