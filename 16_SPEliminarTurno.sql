ALTER PROC DEL_Turno(
                @idturno turno
)
AS
set NOCOUNT ON

if exists (SELECT * from Turno
            where idTurno = @idturno)
BEGIN
    DELETE from TurnoPacienteMedico where idTurno = @idturno
    DELETE from Turno WHERE idTurno = @idturno
    
END
ELSE 
    select 0 as resultado

--select * from Turno
--select * from TurnoPacienteMedico

EXEC DEL_Turno 10