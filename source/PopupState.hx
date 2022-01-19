package;

import flixel.FlxG;
import flixel.FlxSprite;

class PopupState extends MusicBeatState{
    override function create(){
        super.create();

        var bg = new FlxSprite().loadGraphic(Paths.image('popup'));
        add(bg);
    }

    override function update(elapsed:Float) {
        super.update(elapsed);

        if(FlxG.keys.justPressed.ENTER){
			PlayState.SONG = Song.loadFromJson('tennacity', 'tennacity');
			PlayState.isStoryMode = false;
			PlayState.storyDifficulty = 1;

            LoadingState.loadAndSwitchState(new PlayState());
        }

        if(FlxG.keys.justPressed.O){
            MusicBeatState.switchState(new options.OptionsState());
        }
    }
}