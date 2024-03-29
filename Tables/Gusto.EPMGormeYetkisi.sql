﻿CREATE TABLE [Gusto].[EPMGormeYetkisi] (
  [EPMGORMEYETKISI_ROWID] [int] IDENTITY,
  [PFAALIYETTURU] [int] NULL DEFAULT (0),
  [PYETKIGRUBU] [varchar](255) NULL DEFAULT (''),
  [PDIGERKULLANICI] [int] NULL DEFAULT (0),
  [BOKUMA] [bit] NULL DEFAULT (0),
  [BDEGISTIRME] [bit] NULL DEFAULT (0),
  [BSILME] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMGORMEYETKISI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMGormeYetkisi]
  ON [Gusto].[EPMGormeYetkisi] ([PFAALIYETTURU], [PYETKIGRUBU], [PDIGERKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO