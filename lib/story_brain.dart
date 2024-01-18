//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.

class StoryBrain {
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

  final List<Story> _storyData = [
    Story(
        storyTitle:
            'Your Chevy has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You, a hopeful interviewee with your cat Janie in your backpack, decide to hitchhike. A tan Volkswagen Beetle stops next to you. The driver, a man with a disarmingly charming smile, offers you a ride. You recognize him from a TV segment on infamous serial killers. He’s the one who targets guys, but he doesn’t know that you know.',
        choice1:
            'This could be my only chance. I\'ll get in, but I need to be cautious.',
        choice2: 'No way, I\'d rather wait for another car.'),
    Story(
        storyTitle:
            'As you get in, Janie meows uneasily, sensing the tension. The man notices your cat and softens a bit. He starts the car and you head towards the town. He talks smoothly about his life, his travels, and his supposed love for animals, especially cats.',
        choice1:
            'Try to keep him talking, people who love animals can’t be all bad, right?',
        choice2: 'This is too risky. Look for an opportunity to escape.'),
    Story(
        storyTitle:
            'The man’s stories start to take a dark turn. He casually mentions places where he’s been, aligning eerily with the locations of the reported crimes. Janie starts to fidget, clawing at your backpack.',
        choice1: 'Calm Janie down and pretend to be engrossed in his story.',
        choice2:
            'Use the moment to change the subject to something less ominous.'),
    Story(
        storyTitle:
            'He notices your discomfort and offers to let you out, but not before you reach a secluded area. It’s clear he has something sinister in mind. Janie, sensing danger, hisses and claws fiercely at the bag.',
        choice1:
            'Accept his offer to stop, and prepare to run at the first chance.',
        choice2: 'Refuse to stop here, insist on going to a public place.'),
    Story(
        storyTitle:
            'Suddenly, the car breaks down. He gets out to check the engine, mumbling about his bad luck. This could be your chance.',
        choice1:
            'Wait for him to get distracted and then make a run for it with Janie.',
        choice2:
            'Offer to help with the car to buy some time and look for help.'),
    Story(
        storyTitle:
            'While helping, you spot a patrol car in the distance. You need a distraction to get their attention without alarming the man.',
        choice1:
            'Accidentally drop a tool loudly to attract the patrol car’s attention.',
        choice2:
            'Quietly signal for help while pretending to search for a tool in the trunk.'),
    Story(
        storyTitle:
            'The patrol car notices the commotion and approaches. The man, realizing the situation, starts to panic but decides not to harm you because of Janie.',
        choice1: 'Use this moment to tell the police everything.',
        choice2: 'Stay silent and let the police handle the situation.'),
    Story(
        storyTitle:
            'With the man in custody, you and Janie are safe. The police commend your bravery and offer to drive you to your job interview.',
        choice1: 'Thank the officers and head to the interview with Janie.',
        choice2:
            'Politely decline, needing a moment to collect your thoughts after the ordeal.'),
    Story(
        storyTitle:
            'Despite the ordeal, you make it to the interview on time. Janie, your faithful companion, is by your side. The interviewer is surprisingly understanding about your disheveled appearance after you recount your morning.',
        choice1: 'Focus on the interview, it’s time to start a new chapter.',
        choice2: ''),
    Story(
        storyTitle:
            'The interview goes well, considering the circumstances. They are impressed by your resilience and offer you the job on the spot.',
        choice1:
            'Gratefully accept the offer and look forward to new beginnings.',
        choice2: ''),
    Story(
        storyTitle:
            'As you leave the building, you can’t help but feel a mix of emotions. Relief, gratitude, and a newfound respect for the quiet strength that Janie, your unlikely hero, has shown.',
        choice1:
            'Take a moment to appreciate the journey and the unexpected guardian you found in Janie.',
        choice2: ''),
    Story(
        storyTitle:
            'Life takes unexpected turns, but this experience taught you the value of intuition, the unpredictability of danger, and the unassuming courage found in a small cat named Janie.',
        choice1: 'Restart',
        choice2: '')
  ];

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

  String getStory() {
    return _storyData[storyNumber].storyTitle;
  }
}

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

String getChoice1() {
  return _storyData[storyNumber].choice1;
}

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

String getChoice2() {
  return _storyData[_storyNumber].choice2;

//TODO: Step 25 - Change the _storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (_storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called _storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

  int _storyNumber = 0;

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

  void nextStory(int userChoice) {}
}

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 10 or 11 or 12, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

  else if (storyNumber == 10 || storyNumber == 11 || storyNumber == 12) {
    restart();
}

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
bool buttonShouldBeVisible() {
//You could also just check if (_storyNumber < 3)
if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
return true;
} else {

