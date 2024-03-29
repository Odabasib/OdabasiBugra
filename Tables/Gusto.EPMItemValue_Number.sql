﻿CREATE TABLE [Gusto].[EPMItemValue_Number] (
  [EPMITEMVALUE_NUMBER_ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [PEKBILGITURU] [int] NULL DEFAULT (0),
  [LDDEGER] [decimal](22, 2) NULL DEFAULT (0),
  [DTDEGISTIRME] [smalldatetime] NULL,
  [PDEGISTIREN] [int] NULL DEFAULT (0),
  [LDESKIDEGER] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMITEMVALUE_NUMBER_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO