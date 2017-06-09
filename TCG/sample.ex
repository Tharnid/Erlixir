def read_file({ :ok, file }) do
  file
  |> IO.read(:line)
end

def read_file2({ :error, reason }) do
  Logger.error("File error: #{{reason}}")
end
