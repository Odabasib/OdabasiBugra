﻿CREATE TABLE [Gusto].[BPMAT_CG_3114] (
  [ROW_ID] [int] IDENTITY,
  [STABLENAME] [varchar](50) NULL,
  [PTABLEROWID] [int] NULL DEFAULT (0),
  [CISLEM] [char](1) NULL,
  [SDBUSER] [varchar](20) NULL,
  [PGUSTOUSER] [int] NULL DEFAULT (0),
  [SHOSTNAME] [varchar](20) NULL,
  [DTOLUSTURMA] [datetime] NULL,
  PRIMARY KEY CLUSTERED ([ROW_ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO