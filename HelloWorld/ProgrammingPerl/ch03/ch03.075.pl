$leapyear =
    $year % 4
        ? 0
        : $year % 100
          ? 1
          : $year % 400
            ? 0
            : 1;
