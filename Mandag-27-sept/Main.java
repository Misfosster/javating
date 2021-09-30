public class Main {

    public static void main(String[] args) {
        BankAccount a1 = new BankAccount("Egon");
        BankAccount a2 = new BankAccount("Benny");
        BankAccount a3 = new BankAccount("Kjeld");
        System.out.println(a3);
        a1.doTransaction(-500);
        printAccounts(a1);
        printAccounts(a2);
        printAccounts(a3);
    }

    public static void printAccounts(BankAccount account) {
        String s;
        System.out.println(account.getOwner()+": "+account.getBalance());

    }
}
