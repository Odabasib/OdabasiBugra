﻿CREATE TABLE [Gusto].[EPMFaaliyet] (
  [EPMFAALIYET_ROWID] [int] IDENTITY,
  [PFAALIYETTURU] [int] NULL DEFAULT (0),
  [BPLANLAMA] [bit] NULL DEFAULT (0),
  [DTPLANSTART] [datetime] NULL,
  [DTPLANEND] [datetime] NULL,
  [DTSTART] [datetime] NULL,
  [DTEND] [datetime] NULL,
  [KONU] [varchar](255) NULL DEFAULT (''),
  [STIMERVALUE] [varchar](10) NULL DEFAULT (''),
  [DURUM] [smallint] NULL DEFAULT (0),
  [BTEKRARLANABILIR] [bit] NULL DEFAULT (0),
  [PATAYAN] [int] NULL DEFAULT (0),
  [PKULLANICI] [int] NULL DEFAULT (0),
  [DTOLUSTURMA] [smalldatetime] NULL,
  [DTDEGISTIRME] [smalldatetime] NULL,
  [PMUSTERI] [int] NULL DEFAULT (0),
  [PATAYANKULLANICI] [int] NULL DEFAULT (0),
  [POLUSTURAN] [int] NULL DEFAULT (0),
  [PDEGISTIREN] [int] NULL DEFAULT (0),
  [SUBEKODU] [bigint] NULL,
  [PFIRMA] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EPMFAALIYET_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IND_EPMFaaliyet1]
  ON [Gusto].[EPMFaaliyet] ([PFAALIYETTURU], [PKULLANICI], [PMUSTERI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IND_EPMFaaliyet2]
  ON [Gusto].[EPMFaaliyet] ([PKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IND_EPMFaaliyet3]
  ON [Gusto].[EPMFaaliyet] ([PMUSTERI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IND_EPMFaaliyet4]
  ON [Gusto].[EPMFaaliyet] ([PFAALIYETTURU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO