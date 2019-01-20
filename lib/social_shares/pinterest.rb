module SocialShares
  class Pinterest < Base
    URL = 'https://api.pinterest.com/v1/urls/count.json'

    def shares!
      response = get(URL, params: { url: checked_url })

      /count":(\d+)/.match(response.body)[-1].to_i
    end
  end
end
