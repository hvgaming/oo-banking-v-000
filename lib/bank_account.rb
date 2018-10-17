class BankAccount
attr_accessor :transfer
  attr_reader :name
   def initialize(project_name)
    @backers = []
    @title = project_name
  end
end
