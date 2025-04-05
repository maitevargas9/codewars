/*
Description

Complete the solution so that it returns the number of times the search_text is found within the full_text. 
Overlap is not permitted : "aaa" contains 1 instance of "aa", not 2.

Usage example:
full_text = "aa_bb_cc_dd_bb_e", search_text = "bb"
---> should return 2 since "bb" shows up twice
full_text = "aaabbbcccc", search_text = "bbb"
---> should return 1
*/

public class Kata
{
    public static int SubstringCount(string fullText, string searchText)
    {
        if (string.IsNullOrEmpty(searchText))
        {
            return 0;
        }

        int count = 0;
        int index = 0;

        while ((index = fullText.IndexOf(searchText, index)) != -1)
        {
            count++;
            index += searchText.Length;
        }

        return count;
    }
}