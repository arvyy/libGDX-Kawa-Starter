(module-compile-options main: #t)

(import (class com.badlogic.gdx.backends.lwjgl LwjglApplication)
		(class com.badlogic.gdx.backends.lwjgl LwjglApplicationConfiguration)
        (class com.badlogic.gdx ApplicationAdapter)
		(class com.badlogic.gdx Gdx)
		(class com.badlogic.gdx.graphics GL20)
		(class com.badlogic.gdx.graphics.g2d BitmapFont)
		(class com.badlogic.gdx.graphics.g2d SpriteBatch)
        
        (game logic))


(define-simple-class GameLauncher (ApplicationAdapter)
	(batch :: SpriteBatch)
    (font :: BitmapFont)
	((create) 
	 (set! batch (SpriteBatch))
	 (set! font (BitmapFont)))
	((render)
	 (Gdx:gl:glClear (bitwise-ior GL20:GL_DEPTH_BUFFER_BIT GL20:GL_COLOR_BUFFER_BIT))
	 (Gdx:gl:glEnable GL20:GL_DEPTH_TEST)
     (invoke batch 'begin)
     (invoke font 'draw batch (text) 100 100)
     (invoke batch 'end)))

(LwjglApplication (GameLauncher)
                  (LwjglApplicationConfiguration width: 640 
                                                 height: 480))
