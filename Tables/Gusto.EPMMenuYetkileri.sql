﻿CREATE TABLE [Gusto].[EPMMenuYetkileri] (
  [EPMMENUYETKILERI_ROWID] [int] IDENTITY,
  [PGRUP] [int] NULL DEFAULT (0),
  [PYETKIGRUBU] [int] NULL DEFAULT (0),
  [BYETKILI] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMMENUYETKILERI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMMenuYetkileri]
  ON [Gusto].[EPMMenuYetkileri] ([PGRUP], [PYETKIGRUBU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO