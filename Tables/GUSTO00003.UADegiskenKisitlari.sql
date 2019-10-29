CREATE TABLE [GUSTO00003].[UADegiskenKisitlari] (
  [UADegiskenKisitlari_rowid] [int] IDENTITY,
  [pDegiskenSatiri] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [bZorunluGiris] [bit] NOT NULL DEFAULT (0),
  [pDinamikOzellik] [int] NULL DEFAULT (0),
  [sVarsayilanSonuc] [varchar](499) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UADegiskenKisitlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO