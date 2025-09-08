from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Welcome to the Simple Flask Backend",
        "status": "success"
    })

@app.route('/api/health')
def health():
    return jsonify({
        "status": "healthy",
        "service": "flask-backend"
    })

@app.route('/api/greet/<name>')
def greet(name):
    return jsonify({
        "message": f"Hello, {name}!",
        "greeting": "successful"
    })

@app.route('/api/data')
def get_data():
    return jsonify({
        "data": [
            {"id": 1, "name": "Item 1"},
            {"id": 2, "name": "Item 2"},
            {"id": 3, "name": "Item 3"}
        ]
    })

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)