abstract class BankAccount{
  String number;
  int balance;
  BankAccount({required this.number,required this.balance});
  void Deposit(int amt);
  void Withdraw(int amt);
  void printbaslance(int amt){
    print("balance) = ${amt}");
  }
}
class currentAccount extends BankAccount{
  int extralimit;
  currentAccount({required this.extralimit,required super.balance,required super.number});
  @override
  void Deposit(int amt){
    balance +=amt;
  }
  @override
  void Withdraw(int amt){
    print("inside current class");
    if(amt>balance+extralimit){
    balance -=amt;
  }
  else{
    print("low balance");
  }
  }

class savingAccount extends BankAccount{
  int extralimit;
  currentAccount({required this.extralimit,required super.balance,required super.number});
  @override
  void Deposit(int amt){
    balance +=amt;
  }
  @override
  void Withdraw(int amt){
    print("inside current class");
    if(amt>balance){
    balance -=amt;
  }
  else{
    print("low balance");
  }
  }
 
 void main(){
  List<BankAccount> accountList =[
    currentAccount(extralimit: 20000, balance: 40000, number: "1122"),
    currentAccount(extralimit: 3000, balance: 50000, number: "1123"),
    currentAccount(extralimit: 30000, balance: 1000000, number: "1124"),

  ]

 }

