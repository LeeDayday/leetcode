# Valid Word
# https://leetcode.com/problems/valid-word/description/?envType=daily-question&envId=2025-07-15

import re


class Solution(object):
    def isValid(self, word):
        """
        :type word: str
        :rtype: bool
        """
        vowels = ['a', 'e', 'i', 'o', 'u']
        # minimum 3 characters
        if len(word) < 3:
            return False

        # only digits / English letters
        if re.match('^[0-9a-zA-Z]+$', word) is None:
            return False

        cnt_v = 0
        cnt_c = 0
        for ch in word:
            if ch.lower() in vowels:
                cnt_v += 1
            elif 'a' <= ch.lower() <= 'z':
                cnt_c += 1
            
        # at least one vowel and consonant
        if cnt_v * cnt_c == 0:
            return False
        
        return True
