SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00003].[V_Dokumanrevizyon] As select max(srevizyonno) revizyon, pdokuman from GUSTO00003.DokumanRevizyon group by pdokuman
GO