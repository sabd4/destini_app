//TODO: Step 6 - import the story.dart file into this file.

//TODO: Step 5 - Create a new class called StoryBrain.

//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
import 'story.dart';

class StoryBrain {
  //TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  //TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text
// for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int userchoice) {
    if (userchoice == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (userchoice == 2 && _storyNumber == 1) {
      _storyNumber = 1;
    } else if (userchoice == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (userchoice == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (userchoice == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (userchoice == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    // if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2)
    if (_storyNumber < 3) {
      return true;
    } else {
      return false;
    }
  }
  //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5,
  // that means it's the end of the game and it should call a method called restart()
// that resets the storyNumber to 0.
//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1()
// and getChoice2() so
// that it gets the updated story and choices rather than always just the first (0th) one
}

//TODO: Step 25 - Change the storyNumber property into a private property
// so that only story_brain.dart has access to it.
// You can do this by right clicking on the name (storyNumber)
// and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 27 - Create a method called buttonShouldBeVisible()
// which checks to see if storyNumber is 0 or 1 or 2
// (when both buttons should show choices) and
// return true if that is the case, else it should return false.
