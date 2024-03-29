﻿CREATE TABLE [Gusto].[BPMCG_TanimliUstProfiller] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pUstProfil] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_TanimliUstProfiller]
  ADD CONSTRAINT [BPMCG_TanimliUstProfillerONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMCG_AfisDisKatsayilar] ([ROWID]) ON DELETE CASCADE
GO