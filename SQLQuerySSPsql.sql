ALTER PROCEDURE studentSSP
	-- Add the parameters for the stored procedure here
	@StudentId int=0,
	@StudentFirstName varchar(255)=null,
	@StudentLastName varchar(255)=null,
	@StudentDateOfBirth date=null,
	@StudentAge int=0,
	@StudentGender varchar(255)=null,
	@StudentPhone varchar(255)=null,
	@StudentEmail varchar(255)=null,
	@StudentAddress varchar(255)=null,
	@StudentState varchar(255)=null,
	@StudentCity varchar(255)=null,
	@StudentUsername varchar(255)=null,
	@choice varchar(100)



	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @choice='Insert'
	begin
		INSERT INTO Student(StudentId,StudentFirstName,StudentLastName,StudentDateOfBirth,StudentAge,StudentGender,StudentPhone,StudentEmail,StudentAddress,StudentState,StudentCity,StudentUsername)
		VALUES (@StudentId,@StudentFirstName,@StudentLastName,@StudentDateOfBirth,@StudentAge,@StudentGender,@StudentPhone,@StudentEmail,@StudentAddress,@StudentState,@StudentCity,@StudentUsername)
	end

	if @choice='Update'
	begin
		UPDATE Student SET
		StudentFirstName=@StudentFirstName,StudentPhone=@StudentPhone
		WHERE StudentId=@StudentId
	end

	if @choice='Select'
	begin
		SELECT * FROM Student		
	end
	if @choice='Delete'
	begin
	DELETE FROM Student WHERE StudentId=@StudentId
		
	end
end

EXEC studentSSP @choice='Select'

EXEC studentSSP @StudentId=5,@StudentFirstName='Nila',@StudentLastName='S',@StudentDateOfBirth='2000-05-29',@StudentAge=21,@StudentGender='Female',@StudentPhone=8865975341,@StudentEmail='nila@gmail.com',@StudentAddress='kannur,kerala',@StudentState='Kerala',@StudentCity='Kannur',@StudentUsername='nila',@choice='Insert'

EXEC studentSSP @StudentId=6,@StudentFirstName='abhay',@StudentLastName='A',@StudentDateOfBirth='2000-09-01',@StudentAge=21,@StudentGender='Male',@StudentPhone=9909876543,@StudentEmail='abhay@gmail.com',@StudentAddress='Calicat,kerala',@StudentState='Kerala',@StudentCity='Calicat',@StudentUsername='abhay',@choice='Insert'

EXEC studentSSP @StudentFirstName='ziya',@StudentPhone='9666543546',@StudentId=5,@choice='Update'


EXEC studentSSP @StudentId=5,@choice='Delete'