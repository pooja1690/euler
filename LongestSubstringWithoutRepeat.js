var lengthOfLongestSubstring = function(s) {
    var str = s
    var map = {}
    var strAccumulated = "";
    var longestWord = ""

    if (s.length == 0){
      return 0
    }

    for (var i = 0; i < str.length; i++) {
        if (map.hasOwnProperty(str.charAt(i))) {
          if (longestWord.length < strAccumulated.length) {
            longestWord = strAccumulated;
          }
          strAccumulated = s.substring(map[str.charAt(i)]+1,i)
          delete map[str.charAt(i)]
        }
        map[str.charAt(i)] = i
        strAccumulated = strAccumulated + str.charAt(i);
    }

    if (strAccumulated != "") {
        if (longestWord.length < strAccumulated.length) {
          longestWord = strAccumulated;
        }
        strAccumulated = ""
    }
    return longestWord.length
}
