from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def hello():
    return f"Hello from Phase 5 Auto Pipeline! 🚀<br>Hostname: {socket.gethostname()}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

