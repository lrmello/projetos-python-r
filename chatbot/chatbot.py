from nltk.chat.util import Chat, reflections
from flask import Flask, render_template, request

app = Flask(__name__)

pairs = [
    [
        r"meu nome é (.*)",
        ["Olá %1, como posso ajudá-lo?"]
    ],
    [
        r"qual é o seu nome?",
        ["Meu nome é ChatGPT. Como posso ajudá-lo?"]
    ],
    [
        r"como você está?",
        ["Estou bem, obrigado! E você?"]
    ],
    [
        r"(.*) idade (.*)",
        ["Não sou programado para ter idade."]
    ],
    [
        r"(.*) (feliz|triste|entediado|animado|cansado)",
        [
            "Por que você se sente %2?",
            "O que você tem feito ultimamente?"
        ]
    ],
    [
        r"bye|tchau|até mais",
        ["Até logo! Espero ter ajudado."]
    ]
]

chatbot = Chat(pairs, reflections)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/get")
def get_bot_response():
    user_text = request.args.get("msg")
    bot_text = str(chatbot.respond(user_text))
    return bot_text

if __name__ == "__main__":
    app.run()
