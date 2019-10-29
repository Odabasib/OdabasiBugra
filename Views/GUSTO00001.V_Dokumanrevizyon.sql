SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00001].[V_Dokumanrevizyon] As select max(srevizyonno) revizyon, pdokuman from GUSTO00001.DokumanRevizyon group by pdokuman
GO