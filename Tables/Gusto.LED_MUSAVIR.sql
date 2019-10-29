CREATE TABLE [Gusto].[LED_MUSAVIR] (
  [LED_MUSAVIR_ROWID] [int] IDENTITY,
  [SADSOYAD] [varchar](200) NULL DEFAULT (''),
  [SUNVAN] [varchar](200) NULL DEFAULT (''),
  [SADRES] [varchar](200) NULL DEFAULT (''),
  [SADRES2] [varchar](200) NULL DEFAULT (''),
  [SBINAKAPINO] [varchar](100) NULL DEFAULT (''),
  [PSEHIR] [int] NULL DEFAULT (0),
  [PULKE] [int] NULL DEFAULT (0),
  [SPOSTAKODU] [varchar](100) NULL DEFAULT (''),
  [STELEFONTIPI] [varchar](200) NULL DEFAULT (''),
  [STELEFONNO] [varchar](200) NULL DEFAULT (''),
  [SFAXNO] [varchar](200) NULL DEFAULT (''),
  [SEMAIL] [varchar](200) NULL DEFAULT (''),
  [DTOLUSTURMA] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([LED_MUSAVIR_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO