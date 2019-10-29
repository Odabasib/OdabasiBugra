﻿CREATE TABLE [GUSTO00004].[LEI_EIRSALIYE_GELEN] (
  [LEI_EIRSALIYE_GELEN_ROWID] [int] IDENTITY,
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [TIP] [smallint] NULL DEFAULT (0),
  [PIRSALIYE] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NOT NULL DEFAULT (0),
  [NTICARIIRSALIYE] [smallint] NULL DEFAULT (0),
  [VKNO] [varchar](11) NULL DEFAULT (''),
  [GONDEREN] [varchar](255) NULL DEFAULT (''),
  [EIRSALIYENO] [varchar](255) NOT NULL DEFAULT (''),
  [ETTN] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORID] [varchar](255) NULL DEFAULT (''),
  [NDURUMU] [smallint] NULL DEFAULT (0),
  [IRSALIYETARIHI] [smalldatetime] NULL,
  [IRSALIYETUTARI] [decimal](22, 2) NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  [NDURUMU_AR] [smallint] NULL DEFAULT (0),
  [ENTEGRATORID_AR] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORDURUMU_AR] [varchar](2000) NULL DEFAULT (''),
  [PHAVUZGRUBU] [int] NOT NULL DEFAULT (0),
  [BONAYLANDI] [bit] NULL DEFAULT (0),
  [PONAYLAYANKULLANICI] [int] NULL DEFAULT (0),
  [ENTEGRATORTARIHI] [smalldatetime] NULL,
  [RETACIKLAMA] [varchar](4000) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEI_EIRSALIYE_GELEN_ROWID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEIGELENETTN]
  ON [GUSTO00004].[LEI_EIRSALIYE_GELEN] ([ETTN])
  ON [PRIMARY]
GO