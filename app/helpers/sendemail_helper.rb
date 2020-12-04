include SendGrid
module SendemailHelper
    def send_mail(to, subject, content)
        require 'sendgrid-ruby'
        data = {
          "personalizations" => [{
            "to" => [{
              "email" => to
            }],
            "subject" => subject
          }],
          "from" => {
            "email" => "adriana@clay.cl"
          },
          "content" => [{
            "type" => "text/plain",
            "value" => content
          }]
        }

        sg = SendGrid::API.new(api_key: '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')
        response = sg.client.mail._("send").post(request_body: data) 


    end
end