import os
from flask import Flask, render_template

def create_app():
    app = Flask(__name__, template_folder='./templates/')

    @app.route('/')
    def index():
        return render_template('index.html')
    
    @app.route('/prediction')
    def underOver():
        return render_template('prediction.html')
    
    return app