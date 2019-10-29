CREATE TABLE [GUSTO00001].[DynFbFormulKosullari] (
  [DynFbFormulKosullari_rowid] [int] IDENTITY,
  [pDynFbFormul] [int] NULL DEFAULT (0),
  [sKosul] [varchar](499) NULL DEFAULT (''),
  [sSonuc] [varchar](499) NULL DEFAULT (''),
  [sVarsayilanSonuc] [varchar](499) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([DynFbFormulKosullari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO