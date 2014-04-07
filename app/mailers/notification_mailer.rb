class NotificationMailer < ActionMailer::Base
  default from: "PieceMaker Website <noreply@piecemaker.com>"
  default :to => "thejhubbs@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "New Interest in Piecemaker")
  end

end
