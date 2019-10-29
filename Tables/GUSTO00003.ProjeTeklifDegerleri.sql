CREATE TABLE [GUSTO00003].[ProjeTeklifDegerleri] (
  [ProjeTeklifDegerleri_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [ldMalzmeIc] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalzemeKapak] [decimal](22, 2) NULL DEFAULT (0),
  [ldIscilikIc] [decimal](22, 2) NULL DEFAULT (0),
  [ldIscilikKapak] [decimal](22, 2) NULL DEFAULT (0),
  [ldFasonIc] [decimal](22, 2) NULL DEFAULT (0),
  [ldFasonKapak] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeklifTutari] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeTeklifDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO