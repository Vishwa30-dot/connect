from flask import Flask, jsonify, request 
import os 
 
app = Flask(__name__) 
 
@app.route("/") 
def home(): 
    return jsonify({ 
        "message": "Hello from Flask running inside Docker on AWS!" 
    }) 
 
@app.route("/env") 
def show_env(): 
    env_value = os.environ.get("APP_ENV", "default") 
    return jsonify({"environment_variable": env_value}) 
 
if __name__ == "__main__": 
    app.run(host="0.0.0.0", port=5000) 
