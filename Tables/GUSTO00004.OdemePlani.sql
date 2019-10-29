CREATE TABLE [GUSTO00004].[OdemePlani] (
  [OdemePlani_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [nIslemTuru] [smallint] NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsilananTutar] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OdemePlani_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IslemTarihKey]
  ON [GUSTO00004].[OdemePlani] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO