﻿CREATE TABLE [Gusto].[EPMKartBilgiYetkisi] (
  [EPMKARTBILGIYETKISI_ROWID] [int] IDENTITY,
  [PBILGIBASLIK] [int] NULL DEFAULT (0),
  [PYETKIGRUBU] [int] NULL DEFAULT (0),
  [BOKUMA] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMKARTBILGIYETKISI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMKartBilgiYetkisi]
  ON [Gusto].[EPMKartBilgiYetkisi] ([PBILGIBASLIK], [PYETKIGRUBU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO