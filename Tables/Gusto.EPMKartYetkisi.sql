﻿CREATE TABLE [Gusto].[EPMKartYetkisi] (
  [EPMKARTYETKISI_ROWID] [int] IDENTITY,
  [PBPMKARTI] [int] NULL DEFAULT (0),
  [PYETKIGRUBU] [int] NULL DEFAULT (0),
  [BYETKILISTEDEGORME] [bit] NULL DEFAULT (0),
  [BKARTIACMA] [bit] NULL DEFAULT (0),
  [BKARTISILME] [bit] NULL DEFAULT (0),
  [BKARTIDEGISTIRME] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMKARTYETKISI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMKartYetkisi]
  ON [Gusto].[EPMKartYetkisi] ([PBPMKARTI], [PYETKIGRUBU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO