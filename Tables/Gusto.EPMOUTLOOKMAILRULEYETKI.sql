﻿CREATE TABLE [Gusto].[EPMOUTLOOKMAILRULEYETKI] (
  [EPMOUTLOOKMAILRULEYETKI_ROWID] [int] IDENTITY,
  [POUTLOOKEMAILRULE] [int] NULL DEFAULT (0),
  [PYETKIGRUBU] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMOUTLOOKMAILRULEYETKI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMOUTLOOKMAILRULEYETKI]
  ON [Gusto].[EPMOUTLOOKMAILRULEYETKI] ([PYETKIGRUBU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO