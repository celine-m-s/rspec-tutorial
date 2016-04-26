RSpec.configure do |config|
  config.before(:suite) do 
    # Anything present in the DB will be cleaned out
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    # Run everything within a transaction. Quicker. 
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: :true) do
    DatabaseCleaner.strategy = truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end


end