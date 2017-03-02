//
//  ViewController.swift
//  Oblique Strategies
//
//  Copyright © 2017 Joey deVilla. All rights reserved.
//  MIT License. See the end of the file for the gory details.
//


import UIKit


class ViewController: UIViewController {
  
  let strategies = [
    "Remove specifics and convert to ambiguities.",
    "Think of the radio.",
    "Don’t be frightened of clichés.",
    "Abandon one stricture.",
    "What is the reality of the situation?",
    "Simple subtraction.",
    "Are there sections? Consider transitions.",
    "Turn it upside down.",
    "Go slowly all the way round the outside.",
    "Remember: a line has two sides.",
    "Two words: Infinitesimal gradations.",
    "Make a list of everything you might do, do last item on list.",
    "Change instrument roles.",
    "Into the impossible.",
    "One word: accretion.",
    "Ask people to work against their better judgement.",
    "Disconnect from desire.",
    "Take away the elements in order of apparent non-importance.",
    "Emphasize repetitions.",
    "Don’t be afraid of things because they’re easy to do.",
    "Is there something missing?",
    "Don't be frightened to display your talents.",
    "Use unqualified people.",
    "Breathe more deeply.",
    "How would you have done it?",
    "Honor thy error as a hidden intention.",
    "Emphasize differences.",
    "Only one element of each kind.",
    "Do nothing for as long as possible.",
    "Bridges. Build? Burn?",
    "One word: water.",
    "You don’t have to be ashamed of using your own ideas.",
    "Make a sudden, destructive unpredictable action; incorporate.",
    "Tidy up.",
    "Consult other sources.",
    "Do the words need changing?",
    "Use an unacceptable color.",
    "Ask your body.",
    "Humanize something free of error.",
    "Use filters.",
    "Balance the consistency principle with the inconsistency principle.",
    "Fill every beat with something.",
    "Discard an axiom.",
    "Listen to the quiet voice.",
    "What wouldn’t you do?",
    "Is it finished?",
    "Decorate, decorate!",
    "Put in earplugs.",
    "Give the game away.",
    "Reverse.",
    "Abandon normal instruments.",
    "Trust in the you of now.",
    "Use fewer notes.",
    "What would your closest friend do?",
    "Repetition is a form of change.",
    "Two words: distorting time.",
    "Give way to your worst impulse.",
    "Make a blank valuable by putting it in an exquisite frame.",
    "The inconsistency principle.",
    "Ghost echoes.",
    "Don't break the silence.",
    "You can only make one dot at a time.",
    "Discover the recipes you are using and abandon them.",
    "Just carry on.",
    "Comrades.",
    "(Organic) machinery.",
    "Courage!",
    "What mistakes did you make last time?",
    "You are an engineer.",
    "Consider different fading systems.",
    "Remove ambiguities and convert to specifics.",
    "Mute and continue.",
    "Look at the order in which you do things.",
    "It is quite possible (after all).",
    "Go outside. Shut the door.",
    "Don't stress one thing more than another.",
    "Do we need holes?",
    "Two words: cluster analysis.",
    "Work at a different speed.",
    "Do something boring.",
    "Look closely at the most embarrassing details and amplify them.",
    "Define an area as ‘safe’ and use it as an anchor.",
    "Mechanicalize something idiosyncratic.",
    "Overtly resist change.",
    "Emphasize the flaws.",
    "Accept advice.",
    "Remember those quiet evenings.",
    "Take a break.",
    "Imagine the music as a moving chain or caterpillar.",
    "Use an old idea.",
    "Imagine the music as a set of disconnected events.",
    "Change nothing and continue with immaculate consistency.",
    "What are you really thinking about just now? Incorporate.",
    "Look at a very small object, look at its center.",
    "Not building a wall, but making a brick.",
    "The most important thing is the thing most easily forgotten.",
    "Always first steps.",
    "Question the heroic approach.",
    "Be extravagant.",
    "State the problem in words as clearly as possible.",
    "Faced with a choice, do both.",
    "Retrace your steps.",
    "Convert a melodic element into a rhythmic element.",
    "Go to an extreme, move back to a more comfortable place.",
    "Once the search is in progress, something will be found.",
    "Only a part, not the whole.",
    "From nothing to more than nothing.",
    "Be less critical more often.",
    "When is it for? Who is it for?",
    "Destroy nothing. Destroy the most important thing.",
    "Take away as much mystery as possible. What’s left?",
    "What most recently impressed you? How is it similar? What can you learn from it? What could you take from it?",
    "First work alone, then work in unusual pairs.",
    "What do you do? Now, what do you do best?",
    "Back up a few steps. What else could you have done?",
    "What were the branch points in the evolution of this entity?",
    "Try faking it.",
    "How would you explain this to your parents?",
    "Who would make this really successful?",
    "What would make this really successful?",
    "Instead of changing the thing, change the world around it.",
    "List the qualities it has. List those you'd like.",
    "What else is this like?",
    "Describe the landscape in which this belongs.",
    "Steal a solution.",
    "Assemble some of the elements in a group and treat the group.",
    "Be dirty.",
    "Lost in useless territory.",
    "Lowest common denominator.",
  ]
  
  @IBOutlet weak var strategyLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func getStrategyButtonPressed(_ sender: Any) {
    strategyLabel.alpha = 0
    strategyLabel.text = strategies[randomNumber(upToButNotIncluding: strategies.count)]
    UIView.animate(withDuration: 3.0,
                   animations: {
      self.strategyLabel.alpha = 1
    })
  }
  
  func randomNumber(upToButNotIncluding upperBound: Int) -> Int {
    return Int(arc4random_uniform(UInt32(upperBound)))
  }
  
}


//  This code is released under the MIT license and contains "biolerplate" code
//  included in Xcode starter projects, which is released under an equally
//  permissive license.
//
//  Simply put, you're free to use this in your own projects, both
//  personal and commercial, as long as you include the copyright notice below.
//  It would be nice if you mentioned my name somewhere in your documentation
//  or credits.
//
//  MIT LICENSE
//  -----------
//  (As defined in https://opensource.org/licenses/MIT)
//
//  Copyright © 2017 Joey deVilla. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom
//  the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included
//  in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//  DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
//  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
//  OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
