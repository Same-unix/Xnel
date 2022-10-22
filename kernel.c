
void Main() {
    printf("xnel \n");
    // Username
    char userName[30];

    printf("Please enter your username: \n");

    // Get and save the text
    scanf("%s", userName);

    // Output the text
    printf("Hello %s. welcome to xnel\n", userName);

    // password
    int passWord;

    // Ask the user
    printf("Type a password \n");

    // save it
    scanf("%d", &passWord);

    // print the password
    printf("Password saved: %d", passWord);

    /* Window */
    printf("*****************************");
    printf("*                 _ []  X   *");
    printf("*  welcome to Xnel          *");
    printf("*                           *");
    printf("*                           *");
    printf("*                           *");
    printf("*                           *");
    printf("*                           *");
    printf("*                           *");
    printf("*                           *");
    printf("*                           *");
    printf("*****************************");

    while(1);
}