#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>
#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

/**
* This function should:
*   1) Call the my_username() function in autotest-validate.c to get your hard coded username.
*   2) Obtain the value returned from function malloc_username_from_conf_file() in username-from-conf-file.h within
*       the assignment autotest submodule at assignment-autotest/test/assignment1/
*   3) Use unity assertion TEST_ASSERT_EQUAL_STRING_MESSAGE to verify the two strings are equal.  See
*       the [unity assertion reference](https://github.com/ThrowTheSwitch/Unity/blob/master/docs/UnityAssertionsReference.md)
*/
void test_validate_my_username()
{
    /**
     * TODO: Replace the line below with your code here as described above to verify your /conf/username.txt 
     * config file and my_username() functions are setup properly
     */
    // Step 1: Get the hardcoded username from my_username()
    const char *hardcoded_username = my_username();

    // Step 2: Get the username from the configuration file using malloc_username_from_conf_file()
    char *conf_file_username = malloc_username_from_conf_file();

    // Step 3: Verify the two usernames are equal using Unity's assertion
    TEST_ASSERT_EQUAL_STRING_MESSAGE(hardcoded_username, conf_file_username, "The usernames do not match!");

    // Clean up dynamically allocated memory
    free(conf_file_username);  // Ensure you free the memory allocated by malloc_username_from_conf_file()

}
