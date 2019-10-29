﻿CREATE TABLE [Gusto].[EPMEkranYetkileri] (
  [EPMEKRANYETKILERI_ROWID] [int] IDENTITY,
  [PYETKIGRUBU] [int] NULL DEFAULT (0),
  [BAJANDAKISISEL] [bit] NULL DEFAULT (0),
  [BAJANDAGRUP] [bit] NULL DEFAULT (0),
  [BAJANDAKART] [bit] NULL DEFAULT (0),
  [BLISTETUM] [bit] NULL DEFAULT (0),
  [BLISTETEKFAALIYET] [bit] NULL DEFAULT (0),
  [BLISTEKARTABAGLI] [bit] NULL DEFAULT (0),
  [BLISTEKART] [bit] NULL DEFAULT (0),
  [BLISTELOG] [bit] NULL DEFAULT (0),
  [BLISTEREMINDER] [bit] NULL DEFAULT (0),
  [BPIVOTTUM] [bit] NULL DEFAULT (0),
  [BPIVOTTEK] [bit] NULL DEFAULT (0),
  [BPIVOTKART] [bit] NULL DEFAULT (0),
  [BTANIMFAALIYET] [bit] NULL DEFAULT (0),
  [BTANIMKART] [bit] NULL DEFAULT (0),
  [BTANIMSISTEM] [bit] NULL DEFAULT (0),
  [BFAALIYETARAMA] [bit] NULL DEFAULT (0),
  [BKARTARAMA] [bit] NULL DEFAULT (0),
  [BTODOLIST] [bit] NULL DEFAULT (0),
  [BLISTLOG] [bit] NULL DEFAULT (0),
  [BLISTLOGFAALIYET] [bit] NULL DEFAULT (0),
  [BLISTLOGKART] [bit] NULL DEFAULT (0),
  [BEXPAJANDAKISISEL] [bit] NULL DEFAULT (0),
  [BEXPAJANDAGRUP] [bit] NULL DEFAULT (0),
  [BEXPAJANDAKART] [bit] NULL DEFAULT (0),
  [BEXPLISTETUM] [bit] NULL DEFAULT (0),
  [BEXPLISTETEKFAALIYET] [bit] NULL DEFAULT (0),
  [BEXPLISTEKARTABAGLI] [bit] NULL DEFAULT (0),
  [BEXPLISTEKART] [bit] NULL DEFAULT (0),
  [BEXPLISTELOG] [bit] NULL DEFAULT (0),
  [BEXPLISTEREMINDER] [bit] NULL DEFAULT (0),
  [BEXPPIVOTTUM] [bit] NULL DEFAULT (0),
  [BEXPPIVOTTEK] [bit] NULL DEFAULT (0),
  [BEXPPIVOTKART] [bit] NULL DEFAULT (0),
  [BEXPFAALIYETARAMA] [bit] NULL DEFAULT (0),
  [BEXPKARTARAMA] [bit] NULL DEFAULT (0),
  [BEXPTODOLIST] [bit] NULL DEFAULT (0),
  [BEXPLISTLOG] [bit] NULL DEFAULT (0),
  [BEXPLISTLOGFAALIYET] [bit] NULL DEFAULT (0),
  [BEXPLISTLOGKART] [bit] NULL DEFAULT (0),
  [BPOWERUSER] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMEKRANYETKILERI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMEkranYetkileri]
  ON [Gusto].[EPMEkranYetkileri] ([PYETKIGRUBU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO