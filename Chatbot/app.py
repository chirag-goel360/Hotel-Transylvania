from flask import Flask, request, session
from twilio.twiml.messaging_response import MessagingResponse
from chat_bot import ask, append_interaction_to_chat_log

app = Flask(__name__)
# Random String eg in my case "89djhff9lhkd95"
app.config['SECRET_KEY'] = '89djhff9lhkd95'

@app.route('/chat_bot', methods=['POST'])
def chiragbot():
    incoming_msg = request.values['Body']
    chat_log = session.get('chat_log')
    answer = ask(incoming_msg, chat_log)
    session['chat_log'] = append_interaction_to_chat_log(incoming_msg, answer, chat_log)
    msg = MessagingResponse()
    msg.message(answer)
    return str(msg)

if __name__ == '__main__':
    app.run(debug = True)