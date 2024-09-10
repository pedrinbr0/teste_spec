module RequestsHelper
  def json
    JSON.parse(response.body)
  end
end
