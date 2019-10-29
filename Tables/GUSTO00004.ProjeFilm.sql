CREATE TABLE [GUSTO00004].[ProjeFilm] (
  [ProjeFilm_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [bSecili] [bit] NULL DEFAULT (0),
  [bOzel] [bit] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [bFason] [bit] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 2) NULL DEFAULT (0),
  [ldAdet] [decimal](22, 2) NULL DEFAULT (0),
  [ldEn] [decimal](22, 2) NULL DEFAULT (0),
  [ldBoy] [decimal](22, 2) NULL DEFAULT (0),
  [ldIscilikMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalzemeMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeklifFiyati] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeFilm_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO