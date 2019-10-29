CREATE TABLE [Gusto].[LED_BERATKONTROL] (
  [LED_BERATKONTROL_ROWID] [int] IDENTITY,
  [PBASLIK] [int] NULL DEFAULT (0),
  [PDEFTER] [int] NULL DEFAULT (0),
  [YEVCOUNT] [smallint] NULL DEFAULT (0),
  [ld191B] [decimal](22, 2) NULL DEFAULT (0),
  [ld191A] [decimal](22, 2) NULL DEFAULT (0),
  [ld391B] [decimal](22, 2) NULL DEFAULT (0),
  [ld391A] [decimal](22, 2) NULL DEFAULT (0),
  [ld600B] [decimal](22, 6) NULL DEFAULT (0),
  [ld600A] [decimal](22, 6) NULL DEFAULT (0),
  [ld601B] [decimal](22, 6) NULL DEFAULT (0),
  [ld601A] [decimal](22, 6) NULL DEFAULT (0),
  [ld602B] [decimal](22, 6) NULL DEFAULT (0),
  [ld602A] [decimal](22, 6) NULL DEFAULT (0),
  [BKEBIR] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LED_BERATKONTROL_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO