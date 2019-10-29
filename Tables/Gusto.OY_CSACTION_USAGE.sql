﻿CREATE TABLE [Gusto].[OY_CSACTION_USAGE] (
  [OY_CSACTION_USAGE_ROWID] [int] IDENTITY,
  [PCSACTION] [int] NULL,
  [PEVENTPLAN] [int] NULL,
  [NORDER] [int] NULL,
  [NADDITIONALID] [int] NULL,
  PRIMARY KEY CLUSTERED ([OY_CSACTION_USAGE_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[OY_CSACTION_USAGE]
  ADD CONSTRAINT [OY_CSACTION_USAGEONDELETE] FOREIGN KEY ([PCSACTION]) REFERENCES [Gusto].[OY_CSACTIONDEF] ([OY_CSACTIONDEF_ROWID]) ON DELETE CASCADE
GO

ALTER TABLE [Gusto].[OY_CSACTION_USAGE]
  ADD CONSTRAINT [OY_CSACTION_USAGEONDELETEEVN] FOREIGN KEY ([PEVENTPLAN]) REFERENCES [Gusto].[OY_EventPlan] ([OY_EVENTPLAN_ROWID]) ON DELETE CASCADE
GO