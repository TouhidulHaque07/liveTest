
class Media{
  late String name;

  Media(String artistName){
    this.name=artistName;
  }

   void play(){
     print('Playing media. $name');
   }
}

class song extends Media{
  song(String artistName) : super(artistName);
  
  @override
  void play() {
    print('Playing song by $name');

  }

}


void main(){

  Media Alomgir=Media('Alomgir');
  Alomgir.play();
  song Runa=song('Runa Lila');
  Runa.play();

}