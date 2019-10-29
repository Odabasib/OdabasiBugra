CREATE TABLE [Gusto].[GOlayAction] (
  [GOlayAction_rowid] [int] IDENTITY,
  [bSaveLog] [bit] NOT NULL DEFAULT (0),
  [bSendGustoMsg] [bit] NOT NULL DEFAULT (0),
  [pAdvanedMessage] [int] NOT NULL DEFAULT (0),
  [sSimpleMessage] [varchar](2048) NULL DEFAULT (''),
  [pMsgUsers] [int] NOT NULL DEFAULT (0),
  [bSendEmail] [bit] NOT NULL DEFAULT (0),
  [pAdvancedMail] [int] NOT NULL DEFAULT (0),
  [sSimpleMailSubject] [varchar](255) NULL DEFAULT (''),
  [sSimpleMailMessage] [varchar](2048) NULL DEFAULT (''),
  [pEmailUsers] [int] NOT NULL DEFAULT (0),
  [pSchedule] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GOlayAction_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO