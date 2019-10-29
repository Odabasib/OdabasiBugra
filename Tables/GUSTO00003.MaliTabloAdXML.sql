CREATE TABLE [GUSTO00003].[MaliTabloAdXML] (
  [MaliTabloAdXML_rowid] [int] IDENTITY,
  [MaliTabloAdRowid] [varchar](30) NULL DEFAULT (''),
  [fSira] [varchar](30) NULL DEFAULT (''),
  [sAdi] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](499) NULL DEFAULT (''),
  [pKodTanimi] [varchar](500) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MaliTabloAdXML_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO