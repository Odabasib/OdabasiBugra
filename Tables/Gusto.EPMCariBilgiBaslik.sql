﻿CREATE TABLE [Gusto].[EPMCariBilgiBaslik] (
  [EPMCARIBILGIBASLIK_ROWID] [int] IDENTITY,
  [PFAALIYETTURU] [int] NULL DEFAULT (0),
  [SBASLIK] [varchar](255) NULL DEFAULT (''),
  [BDEFAULT] [bit] NULL DEFAULT (0),
  [BSADECEFAALIYETLERDE] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMCARIBILGIBASLIK_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMCariBilgiBaslik]
  ON [Gusto].[EPMCariBilgiBaslik] ([PFAALIYETTURU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO