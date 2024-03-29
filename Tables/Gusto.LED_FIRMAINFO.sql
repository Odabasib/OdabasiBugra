﻿CREATE TABLE [Gusto].[LED_FIRMAINFO] (
  [LED_FIRMAINFO_ROWID] [int] IDENTITY,
  [PFIRMA] [int] NOT NULL DEFAULT (0),
  [SVERGINO] [varchar](11) NOT NULL DEFAULT (''),
  [BGERCEK] [bit] NULL DEFAULT (0),
  [BTUZEL] [bit] NULL DEFAULT (0),
  [BYMMEXIST] [bit] NULL DEFAULT (0),
  [SDESCRIPTION] [varchar](200) NULL DEFAULT (''),
  [SIDENTIFIER] [varchar](200) NULL DEFAULT (''),
  [SNACEKODU] [varchar](200) NULL DEFAULT (''),
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
  [SWEBSITE] [varchar](200) NULL DEFAULT (''),
  [DTINFOBAS] [smalldatetime] NULL,
  [DTINFOBIT] [smalldatetime] NULL,
  [DTOLUSTURMA] [smalldatetime] NULL,
  [PMUSAVIR] [int] NOT NULL DEFAULT (0),
  [PYMM] [int] NOT NULL DEFAULT (0),
  [PSOZLESME] [int] NOT NULL DEFAULT (0),
  [PYMMSOZLESME] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LED_FIRMAINFO_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO