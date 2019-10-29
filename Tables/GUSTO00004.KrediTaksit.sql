CREATE TABLE [GUSTO00004].[KrediTaksit] (
  [KrediTaksit_rowid] [int] IDENTITY,
  [pBanka] [int] NULL DEFAULT (0),
  [cTaksitTuru] [char](1) NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KrediTaksit_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO