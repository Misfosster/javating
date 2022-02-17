int[][] map = new int[3][3];
int playerTurn = -1;
boolean winnerFound=false;

void setup()
{
  size(500, 500);
  startOrReset();
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw()
{
  resetGame();
  if (winnerFound==false) {
    checkWinner();
  }
}

void resetGame() {
  if (keyCode=='R') {
    startOrReset();
    for (int x = 0; x<3; x++) {
      for (int y = 0; y<3; y++) {
        map[x][y]=0;
      }
    }
    keyCode=0;
    playerTurn=-1;
    winnerFound=false;
  }
}

void mouseReleased() 
{
  int x=getCoordinate(mouseX);
  int y=getCoordinate(mouseY);
  assignToMap(x, y);
  rectOrEllipse(x, y);
}

void startOrReset() 
{
  background(255);
  strokeWeight(width/30);
  for (int i = 1; i<=2; i++) 
  {
    line(width*i/3, 0, width*i/3, height);
  }
  for (int i = 1; i<=2; i++) 
  {
    line(0, height*i/3, width, height*i/3);
  }
}

int getCoordinate(int input) 
{
  if (input<width*1/3) 
  {
    return 0;
  } 
  else if (input<width*2/3) 
  {
    return 1;
  } 
  else 
  {
    return 2;
  }
}

void assignToMap(int x, int y) 
{
  if (map[x][y]!=0) 
  {
    println("Seat taken");
    return;
  } else {
    map[x][y]=playerTurn;
    playerTurn=playerTurn*-1;
  }
}

void rectOrEllipse(int x, int y) 
{
  if (map[x][y]!=-1||map[x][y]!=1) 
  {
    if (playerTurn>0) {
      rect(width/6+x*width/3, height/6+y*height/3, width/6, width/25);
      rect(width/6+x*width/3, height/6+y*height/3, width/25, width/6);
    } else if (playerTurn<0) {
      ellipse(width/6+x*width/3, height/6+y*height/3, width/6, width/6);
    }
  }
}

void printMap()
{
  for (int y = 0; y <= 2; y++)
  {
    for (int x = 0; x <= 2; x++)   
    {
      print(map[x][y]+", ");
    }
    println();
  }
}

void checkWinner() 
{
  int prev=0;
  int countdown=2;
  for (int y = 0; y<3; y++) 
  {
    for (int x = 0; x<3; x++) 
    {
      prev+=map[x][y];
      if (prev==-3 || prev==3) 
      {
        println("We've found a winner!");
        winnerFound=true;
      }
      if (x==2) prev=0;
    }
  }
  for (int x = 0; x<3; x++) 
  {
    for (int y = 0; y<3; y++) 
    {
      prev+=map[x][y];
      if (prev==-3 || prev==3) 
      {
        println("We've found a winner!");
        winnerFound=true;
      }
      if (y==2) prev=0;
    }
  }
  for (int i=0; i<3; i++) 
  {
    prev+=map[i][i];
    if (prev==-3 || prev==3) 
    {
      println("We've found a winner!");
      winnerFound=true;
    }
    if (i==2) prev=0;
  }
  for (int i=0; i<3; i++) 
  {
    prev+=map[i][countdown];
    if (prev==-3 || prev==3) 
    {
      println("We've found a winner!");
      winnerFound=true;
    }
    countdown--;
  }
}
