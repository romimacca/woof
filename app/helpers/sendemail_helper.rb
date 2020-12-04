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

        sg = SendGrid::API.new(api_key: ENV['API_SENDGRID_TOKEN'])
        response = sg.client.mail._("send").post(request_body: data) 


    end
end