.class public Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
.super Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
.source "DatePickerSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl",
        "<",
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# instance fields
.field private datePicker:Ljavafx/scene/control/DatePicker;

.field private datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

.field private displayNode:Ljavafx/scene/control/TextField;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/DatePicker;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, p1

    .local v1, "datePicker":Ljavafx/scene/control/DatePicker;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/DatePickerBehavior;-><init>(Ljavafx/scene/control/DatePicker;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;-><init>(Ljavafx/scene/control/ComboBoxBase;Lcom/sun/javafx/scene/control/behavior/ComboBoxBaseBehavior;)V

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->arrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->paddingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/DatePickerSkin;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 73
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->chronologyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "CHRONOLOGY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 74
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "CONVERTER"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 75
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->dayCellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "DAY_CELL_FACTORY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 76
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->showWeekNumbersProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    const-string v4, "SHOW_WEEK_NUMBERS"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "VALUE"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected computeMinWidth(DDDDD)D
    .locals 15

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    return-wide v1
.end method

.method protected focusLost()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/DatePicker;

    invoke-virtual {v1}, Ljavafx/scene/control/DatePicker;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    return-object v0
.end method

.method public getDisplayNode()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->displayNode:Ljavafx/scene/control/TextField;

    if-nez v1, :cond_0

    .line 164
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->getEditableInputNode()Ljavafx/scene/control/TextField;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->displayNode:Ljavafx/scene/control/TextField;

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->displayNode:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "date-picker-display-node"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 166
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->updateDisplayNode()V

    .line 168
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->displayNode:Ljavafx/scene/control/TextField;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v2}, Ljavafx/scene/control/DatePicker;->isEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextField;->setEditable(Z)V

    .line 170
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->displayNode:Ljavafx/scene/control/TextField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    return-object v0
.end method

.method protected getEditor()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/DatePicker;

    invoke-virtual {v1}, Ljavafx/scene/control/DatePicker;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    return-object v0
.end method

.method public getPopupContent()Ljavafx/scene/Node;
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    if-nez v1, :cond_0

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v1}, Ljavafx/scene/control/DatePicker;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    instance-of v1, v1, Ljava/time/chrono/HijrahChronology;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerHijrahContent;-><init>(Ljavafx/scene/control/DatePicker;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    .line 89
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    return-object v0

    .line 85
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    :cond_1
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;-><init>(Ljavafx/scene/control/DatePicker;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    goto :goto_0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    const-string v3, "CHRONOLOGY"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DAY_CELL_FACTORY"

    move-object v4, v1

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->updateDisplayNode()V

    .line 117
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    .line 118
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->popup:Ljavafx/scene/control/PopupControl;

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    const-string v3, "CONVERTER"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->updateDisplayNode()V

    goto :goto_0

    .line 121
    :cond_3
    const-string v3, "EDITOR"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->getEditableInputNode()Ljavafx/scene/control/TextField;

    move-result-object v3

    goto :goto_0

    .line 123
    :cond_4
    const-string v3, "SHOWING"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    if-eqz v3, :cond_5

    .line 126
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    move-object v2, v3

    .line 127
    .local v2, "date":Ljava/time/LocalDate;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->displayedYearMonthProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v2

    if-eqz v4, :cond_6

    move-object v4, v2

    invoke-static {v4}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 128
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->updateValues()V

    .line 130
    .end local v2    # "date":Ljava/time/LocalDate;
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->show()V

    goto :goto_0

    .line 127
    .restart local v2    # "date":Ljava/time/LocalDate;
    :cond_6
    invoke-static {}, Ljava/time/YearMonth;->now()Ljava/time/YearMonth;

    move-result-object v4

    goto :goto_1

    .line 132
    .end local v2    # "date":Ljava/time/LocalDate;
    :cond_7
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->hide()V

    goto :goto_0

    .line 134
    :cond_8
    const-string v3, "SHOW_WEEK_NUMBERS"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    if-eqz v3, :cond_1

    .line 136
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->updateGrid()V

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->updateWeeknumberDateCells()V

    goto :goto_0

    .line 139
    :cond_9
    const-string v3, "VALUE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 140
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->updateDisplayNode()V

    .line 141
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    if-eqz v3, :cond_a

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v3}, Ljavafx/scene/control/DatePicker;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    move-object v2, v3

    .line 143
    .restart local v2    # "date":Ljava/time/LocalDate;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->displayedYearMonthProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v2

    if-eqz v4, :cond_b

    move-object v4, v2

    invoke-static {v4}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 144
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->updateValues()V

    .line 146
    .end local v2    # "date":Ljava/time/LocalDate;
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    new-instance v4, Ljavafx/event/ActionEvent;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/DatePicker;->fireEvent(Ljavafx/event/Event;)V

    goto/16 :goto_0

    .line 143
    .restart local v2    # "date":Ljava/time/LocalDate;
    :cond_b
    invoke-static {}, Ljava/time/YearMonth;->now()Ljava/time/YearMonth;

    move-result-object v4

    goto :goto_2

    .line 148
    .end local v2    # "date":Ljava/time/LocalDate;
    :cond_c
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->handleControlPropertyChanged(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->show()V

    .line 105
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePickerContent:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->clearFocus()V

    .line 106
    return-void
.end method

.method public syncWithAutoUpdate()V
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->getPopup()Ljavafx/scene/control/PopupControl;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v1}, Ljavafx/scene/control/DatePicker;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->datePicker:Ljavafx/scene/control/DatePicker;

    invoke-virtual {v1}, Ljavafx/scene/control/DatePicker;->hide()V

    .line 179
    :cond_0
    return-void
.end method
