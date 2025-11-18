from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    forwarded_for = request.headers.get("X-Forwarded-For", "")
    if forwarded_for:
        client_ip = forwarded_for.split(",")[0].strip()
    else:
        client_ip = request.remote_addr

    return jsonify({
        "message": "Hello from simple IP echo app",
        "client_ip": client_ip
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
