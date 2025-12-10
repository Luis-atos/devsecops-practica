from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home():
    return jsonify({"message": "API OK"})

@app.route("/saludo/<nombre>", methods=["GET"])
def saludo(nombre):
    return jsonify({"mensaje": f"Hola, {nombre}"})

if __name__ == "__main__":
    # Ejecuta el servidor para desarrollo
    app.run(host="0.0.0.0", port=8000)
