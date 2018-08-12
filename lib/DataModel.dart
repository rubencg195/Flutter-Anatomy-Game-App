import 'package:anatomika/utils/Tile.dart';
import 'package:anatomika/utils/question.dart';
import 'package:anatomika/utils/quiz.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DataModel extends Model {
  List<Tile>  get tileData => _tileData;
  List<StaggeredTile>  get staggeredTiles => _staggeredTiles;
  List<Quiz>  get Quizes => _quizes;
  Quiz  get selectedQuiz => _quizes[_selectedQuiz];

  int _selectedQuiz = 0;

  void increment(int next) {
    _selectedQuiz = next;
    notifyListeners();
  }

  List<Tile> _tileData =  [
    const Tile(
        "assets/brain.jpg",
        "Brain",
        "Learn More"
    ),
    const Tile(
        "assets/eye.jpg",
        "Eye",
        "Learn More"
    ),
    const Tile(
        "assets/heart.jpg",
        "Heart",
        "Learn More"
    ),
    const Tile(
        "assets/lung.jpg",
        "Lung",
        "Learn More"
    ),
    const Tile(
        "assets/skull.jpg",
        "Skull",
        "Learn More"
    )
  ];
  List<StaggeredTile> _staggeredTiles = [
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
    const StaggeredTile.fit(2),
  ];

  List<Quiz> _quizes = [
    new Quiz([
      new Question("The brain is an organ that serves as the center of the nervous system", true),
      new Question("The brain is located in the back", false),
      new Question("The brain is the most complex organ in a vertebrate's body.", true)
    ]),
    new Quiz([
      new Question("Eyes are organs of the visual system.", true),
      new Question("Pizza is healthy", false),
      new Question("Flutter is awesome", true)
    ]),
    new Quiz([
      new Question("Elon Musk is human", false),
      new Question("Pizza is healthy", false),
      new Question("Flutter is awesome", true)
    ]),
    new Quiz([
      new Question("Elon Musk is human", false),
      new Question("Pizza is healthy", false),
      new Question("Flutter is awesome", true)
    ])
  ];
}
