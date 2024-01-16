import os
from flask import Flask

def create_app(test_config=None):
    app = Flask(__name__)

    @app.route('/hello')
    def hello():
        return 'Hello World !'
    
    from . import db
    db.init_app(app)
    
    return app