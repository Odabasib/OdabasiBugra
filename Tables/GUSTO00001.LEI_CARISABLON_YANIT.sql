﻿CREATE TABLE [GUSTO00001].[LEI_CARISABLON_YANIT] (
  [LEI_CARISABLON_YANIT_ROWID] [int] IDENTITY,
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NULL DEFAULT (0),
  [SIRSALIYESERI] [varchar](50) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEI_CARISABLON_YANIT_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEICARISABLON]
  ON [GUSTO00001].[LEI_CARISABLON_YANIT] ([PSABLON], [PCARIID], [SIRSALIYESERI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO