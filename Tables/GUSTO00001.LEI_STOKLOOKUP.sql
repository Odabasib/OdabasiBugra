﻿CREATE TABLE [GUSTO00001].[LEI_STOKLOOKUP] (
  [LEI_STOKLOOKUP_ROWID] [int] IDENTITY,
  [PCARI] [int] NULL DEFAULT (0),
  [UBLFIELDNAME] [varchar](255) NULL DEFAULT (''),
  [UBLFIELDVALUE] [varchar](600) NULL DEFAULT (''),
  [CTUR] [char](1) NULL DEFAULT ('S'),
  [PSTOKHIZMET] [int] NULL DEFAULT (0),
  [PDEPOKODU] [int] NULL DEFAULT (0),
  [PIZLEMEKODU] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LEI_STOKLOOKUP_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [INDSTOKLOOKUP]
  ON [GUSTO00001].[LEI_STOKLOOKUP] ([PCARI], [UBLFIELDNAME], [UBLFIELDVALUE])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO