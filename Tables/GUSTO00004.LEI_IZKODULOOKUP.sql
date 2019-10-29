﻿CREATE TABLE [GUSTO00004].[LEI_IZKODULOOKUP] (
  [LEI_IZKODULOOKUP_ROWID] [int] IDENTITY,
  [PCARI] [int] NULL DEFAULT (0),
  [UBLFIELDNAME] [varchar](255) NULL DEFAULT (''),
  [UBLFIELDVALUE] [varchar](600) NULL DEFAULT (''),
  [CTUR] [char](1) NULL DEFAULT ('S'),
  [PSTOKHIZMET] [int] NULL DEFAULT (0),
  [PIZLEMEKODU] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LEI_IZKODULOOKUP_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [INDSTOKLOOKUP]
  ON [GUSTO00004].[LEI_IZKODULOOKUP] ([PCARI], [PSTOKHIZMET], [PIZLEMEKODU], [UBLFIELDVALUE])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO