CREATE TABLE [GUSTO00001].[MGerceklesenOpr] (
  [MGerceklesenOpr_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nNo] [int] NOT NULL DEFAULT (0),
  [pIsMerkeziKodu] [int] NOT NULL DEFAULT (0),
  [dtIslemBaslamaTarihi] [smalldatetime] NULL,
  [dtIslemBitisTarihi] [smalldatetime] NOT NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldMiktar] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [nLevel] [smallint] NULL DEFAULT (0),
  [pGerceklesme] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MGerceklesenOpr_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtIslemBitisTarihi]
  ON [GUSTO00001].[MGerceklesenOpr] ([dtIslemBitisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [nLevel]
  ON [GUSTO00001].[MGerceklesenOpr] ([nLevel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00001].[MGerceklesenOpr] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00001].[MGerceklesenOpr] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO