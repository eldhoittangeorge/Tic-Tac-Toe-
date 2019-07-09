import 'package:flutter/material.dart';
import 'consts.dart';
import 'cardgenerator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  int blockRep =

  List<List<int>> playerStatus = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  String playerPlaying = "PLAYER 1";
  Color color = Colors.pinkAccent;
  bool playedCard = true;
  Icon icon = null;

  void resetGame() {
    playerStatus = [
      [0, 0, 0],
      [0, 0, 0],
      [0, 0, 0]
    ];
  }

  int winGame() {
    int winner;
    if ((playerStatus[0][0] == playerStatus[0][1]) &&
        (playerStatus[0][2] == playerStatus[0][1]) &&
        (playerStatus[0][0] != 0) &&
        (playerStatus[0][1] != 0)) {
      print("winner");
      winner = playerStatus[0][0];
    } else if ((playerStatus[1][0] == playerStatus[1][1]) ==
        playerStatus[1][2]) {
      winner = playerStatus[1][0];
    } else if ((playerStatus[2][0] == playerStatus[2][1]) ==
        playerStatus[2][2]) {
      winner = playerStatus[2][0];
    } else if ((playerStatus[0][0] == playerStatus[1][0]) ==
        playerStatus[2][0]) {
      winner = playerStatus[1][0];
    } else if ((playerStatus[0][1] == playerStatus[1][1]) ==
        playerStatus[2][1]) {
      winner = playerStatus[1][0];
    } else if ((playerStatus[2][0] == playerStatus[2][1]) ==
        playerStatus[2][2]) {
      winner = playerStatus[1][0];
    } else if ((playerStatus[0][0] == playerStatus[1][1]) ==
        playerStatus[2][2]) {
      winner = playerStatus[1][0];
    } else if ((playerStatus[0][2] == playerStatus[1][1]) ==
        playerStatus[2][0]) {
      winner = playerStatus[1][0];
    } else {
      winner = -1;
    }
    return winner;
  }

  void play(int i, int j) {
    playerPlaying = playerPlaying == "PLAYER 1" ? "PLAYER 2" : "PLAYER 1";
    // if (winGame() != -1) {
    // Alert(
    //         context: context,
    //         title: "Winner",
    //         desc: "The winner is " + playerPlaying)
    //     .show();
    // } else if (playerStatus[i][j] == 0) {
    playerStatus[i][j] = playerPlaying == "PLAYER 1" ? 1 : 2;
    if (winGame() != -1) {
      Alert(
              context: context,
              title: "Winner",
              desc: "The winner is " + playerPlaying)
          .show();
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tic Tac Toe"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    child: Text(
                      playerPlaying.toString(),
                      textAlign: TextAlign.center,
                      style: kPlayerTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(0, 0);
                                });
                              },
                              color: playerStatus[0][0] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[0][0] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[0][0] == 2)
                                      ? playerTwoIcon
                                      : null,
                            ),
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(0, 1);
                                });
                              },
                              color: playerStatus[0][1] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[0][1] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[0][1] == 2)
                                      ? playerTwoIcon
                                      : null,
                            ),
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(0, 2);
                                });
                              },
                              color: playerStatus[0][2] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[0][2] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[0][2] == 2)
                                      ? playerTwoIcon
                                      : null,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(1, 0);
                                });
                              },
                              color: playerStatus[1][0] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[1][0] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[1][0] == 2)
                                      ? playerTwoIcon
                                      : null,
                            ),
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(1, 1);
                                });
                              },
                              color: playerStatus[1][1] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[1][1] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[1][1] == 2)
                                      ? playerTwoIcon
                                      : null,
                            ),
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(1, 2);
                                });
                              },
                              color: playerStatus[1][2] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[1][2] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[1][2] == 2)
                                      ? playerTwoIcon
                                      : null,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(2, 0);
                                });
                              },
                              color: playerStatus[2][0] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[2][0] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[2][0] == 2)
                                      ? playerTwoIcon
                                      : null,
                            ),
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(2, 1);
                                });
                              },
                              color: playerStatus[2][1] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[2][1] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[2][1] == 2)
                                      ? playerTwoIcon
                                      : null,
                            ),
                            CardGenerator(
                              function: () {
                                setState(() {
                                  play(2, 2);
                                });
                              },
                              color: playerStatus[2][2] == 0
                                  ? unplayedColor
                                  : playedColor,
                              icon: (playerStatus[2][2] == 1)
                                  ? playerOneIcon
                                  : (playerStatus[2][2] == 2)
                                      ? playerTwoIcon
                                      : null,
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("hello");
                },
                child: Container(
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        resetGame();
                      });
                    },
                    child: Center(
                      child: Container(
                        child: Text(
                          "REPLAY",
                          textAlign: TextAlign.center,
                          style: kReplayTextStyle,
                        ),
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
