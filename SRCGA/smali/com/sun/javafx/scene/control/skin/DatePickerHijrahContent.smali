.class Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
.super Lcom/sun/javafx/scene/control/skin/DatePickerContent;
.source "DatePickerHijrahContent.java"


# instance fields
.field private hijrahMonthYearLabel:Ljavafx/scene/control/Label;


# direct methods
.method constructor <init>(Ljavafx/scene/control/DatePicker;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    move-object v1, p1

    .local v1, "datePicker":Ljavafx/scene/control/DatePicker;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;-><init>(Ljavafx/scene/control/DatePicker;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected createDayCells()V
    .locals 8

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->createDayCells()V

    .line 147
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->dayCells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/DateCell;

    move-object v2, v4

    .line 148
    .local v2, "dayCell":Ljavafx/scene/control/DateCell;
    new-instance v4, Ljavafx/scene/text/Text;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavafx/scene/text/Text;-><init>()V

    move-object v3, v4

    .line 149
    .local v3, "secondaryText":Ljavafx/scene/text/Text;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/DateCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-string v5, "DateCell.secondaryText"

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 150
    goto :goto_0

    .line 151
    .end local v2    # "dayCell":Ljavafx/scene/control/DateCell;
    .end local v3    # "secondaryText":Ljavafx/scene/text/Text;
    :cond_0
    return-void
.end method

.method protected createMonthYearPane()Ljavafx/scene/layout/BorderPane;
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->createMonthYearPane()Ljavafx/scene/layout/BorderPane;

    move-result-object v2

    move-object v1, v2

    .line 76
    .local v1, "monthYearPane":Ljavafx/scene/layout/BorderPane;
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Label;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/control/Label;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->hijrahMonthYearLabel:Ljavafx/scene/control/Label;

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->hijrahMonthYearLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "secondary-label"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 78
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->hijrahMonthYearLabel:Ljavafx/scene/control/Label;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/BorderPane;->setBottom(Ljavafx/scene/Node;)V

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->hijrahMonthYearLabel:Ljavafx/scene/control/Label;

    sget-object v3, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-static {v2, v3}, Ljavafx/scene/layout/BorderPane;->setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V

    .line 81
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    return-object v0
.end method

.method protected getPrimaryChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    return-object v0
.end method

.method updateDayCells()V
    .locals 18

    .prologue
    .line 154
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    move-object v12, v0

    invoke-super {v12}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->updateDayCells()V

    .line 156
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->getLocale()Ljava/util/Locale;

    move-result-object v12

    move-object v1, v12

    .line 157
    .local v1, "locale":Ljava/util/Locale;
    sget-object v12, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move-object v2, v12

    .line 159
    .local v2, "chrono":Ljava/time/chrono/HijrahChronology;
    const/4 v12, -0x1

    move v3, v12

    .line 160
    .local v3, "majorityMonth":I
    const/4 v12, -0x1

    move v4, v12

    .line 161
    .local v4, "visibleDaysInMajorityMonth":I
    const/4 v12, -0x1

    move v5, v12

    .line 162
    .local v5, "curMonth":I
    const/4 v12, 0x0

    move v6, v12

    .line 164
    .local v6, "visibleDaysInCurMonth":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->dayCells:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_0
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/DateCell;

    move-object v8, v12

    .line 165
    .local v8, "dayCell":Ljavafx/scene/control/DateCell;
    move-object v12, v8

    invoke-virtual {v12}, Ljavafx/scene/control/DateCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v12

    const-string v13, "DateCell.secondaryText"

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/text/Text;

    move-object v9, v12

    .line 166
    .local v9, "secondaryText":Ljavafx/scene/text/Text;
    move-object v12, v8

    invoke-virtual {v12}, Ljavafx/scene/control/DateCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v12

    const-string v13, "hijrah-day-cell"

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 167
    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string v16, "text"

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    const-string v16, "secondary-text"

    aput-object v16, v14, v15

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v12

    .line 170
    move-object v12, v2

    move-object v13, v0

    move-object v14, v8

    :try_start_0
    invoke-virtual {v13, v14}, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->dayCellDate(Ljavafx/scene/control/DateCell;)Ljava/time/LocalDate;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v12

    move-object v10, v12

    .line 173
    .local v10, "cDate":Ljava/time/chrono/HijrahDate;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->dayCellFormatter:Ljava/time/format/DateTimeFormatter;

    move-object v13, v1

    .line 174
    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v12

    move-object v13, v2

    .line 175
    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v12

    move-object v13, v1

    .line 176
    invoke-static {v13}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v12

    move-object v13, v10

    .line 177
    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 179
    .local v11, "hijrahStr":Ljava/lang/String;
    move-object v12, v9

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 180
    move-object v12, v8

    invoke-virtual {v12}, Ljavafx/scene/control/DateCell;->requestLayout()V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 198
    .end local v10    # "cDate":Ljava/time/chrono/HijrahDate;
    .end local v11    # "hijrahStr":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 181
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 184
    .local v10, "ex":Ljava/time/DateTimeException;
    move-object v12, v9

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 185
    move-object v12, v8

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljavafx/scene/control/DateCell;->setDisable(Z)V

    goto :goto_1

    .line 213
    .end local v8    # "dayCell":Ljavafx/scene/control/DateCell;
    .end local v9    # "secondaryText":Ljavafx/scene/text/Text;
    .end local v10    # "ex":Ljava/time/DateTimeException;
    :cond_0
    return-void
.end method

.method protected updateMonthYearPane()V
    .locals 27

    .prologue
    .line 86
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;
    move-object/from16 v22, v1

    invoke-super/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->updateMonthYearPane()V

    .line 88
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->getLocale()Ljava/util/Locale;

    move-result-object v22

    move-object/from16 v2, v22

    .line 89
    .local v2, "locale":Ljava/util/Locale;
    sget-object v22, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move-object/from16 v3, v22

    .line 90
    .local v3, "chrono":Ljava/time/chrono/HijrahChronology;
    const-wide/16 v22, -0x1

    move-wide/from16 v4, v22

    .line 91
    .local v4, "firstMonth":J
    const-wide/16 v22, -0x1

    move-wide/from16 v6, v22

    .line 92
    .local v6, "firstYear":J
    const/16 v22, 0x0

    move-object/from16 v8, v22

    .line 93
    .local v8, "firstMonthStr":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v9, v22

    .line 94
    .local v9, "firstYearStr":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v10, v22

    .line 95
    .local v10, "hijrahStr":Ljava/lang/String;
    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->displayedYearMonthProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/YearMonth;

    move-object/from16 v11, v22

    .line 97
    .local v11, "displayedYearMonth":Ljava/time/YearMonth;
    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->dayCells:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v12, v22

    :goto_0
    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v22, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/control/DateCell;

    move-object/from16 v13, v22

    .line 98
    .local v13, "dayCell":Ljavafx/scene/control/DateCell;
    move-object/from16 v22, v1

    move-object/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->dayCellDate(Ljavafx/scene/control/DateCell;)Ljava/time/LocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 101
    .local v14, "date":Ljava/time/LocalDate;
    move-object/from16 v22, v11

    move-object/from16 v23, v14

    invoke-static/range {v23 .. v23}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/YearMonth;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 102
    goto :goto_0

    .line 106
    :cond_0
    move-object/from16 v22, v3

    move-object/from16 v23, v14

    :try_start_0
    invoke-virtual/range {v22 .. v23}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v22

    move-object/from16 v15, v22

    .line 107
    .local v15, "cDate":Ljava/time/chrono/HijrahDate;
    move-object/from16 v22, v15

    sget-object v23, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v22 .. v23}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 108
    .local v16, "month":J
    move-object/from16 v22, v15

    sget-object v23, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v22 .. v23}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 110
    .local v18, "year":J
    move-object/from16 v22, v10

    if-eqz v22, :cond_1

    move-wide/from16 v22, v16

    move-wide/from16 v24, v4

    cmp-long v22, v22, v24

    if-eqz v22, :cond_2

    .line 111
    :cond_1
    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->monthFormatter:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v22

    move-object/from16 v23, v3

    .line 112
    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v22

    move-object/from16 v23, v2

    .line 113
    invoke-static/range {v23 .. v23}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v22

    move-object/from16 v23, v15

    .line 114
    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    .line 115
    .local v20, "monthStr":Ljava/lang/String;
    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->yearFormatter:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v22

    move-object/from16 v23, v3

    .line 116
    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v22

    move-object/from16 v23, v2

    .line 117
    invoke-static/range {v23 .. v23}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v22

    move-object/from16 v23, v15

    .line 118
    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v21, v22

    .line 119
    .local v21, "yearStr":Ljava/lang/String;
    move-object/from16 v22, v10

    if-nez v22, :cond_3

    .line 120
    move-wide/from16 v22, v16

    move-wide/from16 v4, v22

    .line 121
    move-wide/from16 v22, v18

    move-wide/from16 v6, v22

    .line 122
    move-object/from16 v22, v20

    move-object/from16 v8, v22

    .line 123
    move-object/from16 v22, v21

    move-object/from16 v9, v22

    .line 124
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v10, v22

    .line 138
    .line 139
    .end local v15    # "cDate":Ljava/time/chrono/HijrahDate;
    .end local v16    # "month":J
    .end local v18    # "year":J
    .end local v20    # "monthStr":Ljava/lang/String;
    .end local v21    # "yearStr":Ljava/lang/String;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 126
    .restart local v15    # "cDate":Ljava/time/chrono/HijrahDate;
    .restart local v16    # "month":J
    .restart local v18    # "year":J
    .restart local v20    # "monthStr":Ljava/lang/String;
    .restart local v21    # "yearStr":Ljava/lang/String;
    :cond_3
    move-wide/from16 v22, v18

    move-wide/from16 v24, v6

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 127
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v21

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    move-object/from16 v10, v22

    .line 131
    .line 141
    .end local v13    # "dayCell":Ljavafx/scene/control/DateCell;
    .end local v14    # "date":Ljava/time/LocalDate;
    .end local v15    # "cDate":Ljava/time/chrono/HijrahDate;
    .end local v16    # "month":J
    .end local v18    # "year":J
    .end local v20    # "monthStr":Ljava/lang/String;
    .end local v21    # "yearStr":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;->hijrahMonthYearLabel:Ljavafx/scene/control/Label;

    move-object/from16 v22, v0

    move-object/from16 v23, v10

    invoke-virtual/range {v22 .. v23}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 142
    return-void

    .line 129
    .restart local v13    # "dayCell":Ljavafx/scene/control/DateCell;
    .restart local v14    # "date":Ljava/time/LocalDate;
    .restart local v15    # "cDate":Ljava/time/chrono/HijrahDate;
    .restart local v16    # "month":J
    .restart local v18    # "year":J
    .restart local v20    # "monthStr":Ljava/lang/String;
    .restart local v21    # "yearStr":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    move-object/from16 v10, v22

    goto :goto_2

    .line 134
    .end local v15    # "cDate":Ljava/time/chrono/HijrahDate;
    .end local v16    # "month":J
    .end local v18    # "year":J
    .end local v20    # "monthStr":Ljava/lang/String;
    .end local v21    # "yearStr":Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v15, v22

    goto/16 :goto_1
.end method
