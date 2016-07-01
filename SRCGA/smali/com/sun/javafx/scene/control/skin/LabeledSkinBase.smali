.class public abstract Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "LabeledSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Labeled;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;>",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<TC;TB;>;"
    }
.end annotation


# instance fields
.field public bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

.field private containsMnemonic:Z

.field ellipsisWidth:D

.field graphic:Ljavafx/scene/Node;

.field final graphicPropertyChangedListener:Ljavafx/beans/InvalidationListener;

.field invalidText:Z

.field private labeledNode:Ljavafx/scene/Node;

.field private mnemonicCode:Ljavafx/scene/input/KeyCombination;

.field private mnemonicScene:Ljavafx/scene/Scene;

.field mnemonic_underscore:Ljavafx/scene/shape/Line;

.field text:Lcom/sun/javafx/scene/control/skin/LabeledText;

.field private textClip:Ljavafx/scene/shape/Rectangle;

.field textWidth:D

.field private wrapHeight:D

.field private wrapWidth:D


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "labeled":Ljavafx/scene/control/Labeled;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 68
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    .line 81
    move-object v3, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    .line 88
    move-object v3, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->ellipsisWidth:D

    .line 101
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphicPropertyChangedListener:Ljavafx/beans/InvalidationListener;

    .line 821
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    .line 822
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    .line 825
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    .line 125
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/LabeledText;-><init>(Ljavafx/scene/control/Labeled;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    .line 127
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateChildren()V

    .line 133
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->ellipsisStringProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "ELLIPSIS_STRING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 134
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "WIDTH"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 135
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "HEIGHT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 136
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->textFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TEXT_FILL"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 137
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "FONT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 138
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "GRAPHIC"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 139
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "CONTENT_DISPLAY"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 140
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->labelPaddingProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    const-string v5, "LABEL_PADDING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 141
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "GRAPHIC_TEXT_GAP"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 142
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "ALIGNMENT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 143
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "MNEMONIC_PARSING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 144
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    const-string v5, "TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 145
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TEXT_ALIGNMENT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 146
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TEXT_OVERRUN"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 147
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "WRAP_TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 148
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "UNDERLINE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 149
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "LINE_SPACING"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 150
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    const-string v5, "SCENE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->lambda$new$278(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->lambda$updateDisplayedText$279()V

    return-void
.end method

.method private addMnemonic()V
    .locals 7

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    .line 514
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    .line 515
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    if-eqz v1, :cond_0

    .line 516
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    new-instance v2, Ljavafx/scene/input/Mnemonic;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicCode:Ljavafx/scene/input/KeyCombination;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/input/Mnemonic;-><init>(Ljavafx/scene/Node;Ljavafx/scene/input/KeyCombination;)V

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->addMnemonic(Ljavafx/scene/input/Mnemonic;)V

    .line 519
    :cond_0
    return-void
.end method

.method private computeMinLabeledPartHeight(DDDDD)D
    .locals 31

    .prologue
    .line 693
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/Labeled;

    move-object/from16 v14, v24

    .line 694
    .local v14, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v24

    move-object/from16 v15, v24

    .line 696
    .local v15, "font":Ljavafx/scene/text/Font;
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 697
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v24, v16

    if-eqz v24, :cond_0

    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 698
    move-object/from16 v24, v16

    const/16 v25, 0xa

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    move/from16 v17, v24

    .line 699
    .local v17, "newlineIndex":I
    move/from16 v24, v17

    if-ltz v24, :cond_0

    .line 700
    move-object/from16 v24, v16

    const/16 v25, 0x0

    move/from16 v26, v17

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 706
    .end local v17    # "newlineIndex":I
    :cond_0
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getLineSpacing()D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 707
    .local v17, "s":D
    move-object/from16 v24, v15

    move-object/from16 v25, v16

    const-wide/16 v26, 0x0

    move-wide/from16 v28, v17

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v30

    invoke-static/range {v24 .. v30}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DDLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 709
    .local v19, "textHeight":D
    move-wide/from16 v24, v19

    move-wide/from16 v21, v24

    .line 712
    .local v21, "h":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v24

    if-nez v24, :cond_2

    .line 713
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v23, v24

    .line 714
    .local v23, "graphic":Ljavafx/scene/Node;
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v24

    sget-object v25, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1

    move-object/from16 v24, v14

    .line 715
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v24

    sget-object v25, Ljavafx/scene/control/ContentDisplay;->BOTTOM:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 716
    :cond_1
    move-object/from16 v24, v23

    move-wide/from16 v25, v4

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    move-object/from16 v26, v14

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v26, v19

    add-double v24, v24, v26

    move-wide/from16 v21, v24

    .line 722
    .end local v23    # "graphic":Ljavafx/scene/Node;
    :cond_2
    :goto_0
    move-wide/from16 v24, v6

    move-wide/from16 v26, v21

    add-double v24, v24, v26

    move-wide/from16 v26, v10

    add-double v24, v24, v26

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->topLabelPadding()D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bottomLabelPadding()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v3, v24

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v3

    .line 718
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    .restart local v23    # "graphic":Ljavafx/scene/Node;
    :cond_3
    move-wide/from16 v24, v19

    move-object/from16 v26, v23

    move-wide/from16 v27, v4

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v26

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v21, v24

    goto :goto_0
.end method

.method private computeMinLabeledPartWidth(DDDDD)D
    .locals 33

    .prologue
    .line 640
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v4, p1

    .local v4, "height":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/Labeled;

    move-object/from16 v14, v28

    .line 641
    .local v14, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v28

    move-object/from16 v15, v28

    .line 642
    .local v15, "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 643
    .local v16, "gap":D
    const-wide/16 v28, 0x0

    move-wide/from16 v18, v28

    .line 645
    .local v18, "minTextWidth":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v28

    move-object/from16 v20, v28

    .line 646
    .local v20, "font":Ljavafx/scene/text/Font;
    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->getTextOverrun()Ljavafx/scene/control/OverrunStyle;

    move-result-object v28

    move-object/from16 v21, v28

    .line 647
    .local v21, "truncationStyle":Ljavafx/scene/control/OverrunStyle;
    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->getEllipsisString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v22, v28

    .line 648
    .local v22, "ellipsisString":Ljava/lang/String;
    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v28

    .line 649
    .local v23, "string":Ljava/lang/String;
    move-object/from16 v28, v23

    if-eqz v28, :cond_0

    move-object/from16 v28, v23

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_3

    :cond_0
    const/16 v28, 0x1

    :goto_0
    move/from16 v24, v28

    .line 651
    .local v24, "emptyText":Z
    move/from16 v28, v24

    if-nez v28, :cond_2

    .line 653
    move-object/from16 v28, v21

    sget-object v29, Ljavafx/scene/control/OverrunStyle;->CLIP:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 654
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_1

    .line 656
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v30, v23

    const/16 v31, 0x0

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    const-wide/16 v31, 0x0

    invoke-static/range {v29 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    .line 658
    :cond_1
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    move-wide/from16 v28, v0

    move-wide/from16 v18, v28

    .line 672
    :cond_2
    :goto_1
    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v28

    move-object/from16 v25, v28

    .line 674
    .local v25, "graphic":Ljavafx/scene/Node;
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 675
    move-wide/from16 v28, v18

    move-wide/from16 v26, v28

    .line 684
    .local v26, "width":D
    :goto_2
    move-wide/from16 v28, v26

    move-wide/from16 v30, v12

    add-double v28, v28, v30

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->leftLabelPadding()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v30, v8

    add-double v28, v28, v30

    move-object/from16 v30, v3

    .line 685
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->rightLabelPadding()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v3, v28

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v3

    .line 649
    .end local v24    # "emptyText":Z
    .end local v25    # "graphic":Ljavafx/scene/Node;
    .end local v26    # "width":D
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :cond_3
    const/16 v28, 0x0

    goto :goto_0

    .line 660
    .restart local v24    # "emptyText":Z
    :cond_4
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_5

    .line 661
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v30, v23

    const-wide/16 v31, 0x0

    invoke-static/range {v29 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    .line 664
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->ellipsisWidth:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_6

    .line 665
    move-object/from16 v28, v3

    move-object/from16 v29, v20

    move-object/from16 v30, v22

    const-wide/16 v31, 0x0

    invoke-static/range {v29 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->ellipsisWidth:D

    .line 667
    :cond_6
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    move-wide/from16 v28, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->ellipsisWidth:D

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    goto/16 :goto_1

    .line 676
    .restart local v25    # "graphic":Ljavafx/scene/Node;
    :cond_7
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreText()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 677
    move-object/from16 v28, v25

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .restart local v26    # "width":D
    goto/16 :goto_2

    .line 678
    .end local v26    # "width":D
    :cond_8
    move-object/from16 v28, v15

    sget-object v29, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_9

    move-object/from16 v28, v15

    sget-object v29, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 679
    :cond_9
    move-wide/from16 v28, v18

    move-object/from16 v30, v25

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    move-wide/from16 v26, v28

    .restart local v26    # "width":D
    goto/16 :goto_2

    .line 681
    .end local v26    # "width":D
    :cond_a
    move-wide/from16 v28, v18

    move-object/from16 v30, v25

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v26, v28

    .restart local v26    # "width":D
    goto/16 :goto_2
.end method

.method private invalidateWidths()V
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textWidth:D

    .line 295
    return-void
.end method

.method private synthetic lambda$new$278(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    .line 103
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Labeled;

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->requestLayout()V

    .line 104
    return-void
.end method

.method private synthetic lambda$updateDisplayedText$279()V
    .locals 3

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 402
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    .line 403
    return-void
.end method

.method private removeMnemonic()V
    .locals 7

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    .line 524
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    new-instance v2, Ljavafx/scene/input/Mnemonic;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicCode:Ljavafx/scene/input/KeyCombination;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/input/Mnemonic;-><init>(Ljavafx/scene/Node;Ljavafx/scene/input/KeyCombination;)V

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->removeMnemonic(Ljavafx/scene/input/Mnemonic;)V

    .line 525
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    .line 527
    :cond_0
    return-void
.end method

.method private sceneChanged()V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Labeled;

    move-object v1, v3

    .line 282
    .local v1, "labeled":Ljavafx/scene/control/Labeled;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 284
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    if-eqz v3, :cond_0

    .line 285
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->addMnemonic()V

    .line 288
    :cond_0
    return-void
.end method

.method private textMetricsChanged()V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    .line 251
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Labeled;

    invoke-virtual {v1}, Ljavafx/scene/control/Labeled;->requestLayout()V

    .line 252
    return-void
.end method

.method private updateDisplayedText(DD)V
    .locals 43

    .prologue
    .line 309
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v4, p1

    .local v4, "w":D
    move-wide/from16 v6, p3

    .local v6, "h":D
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    .line 310
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v30

    check-cast v30, Ljavafx/scene/control/Labeled;

    move-object/from16 v8, v30

    .line 311
    .local v8, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v9, v30

    .line 313
    .local v9, "s":Ljava/lang/String;
    const/16 v30, -0x1

    move/from16 v10, v30

    .line 318
    .local v10, "mnemonicIndex":I
    move-object/from16 v30, v9

    if-eqz v30, :cond_1

    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1

    .line 319
    move-object/from16 v30, v3

    new-instance v31, Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v41, v31

    move-object/from16 v31, v41

    move-object/from16 v32, v41

    move-object/from16 v33, v9

    invoke-direct/range {v32 .. v33}, Lcom/sun/javafx/scene/control/behavior/TextBinding;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    .line 321
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v30

    if-nez v30, :cond_1

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v30

    check-cast v30, Ljavafx/scene/control/Labeled;

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->isMnemonicParsing()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 327
    move-object/from16 v30, v8

    move-object/from16 v0, v30

    instance-of v0, v0, Ljavafx/scene/control/Label;

    move/from16 v30, v0

    if-eqz v30, :cond_11

    .line 329
    move-object/from16 v30, v3

    move-object/from16 v31, v8

    check-cast v31, Ljavafx/scene/control/Label;

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/control/Label;->getLabelFor()Ljavafx/scene/Node;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    .line 334
    :goto_0
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 335
    move-object/from16 v30, v3

    move-object/from16 v31, v8

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    .line 337
    :cond_0
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicIndex()I

    move-result v30

    move/from16 v10, v30

    .line 344
    :cond_1
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v30, v0

    if-eqz v30, :cond_12

    .line 348
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicScene:Ljavafx/scene/Scene;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 349
    move/from16 v30, v10

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v30, v0

    .line 350
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicCode:Ljavafx/scene/input/KeyCombination;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/input/KeyCombination;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 351
    :cond_2
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->removeMnemonic()V

    .line 353
    :cond_3
    move-object/from16 v30, v3

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    .line 367
    :cond_4
    :goto_1
    move-object/from16 v30, v9

    if-eqz v30, :cond_5

    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5

    .line 368
    move/from16 v30, v10

    if-ltz v30, :cond_5

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v30, v0

    if-nez v30, :cond_5

    .line 369
    move-object/from16 v30, v3

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    .line 370
    move-object/from16 v30, v3

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonicCode:Ljavafx/scene/input/KeyCombination;

    .line 371
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->addMnemonic()V

    .line 375
    :cond_5
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 376
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v9, v30

    .line 377
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    if-nez v30, :cond_6

    .line 378
    move-object/from16 v30, v3

    new-instance v31, Ljavafx/scene/shape/Line;

    move-object/from16 v41, v31

    move-object/from16 v31, v41

    move-object/from16 v32, v41

    invoke-direct/range {v32 .. v32}, Ljavafx/scene/shape/Line;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    .line 379
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/shape/Line;->setStartX(D)V

    .line 380
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/shape/Line;->setStartY(D)V

    .line 381
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/shape/Line;->setEndY(D)V

    .line 382
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/shape/Line;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljavafx/collections/ObservableList;->clear()V

    .line 383
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/shape/Line;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v30

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v41, v31

    move-object/from16 v31, v41

    move-object/from16 v32, v41

    const/16 v33, 0x0

    const-string v34, "mnemonic-underline"

    aput-object v34, v32, v33

    invoke-interface/range {v30 .. v31}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v30

    .line 385
    :cond_6
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 386
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v30

    .line 408
    :cond_7
    :goto_2
    move-object/from16 v30, v9

    if-eqz v30, :cond_15

    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    :goto_3
    move/from16 v11, v30

    .line 409
    .local v11, "len":I
    const/16 v30, 0x0

    move/from16 v12, v30

    .line 411
    .local v12, "multiline":Z
    move-object/from16 v30, v9

    if-eqz v30, :cond_8

    move/from16 v30, v11

    if-lez v30, :cond_8

    .line 412
    move-object/from16 v30, v9

    const/16 v31, 0xa

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    move/from16 v13, v30

    .line 413
    .local v13, "i":I
    move/from16 v30, v13

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_8

    move/from16 v30, v13

    move/from16 v31, v11

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 416
    const/16 v30, 0x1

    move/from16 v12, v30

    .line 421
    .end local v13    # "i":I
    :cond_8
    move-object/from16 v30, v8

    .line 422
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v30

    sget-object v31, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    move-object/from16 v30, v8

    .line 423
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v30

    sget-object v31, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_16

    :cond_9
    const/16 v30, 0x1

    :goto_4
    move/from16 v14, v30

    .line 425
    .local v14, "horizontalPosition":Z
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getWidth()D

    move-result-wide v30

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedLeftInset()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->leftLabelPadding()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-object/from16 v32, v3

    .line 426
    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedRightInset()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->rightLabelPadding()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v15, v30

    .line 427
    .local v15, "availableWidth":D
    move-wide/from16 v30, v15

    const-wide/16 v32, 0x0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-wide/from16 v15, v30

    .line 429
    move-wide/from16 v30, v4

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_a

    .line 430
    move-wide/from16 v30, v15

    move-wide/from16 v4, v30

    .line 432
    :cond_a
    move-object/from16 v30, v3

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedTopInset()D

    move-result-wide v33

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedRightInset()D

    move-result-wide v35

    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedBottomInset()D

    move-result-wide v37

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedLeftInset()D

    move-result-wide v39

    invoke-direct/range {v30 .. v40}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinLabeledPartWidth(DDDDD)D

    move-result-wide v30

    move-wide/from16 v32, v15

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v17, v30

    .line 433
    .local v17, "minW":D
    move/from16 v30, v14

    if-eqz v30, :cond_b

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v30

    if-nez v30, :cond_b

    .line 434
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v30

    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v19, v30

    .line 435
    .local v19, "graphicW":D
    move-wide/from16 v30, v4

    move-wide/from16 v32, v19

    sub-double v30, v30, v32

    move-wide/from16 v4, v30

    .line 436
    move-wide/from16 v30, v17

    move-wide/from16 v32, v19

    sub-double v30, v30, v32

    move-wide/from16 v17, v30

    .line 438
    .end local v19    # "graphicW":D
    :cond_b
    move-object/from16 v30, v3

    move-wide/from16 v31, v17

    move-wide/from16 v33, v4

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->max(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    .line 440
    move-object/from16 v30, v8

    .line 441
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v30

    sget-object v31, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    move-object/from16 v30, v8

    .line 442
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v30

    sget-object v31, Ljavafx/scene/control/ContentDisplay;->BOTTOM:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_17

    :cond_c
    const/16 v30, 0x1

    :goto_5
    move/from16 v19, v30

    .line 444
    .local v19, "verticalPosition":Z
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getHeight()D

    move-result-wide v30

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedTopInset()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->topLabelPadding()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-object/from16 v32, v3

    .line 445
    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedBottomInset()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bottomLabelPadding()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v20, v30

    .line 446
    .local v20, "availableHeight":D
    move-wide/from16 v30, v20

    const-wide/16 v32, 0x0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-wide/from16 v20, v30

    .line 448
    move-wide/from16 v30, v6

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_d

    .line 449
    move-wide/from16 v30, v20

    move-wide/from16 v6, v30

    .line 451
    :cond_d
    move-object/from16 v30, v3

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v31, v0

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedTopInset()D

    move-result-wide v33

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedRightInset()D

    move-result-wide v35

    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedBottomInset()D

    move-result-wide v37

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snappedLeftInset()D

    move-result-wide v39

    invoke-direct/range {v30 .. v40}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinLabeledPartHeight(DDDDD)D

    move-result-wide v30

    move-wide/from16 v32, v20

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v22, v30

    .line 452
    .local v22, "minH":D
    move/from16 v30, v19

    if-eqz v30, :cond_e

    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v30

    if-eqz v30, :cond_e

    .line 453
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v30

    move-object/from16 v32, v8

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v24, v30

    .line 454
    .local v24, "graphicH":D
    move-wide/from16 v30, v6

    move-wide/from16 v32, v24

    sub-double v30, v30, v32

    move-wide/from16 v6, v30

    .line 455
    move-wide/from16 v30, v22

    move-wide/from16 v32, v24

    sub-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 457
    .end local v24    # "graphicH":D
    :cond_e
    move-object/from16 v30, v3

    move-wide/from16 v31, v22

    move-wide/from16 v33, v6

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->max(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapHeight:D

    .line 459
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateWrappingWidth()V

    .line 461
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v30

    move-object/from16 v24, v30

    .line 462
    .local v24, "font":Ljavafx/scene/text/Font;
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getTextOverrun()Ljavafx/scene/control/OverrunStyle;

    move-result-object v30

    move-object/from16 v25, v30

    .line 463
    .local v25, "truncationStyle":Ljavafx/scene/control/OverrunStyle;
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getEllipsisString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v30

    .line 465
    .local v26, "ellipsisString":Ljava/lang/String;
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->isWrapText()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 466
    move-object/from16 v30, v24

    move-object/from16 v31, v9

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapHeight:D

    move-wide/from16 v34, v0

    move-object/from16 v36, v25

    move-object/from16 v37, v26

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v38

    invoke-static/range {v30 .. v38}, Lcom/sun/javafx/scene/control/skin/Utils;->computeClippedWrappedText(Ljavafx/scene/text/Font;Ljava/lang/String;DDLjavafx/scene/control/OverrunStyle;Ljava/lang/String;Ljavafx/scene/text/TextBoundsType;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v13, v30

    .line 501
    .local v13, "result":Ljava/lang/String;
    :goto_6
    move-object/from16 v30, v13

    if-eqz v30, :cond_f

    move-object/from16 v30, v13

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 503
    move-object/from16 v30, v13

    const/16 v31, 0x0

    move-object/from16 v32, v13

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v13, v30

    .line 506
    :cond_f
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v30, v0

    move-object/from16 v31, v13

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setText(Ljava/lang/String;)V

    .line 507
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateWrappingWidth()V

    .line 508
    move-object/from16 v30, v3

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    .line 510
    .end local v8    # "labeled":Ljavafx/scene/control/Labeled;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "mnemonicIndex":I
    .end local v11    # "len":I
    .end local v12    # "multiline":Z
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "horizontalPosition":Z
    .end local v15    # "availableWidth":D
    .end local v17    # "minW":D
    .end local v19    # "verticalPosition":Z
    .end local v20    # "availableHeight":D
    .end local v22    # "minH":D
    .end local v24    # "font":Ljavafx/scene/text/Font;
    .end local v25    # "truncationStyle":Ljavafx/scene/control/OverrunStyle;
    .end local v26    # "ellipsisString":Ljava/lang/String;
    :cond_10
    return-void

    .line 331
    .restart local v8    # "labeled":Ljavafx/scene/control/Labeled;
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v10    # "mnemonicIndex":I
    :cond_11
    move-object/from16 v30, v3

    move-object/from16 v31, v8

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    goto/16 :goto_0

    .line 361
    :cond_12
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->removeMnemonic()V

    goto/16 :goto_1

    .line 392
    :cond_13
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v30

    check-cast v30, Ljavafx/scene/control/Labeled;

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->isMnemonicParsing()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v30

    if-eqz v30, :cond_14

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    .line 393
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v9, v30

    .line 398
    :goto_7
    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 399
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v30

    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 400
    move-object/from16 v30, v3

    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;)Ljava/lang/Runnable;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 396
    :cond_14
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v9, v30

    goto :goto_7

    .line 408
    :cond_15
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 423
    .restart local v11    # "len":I
    .restart local v12    # "multiline":Z
    :cond_16
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 442
    .restart local v14    # "horizontalPosition":Z
    .restart local v15    # "availableWidth":D
    .restart local v17    # "minW":D
    :cond_17
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 467
    .restart local v19    # "verticalPosition":Z
    .restart local v20    # "availableHeight":D
    .restart local v22    # "minH":D
    .restart local v24    # "font":Ljavafx/scene/text/Font;
    .restart local v25    # "truncationStyle":Ljavafx/scene/control/OverrunStyle;
    .restart local v26    # "ellipsisString":Ljava/lang/String;
    :cond_18
    move/from16 v30, v12

    if-eqz v30, :cond_1b

    .line 468
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v41, v30

    move-object/from16 v30, v41

    move-object/from16 v31, v41

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v30

    .line 470
    .local v27, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v30, v9

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v28, v30

    .line 471
    .local v28, "splits":[Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v29, v30

    .local v29, "i":I
    :goto_8
    move/from16 v30, v29

    move-object/from16 v31, v28

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    .line 472
    move-object/from16 v30, v27

    move-object/from16 v31, v24

    move-object/from16 v32, v28

    move/from16 v33, v29

    aget-object v32, v32, v33

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v33, v0

    move-object/from16 v35, v25

    move-object/from16 v36, v26

    invoke-static/range {v31 .. v36}, Lcom/sun/javafx/scene/control/skin/Utils;->computeClippedText(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/control/OverrunStyle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 473
    move/from16 v30, v29

    move-object/from16 v31, v28

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_19

    .line 474
    move-object/from16 v30, v27

    const/16 v31, 0xa

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 471
    :cond_19
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 496
    :cond_1a
    move-object/from16 v30, v27

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v13, v30

    .line 497
    .restart local v13    # "result":Ljava/lang/String;
    goto/16 :goto_6

    .line 498
    .end local v13    # "result":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "splits":[Ljava/lang/String;
    .end local v29    # "i":I
    :cond_1b
    move-object/from16 v30, v24

    move-object/from16 v31, v9

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v32, v0

    move-object/from16 v34, v25

    move-object/from16 v35, v26

    invoke-static/range {v30 .. v35}, Lcom/sun/javafx/scene/control/skin/Utils;->computeClippedText(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/control/OverrunStyle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v13, v30

    .restart local v13    # "result":Ljava/lang/String;
    goto/16 :goto_6
.end method

.method private updateWrappingWidth()V
    .locals 8

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Labeled;

    move-object v1, v4

    .line 537
    .local v1, "labeled":Ljavafx/scene/control/Labeled;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setWrappingWidth(D)V

    .line 538
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Labeled;->isWrapText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/LabeledText;->prefWidth(D)D

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide v2, v4

    .line 542
    .local v2, "w":D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setWrappingWidth(D)V

    .line 544
    .end local v2    # "w":D
    :cond_0
    return-void
.end method


# virtual methods
.method protected bottomLabelPadding()D
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Labeled;

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->getLabelPadding()Ljavafx/geometry/Insets;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapSize(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v0
.end method

.method public computeBaselineOffset(DDDD)D
    .locals 25

    .prologue
    .line 802
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v3, p1

    .local v3, "topInset":D
    move-wide/from16 v5, p3

    .local v5, "rightInset":D
    move-wide/from16 v7, p5

    .local v7, "bottomInset":D
    move-wide/from16 v9, p7

    .local v9, "leftInset":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getBaselineOffset()D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 803
    .local v11, "textBaselineOffset":D
    move-wide/from16 v18, v11

    move-wide/from16 v13, v18

    .line 804
    .local v13, "h":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/Labeled;

    move-object/from16 v15, v18

    .line 805
    .local v15, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v16, v18

    .line 806
    .local v16, "g":Ljavafx/scene/Node;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v18

    if-nez v18, :cond_0

    .line 807
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v18

    move-object/from16 v17, v18

    .line 808
    .local v17, "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    move-object/from16 v18, v17

    sget-object v19, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 809
    move-object/from16 v18, v16

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v18

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v11

    add-double v18, v18, v20

    move-wide/from16 v13, v18

    .line 815
    .end local v17    # "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    :cond_0
    :goto_0
    move-wide/from16 v18, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->topLabelPadding()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v13

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v2

    .line 810
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    .restart local v17    # "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    :cond_1
    move-object/from16 v18, v17

    sget-object v19, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v18, v17

    sget-object v19, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 811
    :cond_2
    move-wide/from16 v18, v11

    move-object/from16 v20, v16

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v22, v0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledText;->prefHeight(D)D

    move-result-wide v22

    sub-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v13, v18

    goto :goto_0
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 798
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Labeled;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Labeled;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 794
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
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
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Labeled;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Labeled;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 689
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinLabeledPartHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v0
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 23

    .prologue
    .line 633
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->computeMinLabeledPartWidth(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 33

    .prologue
    .line 755
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v26

    check-cast v26, Ljavafx/scene/control/Labeled;

    move-object/from16 v13, v26

    .line 756
    .local v13, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v26

    move-object/from16 v14, v26

    .line 757
    .local v14, "font":Ljavafx/scene/text/Font;
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v26

    move-object/from16 v15, v26

    .line 758
    .local v15, "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 759
    .local v16, "gap":D
    move-wide/from16 v26, v3

    move-wide/from16 v28, v11

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->leftLabelPadding()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v30, v7

    add-double v28, v28, v30

    move-object/from16 v30, v2

    .line 760
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->rightLabelPadding()D

    move-result-wide v30

    add-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v3, v26

    .line 762
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v18, v26

    .line 763
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v26, v18

    if-eqz v26, :cond_0

    move-object/from16 v26, v18

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 765
    move-object/from16 v26, v18

    const/16 v27, 0x0

    move-object/from16 v28, v18

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v18, v26

    .line 768
    :cond_0
    move-wide/from16 v26, v3

    move-wide/from16 v19, v26

    .line 769
    .local v19, "textWidth":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v26

    if-nez v26, :cond_2

    move-object/from16 v26, v15

    sget-object v27, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1

    move-object/from16 v26, v15

    sget-object v27, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 771
    :cond_1
    move-wide/from16 v26, v19

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v28

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v19, v26

    .line 775
    :cond_2
    move-object/from16 v26, v14

    move-object/from16 v27, v18

    move-object/from16 v28, v13

    .line 776
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/Labeled;->isWrapText()Z

    move-result v28

    if-eqz v28, :cond_5

    move-wide/from16 v28, v19

    :goto_0
    move-object/from16 v30, v13

    .line 777
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/control/Labeled;->getLineSpacing()D

    move-result-wide v30

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v32

    .line 775
    invoke-static/range {v26 .. v32}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DDLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v26

    move-wide/from16 v21, v26

    .line 780
    .local v21, "textHeight":D
    move-wide/from16 v26, v21

    move-wide/from16 v23, v26

    .line 781
    .local v23, "h":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v26

    if-nez v26, :cond_4

    .line 782
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v26

    move-object/from16 v25, v26

    .line 783
    .local v25, "graphic":Ljavafx/scene/Node;
    move-object/from16 v26, v15

    sget-object v27, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v26, v15

    sget-object v27, Ljavafx/scene/control/ContentDisplay;->BOTTOM:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 784
    :cond_3
    move-object/from16 v26, v25

    move-wide/from16 v27, v3

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v26

    move-wide/from16 v28, v16

    add-double v26, v26, v28

    move-wide/from16 v28, v21

    add-double v26, v26, v28

    move-wide/from16 v23, v26

    .line 790
    .end local v25    # "graphic":Ljavafx/scene/Node;
    :cond_4
    :goto_1
    move-wide/from16 v26, v5

    move-wide/from16 v28, v23

    add-double v26, v26, v28

    move-wide/from16 v28, v9

    add-double v26, v26, v28

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->topLabelPadding()D

    move-result-wide v28

    add-double v26, v26, v28

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bottomLabelPadding()D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v2, v26

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v2

    .line 776
    .end local v21    # "textHeight":D
    .end local v23    # "h":D
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :cond_5
    const-wide/16 v28, 0x0

    goto :goto_0

    .line 786
    .restart local v21    # "textHeight":D
    .restart local v23    # "h":D
    .restart local v25    # "graphic":Ljavafx/scene/Node;
    :cond_6
    move-wide/from16 v26, v21

    move-object/from16 v28, v25

    move-wide/from16 v29, v3

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v28

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    move-wide/from16 v23, v26

    goto :goto_1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 31

    .prologue
    .line 727
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/Labeled;

    move-object/from16 v13, v24

    .line 728
    .local v13, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v24

    move-object/from16 v14, v24

    .line 729
    .local v14, "font":Ljavafx/scene/text/Font;
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v15, v24

    .line 730
    .local v15, "string":Ljava/lang/String;
    move-object/from16 v24, v15

    if-eqz v24, :cond_0

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    :cond_0
    const/16 v24, 0x1

    :goto_0
    move/from16 v16, v24

    .line 731
    .local v16, "emptyText":Z
    move-wide/from16 v24, v11

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->leftLabelPadding()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v26, v7

    add-double v24, v24, v26

    move-object/from16 v26, v2

    .line 732
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->rightLabelPadding()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 734
    .local v17, "widthPadding":D
    move/from16 v24, v16

    if-eqz v24, :cond_2

    const-wide/16 v24, 0x0

    :goto_1
    move-wide/from16 v19, v24

    .line 737
    .local v19, "textWidth":D
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    const-wide/16 v24, 0x0

    .line 738
    :goto_2
    move-wide/from16 v21, v24

    .line 741
    .local v21, "graphicWidth":D
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v23, v24

    .line 742
    .local v23, "graphic":Ljavafx/scene/Node;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 743
    move-wide/from16 v24, v19

    move-wide/from16 v26, v17

    add-double v24, v24, v26

    move-wide/from16 v2, v24

    .line 750
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :goto_3
    return-wide v2

    .line 730
    .end local v16    # "emptyText":Z
    .end local v17    # "widthPadding":D
    .end local v19    # "textWidth":D
    .end local v21    # "graphicWidth":D
    .end local v23    # "graphic":Ljavafx/scene/Node;
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    .line 734
    .restart local v16    # "emptyText":Z
    .restart local v17    # "widthPadding":D
    :cond_2
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    const-wide/16 v26, 0x0

    invoke-static/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v24

    goto :goto_1

    .line 737
    .restart local v19    # "textWidth":D
    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    .line 738
    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v24

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v26, v0

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v26

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v28

    invoke-static/range {v24 .. v29}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v24

    goto :goto_2

    .line 744
    .restart local v21    # "graphicWidth":D
    .restart local v23    # "graphic":Ljavafx/scene/Node;
    :cond_4
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreText()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 745
    move-wide/from16 v24, v21

    move-wide/from16 v26, v17

    add-double v24, v24, v26

    move-wide/from16 v2, v24

    goto :goto_3

    .line 746
    :cond_5
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v24

    sget-object v25, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_6

    move-object/from16 v24, v13

    .line 747
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v24

    sget-object v25, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 748
    :cond_6
    move-wide/from16 v24, v19

    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v26, v21

    add-double v24, v24, v26

    move-wide/from16 v26, v17

    add-double v24, v24, v26

    move-wide/from16 v2, v24

    goto :goto_3

    .line 750
    :cond_7
    move-wide/from16 v24, v19

    move-wide/from16 v26, v21

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v26, v17

    add-double v24, v24, v26

    move-wide/from16 v2, v24

    goto/16 :goto_3
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 160
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 169
    const-string v3, "WIDTH"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateWrappingWidth()V

    .line 171
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v3, "HEIGHT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidText:Z

    goto :goto_0

    .line 176
    :cond_2
    const-string v3, "FONT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    .line 178
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidateWidths()V

    .line 179
    move-object v3, v1

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->ellipsisWidth:D

    goto :goto_0

    .line 180
    :cond_3
    const-string v3, "GRAPHIC"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateChildren()V

    .line 182
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto :goto_0

    .line 183
    :cond_4
    const-string v3, "CONTENT_DISPLAY"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateChildren()V

    .line 185
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto :goto_0

    .line 186
    :cond_5
    const-string v3, "LABEL_PADDING"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto :goto_0

    .line 188
    :cond_6
    const-string v3, "GRAPHIC_TEXT_GAP"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 189
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto :goto_0

    .line 190
    :cond_7
    const-string v3, "ALIGNMENT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 199
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Labeled;

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->requestLayout()V

    goto :goto_0

    .line 200
    :cond_8
    const-string v3, "MNEMONIC_PARSING"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 201
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    .line 202
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto/16 :goto_0

    .line 203
    :cond_9
    const-string v3, "TEXT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 204
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateChildren()V

    .line 205
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    .line 206
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidateWidths()V

    goto/16 :goto_0

    .line 207
    :cond_a
    const-string v3, "TEXT_ALIGNMENT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_0

    .line 209
    :cond_b
    const-string v3, "TEXT_OVERRUN"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 210
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto/16 :goto_0

    .line 211
    :cond_c
    const-string v3, "ELLIPSIS_STRING"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 212
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    .line 213
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->invalidateWidths()V

    .line 214
    move-object v3, v1

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->ellipsisWidth:D

    goto/16 :goto_0

    .line 215
    :cond_d
    const-string v3, "WRAP_TEXT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 216
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateWrappingWidth()V

    .line 217
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto/16 :goto_0

    .line 218
    :cond_e
    const-string v3, "UNDERLINE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 219
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto/16 :goto_0

    .line 220
    :cond_f
    const-string v3, "LINE_SPACING"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 221
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textMetricsChanged()V

    goto/16 :goto_0

    .line 222
    :cond_10
    const-string v3, "SCENE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->sceneChanged()V

    goto/16 :goto_0
.end method

.method protected isIgnoreGraphic()Z
    .locals 3

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    .line 599
    invoke-virtual {v1}, Ljavafx/scene/Node;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 600
    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Labeled;

    invoke-virtual {v1}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/ContentDisplay;->TEXT_ONLY:Ljavafx/scene/control/ContentDisplay;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isIgnoreText()Z
    .locals 5

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Labeled;

    move-object v1, v3

    .line 609
    .local v1, "labeled":Ljavafx/scene/control/Labeled;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 610
    .local v2, "txt":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, ""

    .line 611
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    .line 612
    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v3

    sget-object v4, Ljavafx/scene/control/ContentDisplay;->GRAPHIC_ONLY:Ljavafx/scene/control/ContentDisplay;

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 841
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->layoutLabelInArea(DDDD)V

    .line 842
    return-void
.end method

.method protected layoutLabelInArea(DDDD)V
    .locals 19

    .prologue
    .line 857
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->layoutLabelInArea(DDDDLjavafx/geometry/Pos;)V

    .line 858
    return-void
.end method

.method protected layoutLabelInArea(DDDDLjavafx/geometry/Pos;)V
    .locals 61

    .prologue
    .line 876
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "w":D
    move-wide/from16 v9, p7

    .local v9, "h":D
    move-object/from16 v11, p9

    .local v11, "alignment":Ljavafx/geometry/Pos;
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v50

    check-cast v50, Ljavafx/scene/control/Labeled;

    move-object/from16 v12, v50

    .line 877
    .local v12, "labeled":Ljavafx/scene/control/Labeled;
    move-object/from16 v50, v12

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v50

    move-object/from16 v13, v50

    .line 879
    .local v13, "contentDisplay":Ljavafx/scene/control/ContentDisplay;
    move-object/from16 v50, v11

    if-nez v50, :cond_0

    .line 880
    move-object/from16 v50, v12

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/control/Labeled;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v50

    move-object/from16 v11, v50

    .line 883
    :cond_0
    move-object/from16 v50, v11

    if-nez v50, :cond_c

    sget-object v50, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    :goto_0
    move-object/from16 v14, v50

    .line 884
    .local v14, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v50, v11

    if-nez v50, :cond_d

    sget-object v50, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    :goto_1
    move-object/from16 v15, v50

    .line 888
    .local v15, "vpos":Ljavafx/geometry/VPos;
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v50

    move/from16 v16, v50

    .line 889
    .local v16, "ignoreGraphic":Z
    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreText()Z

    move-result v50

    move/from16 v17, v50

    .line 891
    .local v17, "ignoreText":Z
    move-wide/from16 v50, v3

    move-object/from16 v52, v2

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->leftLabelPadding()D

    move-result-wide v52

    add-double v50, v50, v52

    move-wide/from16 v3, v50

    .line 892
    move-wide/from16 v50, v5

    move-object/from16 v52, v2

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->topLabelPadding()D

    move-result-wide v52

    add-double v50, v50, v52

    move-wide/from16 v5, v50

    .line 893
    move-wide/from16 v50, v7

    move-object/from16 v52, v2

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->leftLabelPadding()D

    move-result-wide v52

    move-object/from16 v54, v2

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->rightLabelPadding()D

    move-result-wide v54

    add-double v52, v52, v54

    sub-double v50, v50, v52

    move-wide/from16 v7, v50

    .line 894
    move-wide/from16 v50, v9

    move-object/from16 v52, v2

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->topLabelPadding()D

    move-result-wide v52

    move-object/from16 v54, v2

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bottomLabelPadding()D

    move-result-wide v54

    add-double v52, v52, v54

    sub-double v50, v50, v52

    move-wide/from16 v9, v50

    .line 902
    move/from16 v50, v16

    if-eqz v50, :cond_e

    .line 903
    const-wide/16 v50, 0x0

    move-wide/from16 v58, v50

    move-wide/from16 v50, v58

    move-wide/from16 v52, v58

    move-wide/from16 v20, v52

    .local v20, "graphicHeight":D
    move-wide/from16 v18, v50

    .line 928
    .local v18, "graphicWidth":D
    :goto_2
    move/from16 v50, v17

    if-eqz v50, :cond_13

    .line 929
    const-wide/16 v50, 0x0

    move-wide/from16 v58, v50

    move-wide/from16 v50, v58

    move-wide/from16 v52, v58

    move-wide/from16 v24, v52

    .local v24, "textHeight":D
    move-wide/from16 v22, v50

    .line 930
    .local v22, "textWidth":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    const-string v51, ""

    invoke-virtual/range {v50 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setText(Ljava/lang/String;)V

    .line 937
    :goto_3
    move/from16 v50, v17

    if-nez v50, :cond_1

    move/from16 v50, v16

    if-eqz v50, :cond_14

    :cond_1
    const-wide/16 v50, 0x0

    :goto_4
    move-wide/from16 v26, v50

    .line 942
    .local v26, "gap":D
    move-wide/from16 v50, v18

    move-wide/from16 v52, v22

    invoke-static/range {v50 .. v53}, Ljava/lang/Math;->max(DD)D

    move-result-wide v50

    move-wide/from16 v28, v50

    .line 943
    .local v28, "contentWidth":D
    move-wide/from16 v50, v20

    move-wide/from16 v52, v24

    invoke-static/range {v50 .. v53}, Ljava/lang/Math;->max(DD)D

    move-result-wide v50

    move-wide/from16 v30, v50

    .line 944
    .local v30, "contentHeight":D
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-eq v0, v1, :cond_2

    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->BOTTOM:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_15

    .line 945
    :cond_2
    move-wide/from16 v50, v20

    move-wide/from16 v52, v26

    add-double v50, v50, v52

    move-wide/from16 v52, v24

    add-double v50, v50, v52

    move-wide/from16 v30, v50

    .line 954
    :cond_3
    :goto_5
    move-object/from16 v50, v14

    sget-object v51, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_17

    .line 955
    move-wide/from16 v50, v3

    move-wide/from16 v32, v50

    .line 966
    .local v32, "contentX":D
    :goto_6
    move-object/from16 v50, v15

    sget-object v51, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_19

    .line 967
    move-wide/from16 v50, v5

    move-wide/from16 v34, v50

    .line 976
    .local v34, "contentY":D
    :goto_7
    const-wide/16 v50, 0x0

    move-wide/from16 v36, v50

    .line 977
    .local v36, "preMnemonicWidth":D
    const-wide/16 v50, 0x0

    move-wide/from16 v38, v50

    .line 978
    .local v38, "mnemonicWidth":D
    const-wide/16 v50, 0x0

    move-wide/from16 v40, v50

    .line 979
    .local v40, "mnemonicHeight":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v50, v0

    if-eqz v50, :cond_4

    .line 980
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getFont()Ljavafx/scene/text/Font;

    move-result-object v50

    move-object/from16 v42, v50

    .line 981
    .local v42, "font":Ljavafx/scene/text/Font;
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getText()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v43, v50

    .line 982
    .local v43, "preSt":Ljava/lang/String;
    move-object/from16 v50, v42

    move-object/from16 v51, v43

    const/16 v52, 0x0

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicIndex()I

    move-result v53

    invoke-virtual/range {v51 .. v53}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v51

    const-wide/16 v52, 0x0

    invoke-static/range {v50 .. v53}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v50

    move-wide/from16 v36, v50

    .line 983
    move-object/from16 v50, v42

    move-object/from16 v51, v43

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicIndex()I

    move-result v52

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicIndex()I

    move-result v53

    const/16 v54, 0x1

    add-int/lit8 v53, v53, 0x1

    invoke-virtual/range {v51 .. v53}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v51

    const-wide/16 v52, 0x0

    invoke-static/range {v50 .. v53}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v50

    move-wide/from16 v38, v50

    .line 984
    move-object/from16 v50, v42

    const-string v51, "_"

    const-wide/16 v52, 0x0

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v54

    invoke-static/range {v50 .. v54}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v50

    move-wide/from16 v40, v50

    .line 993
    .end local v42    # "font":Ljavafx/scene/text/Font;
    .end local v43    # "preSt":Ljava/lang/String;
    :cond_4
    move/from16 v50, v16

    if-eqz v50, :cond_5

    move/from16 v50, v17

    if-nez v50, :cond_6

    :cond_5
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->isManaged()Z

    move-result v50

    if-nez v50, :cond_6

    .line 994
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setManaged(Z)V

    .line 997
    :cond_6
    move/from16 v50, v16

    if-eqz v50, :cond_1b

    move/from16 v50, v17

    if-eqz v50, :cond_1b

    .line 1005
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->isManaged()Z

    move-result v50

    if-eqz v50, :cond_7

    .line 1006
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setManaged(Z)V

    .line 1008
    :cond_7
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v32

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v34

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledText;->relocate(DD)V

    .line 1088
    :cond_8
    :goto_8
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    if-eqz v50, :cond_25

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    .line 1089
    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v50

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapHeight:D

    move-wide/from16 v52, v0

    cmpl-double v50, v50, v52

    if-gtz v50, :cond_9

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    .line 1090
    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v50

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v52, v0

    cmpl-double v50, v50, v52

    if-lez v50, :cond_25

    .line 1092
    :cond_9
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v50, v0

    if-nez v50, :cond_a

    .line 1093
    move-object/from16 v50, v2

    new-instance v51, Ljavafx/scene/shape/Rectangle;

    move-object/from16 v58, v51

    move-object/from16 v51, v58

    move-object/from16 v52, v58

    invoke-direct/range {v52 .. v52}, Ljavafx/scene/shape/Rectangle;-><init>()V

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    .line 1096
    :cond_a
    move-object/from16 v50, v12

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/control/Labeled;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v50

    sget-object v51, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_24

    .line 1097
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 1101
    :goto_9
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 1102
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v51, v0

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 1103
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapHeight:D

    move-wide/from16 v51, v0

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 1104
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getClip()Ljavafx/scene/Node;

    move-result-object v50

    if-nez v50, :cond_b

    .line 1105
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setClip(Ljavafx/scene/Node;)V

    .line 1117
    :cond_b
    :goto_a
    return-void

    .line 883
    .end local v14    # "hpos":Ljavafx/geometry/HPos;
    .end local v15    # "vpos":Ljavafx/geometry/VPos;
    .end local v16    # "ignoreGraphic":Z
    .end local v17    # "ignoreText":Z
    .end local v18    # "graphicWidth":D
    .end local v20    # "graphicHeight":D
    .end local v22    # "textWidth":D
    .end local v24    # "textHeight":D
    .end local v26    # "gap":D
    .end local v28    # "contentWidth":D
    .end local v30    # "contentHeight":D
    .end local v32    # "contentX":D
    .end local v34    # "contentY":D
    .end local v36    # "preMnemonicWidth":D
    .end local v38    # "mnemonicWidth":D
    .end local v40    # "mnemonicHeight":D
    :cond_c
    move-object/from16 v50, v11

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v50

    goto/16 :goto_0

    .line 884
    .restart local v14    # "hpos":Ljavafx/geometry/HPos;
    :cond_d
    move-object/from16 v50, v11

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v50

    goto/16 :goto_1

    .line 904
    .restart local v15    # "vpos":Ljavafx/geometry/VPos;
    .restart local v16    # "ignoreGraphic":Z
    .restart local v17    # "ignoreText":Z
    :cond_e
    move/from16 v50, v17

    if-eqz v50, :cond_12

    .line 905
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->isResizable()Z

    move-result v50

    if-eqz v50, :cond_11

    .line 906
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v50

    move-object/from16 v26, v50

    .line 907
    .local v26, "contentBias":Ljavafx/geometry/Orientation;
    move-object/from16 v50, v26

    sget-object v51, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_f

    .line 908
    move-wide/from16 v50, v7

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v52

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v54, v0

    const-wide/high16 v55, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v54 .. v56}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v54

    invoke-static/range {v50 .. v55}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v50

    move-wide/from16 v18, v50

    .line 909
    .restart local v18    # "graphicWidth":D
    move-wide/from16 v50, v9

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    move-wide/from16 v53, v18

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v52

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v54, v0

    move-wide/from16 v55, v18

    invoke-virtual/range {v54 .. v56}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v54

    invoke-static/range {v50 .. v55}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v50

    move-wide/from16 v20, v50

    .line 917
    .restart local v20    # "graphicHeight":D
    :goto_b
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    move-wide/from16 v51, v18

    move-wide/from16 v53, v20

    invoke-virtual/range {v50 .. v54}, Ljavafx/scene/Node;->resize(DD)V

    .line 918
    goto/16 :goto_2

    .line 910
    .end local v18    # "graphicWidth":D
    .end local v20    # "graphicHeight":D
    :cond_f
    move-object/from16 v50, v26

    sget-object v51, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_10

    .line 911
    move-wide/from16 v50, v9

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v52

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v54, v0

    const-wide/high16 v55, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v54 .. v56}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v54

    invoke-static/range {v50 .. v55}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v50

    move-wide/from16 v20, v50

    .line 912
    .restart local v20    # "graphicHeight":D
    move-wide/from16 v50, v7

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    move-wide/from16 v53, v20

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v52

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v54, v0

    move-wide/from16 v55, v20

    invoke-virtual/range {v54 .. v56}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v54

    invoke-static/range {v50 .. v55}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v50

    move-wide/from16 v18, v50

    .restart local v18    # "graphicWidth":D
    goto :goto_b

    .line 914
    .end local v18    # "graphicWidth":D
    .end local v20    # "graphicHeight":D
    :cond_10
    move-wide/from16 v50, v7

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v52

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v54, v0

    const-wide/high16 v55, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v54 .. v56}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v54

    invoke-static/range {v50 .. v55}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v50

    move-wide/from16 v18, v50

    .line 915
    .restart local v18    # "graphicWidth":D
    move-wide/from16 v50, v9

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v52

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v54, v0

    const-wide/high16 v55, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v54 .. v56}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v54

    invoke-static/range {v50 .. v55}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v50

    move-wide/from16 v20, v50

    .restart local v20    # "graphicHeight":D
    goto/16 :goto_b

    .line 919
    .end local v18    # "graphicWidth":D
    .end local v20    # "graphicHeight":D
    .end local v26    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_11
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v50

    move-wide/from16 v18, v50

    .line 920
    .restart local v18    # "graphicWidth":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v50

    move-wide/from16 v20, v50

    .restart local v20    # "graphicHeight":D
    goto/16 :goto_2

    .line 923
    .end local v18    # "graphicWidth":D
    .end local v20    # "graphicHeight":D
    :cond_12
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->autosize()V

    .line 924
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v50

    move-wide/from16 v18, v50

    .line 925
    .restart local v18    # "graphicWidth":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v50

    move-wide/from16 v20, v50

    .restart local v20    # "graphicHeight":D
    goto/16 :goto_2

    .line 932
    :cond_13
    move-object/from16 v50, v2

    move-wide/from16 v51, v7

    move-wide/from16 v53, v9

    invoke-direct/range {v50 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateDisplayedText(DD)V

    .line 933
    move-object/from16 v50, v2

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v51

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v53, v0

    invoke-static/range {v51 .. v54}, Ljava/lang/Math;->min(DD)D

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapSize(D)D

    move-result-wide v50

    move-wide/from16 v22, v50

    .line 934
    .restart local v22    # "textWidth":D
    move-object/from16 v50, v2

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v51

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapHeight:D

    move-wide/from16 v53, v0

    invoke-static/range {v51 .. v54}, Ljava/lang/Math;->min(DD)D

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapSize(D)D

    move-result-wide v50

    move-wide/from16 v24, v50

    .restart local v24    # "textHeight":D
    goto/16 :goto_3

    .line 937
    :cond_14
    move-object/from16 v50, v12

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/control/Labeled;->getGraphicTextGap()D

    move-result-wide v50

    goto/16 :goto_4

    .line 946
    .local v26, "gap":D
    .restart local v28    # "contentWidth":D
    .restart local v30    # "contentHeight":D
    :cond_15
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-eq v0, v1, :cond_16

    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_3

    .line 947
    :cond_16
    move-wide/from16 v50, v18

    move-wide/from16 v52, v26

    add-double v50, v50, v52

    move-wide/from16 v52, v22

    add-double v50, v50, v52

    move-wide/from16 v28, v50

    goto/16 :goto_5

    .line 956
    :cond_17
    move-object/from16 v50, v14

    sget-object v51, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_18

    .line 957
    move-wide/from16 v50, v3

    move-wide/from16 v52, v7

    move-wide/from16 v54, v28

    sub-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v32, v50

    .restart local v32    # "contentX":D
    goto/16 :goto_6

    .line 961
    .end local v32    # "contentX":D
    :cond_18
    move-wide/from16 v50, v3

    move-wide/from16 v52, v7

    move-wide/from16 v54, v28

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v32, v50

    .restart local v32    # "contentX":D
    goto/16 :goto_6

    .line 968
    :cond_19
    move-object/from16 v50, v15

    sget-object v51, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_1a

    .line 969
    move-wide/from16 v50, v5

    move-wide/from16 v52, v9

    move-wide/from16 v54, v30

    sub-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v34, v50

    .restart local v34    # "contentY":D
    goto/16 :goto_7

    .line 973
    .end local v34    # "contentY":D
    :cond_1a
    move-wide/from16 v50, v5

    move-wide/from16 v52, v9

    move-wide/from16 v54, v30

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v34, v50

    .restart local v34    # "contentY":D
    goto/16 :goto_7

    .line 1009
    .restart local v36    # "preMnemonicWidth":D
    .restart local v38    # "mnemonicWidth":D
    .restart local v40    # "mnemonicHeight":D
    :cond_1b
    move/from16 v50, v16

    if-eqz v50, :cond_1c

    .line 1014
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v32

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v34

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledText;->relocate(DD)V

    .line 1015
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v50, v0

    if-eqz v50, :cond_8

    .line 1016
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v38

    const-wide/high16 v53, 0x4000000000000000L    # 2.0

    sub-double v51, v51, v53

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 1017
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v32

    move-wide/from16 v53, v36

    add-double v51, v51, v53

    move-wide/from16 v53, v34

    move-wide/from16 v55, v40

    add-double v53, v53, v55

    const-wide/high16 v55, 0x3ff0000000000000L    # 1.0

    sub-double v53, v53, v55

    invoke-virtual/range {v50 .. v54}, Ljavafx/scene/shape/Line;->relocate(DD)V

    goto/16 :goto_8

    .line 1020
    :cond_1c
    move/from16 v50, v17

    if-eqz v50, :cond_1d

    .line 1024
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v32

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v34

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledText;->relocate(DD)V

    .line 1025
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v32

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v34

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Ljavafx/scene/Node;->relocate(DD)V

    .line 1026
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v50, v0

    if-eqz v50, :cond_8

    .line 1027
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v38

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 1028
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v40

    const-wide/high16 v53, 0x4024000000000000L    # 10.0

    div-double v51, v51, v53

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Line;->setStrokeWidth(D)V

    .line 1029
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v32

    move-wide/from16 v53, v36

    add-double v51, v51, v53

    move-wide/from16 v53, v34

    move-wide/from16 v55, v40

    add-double v53, v53, v55

    const-wide/high16 v55, 0x3ff0000000000000L    # 1.0

    sub-double v53, v53, v55

    invoke-virtual/range {v50 .. v54}, Ljavafx/scene/shape/Line;->relocate(DD)V

    goto/16 :goto_8

    .line 1035
    :cond_1d
    const-wide/16 v50, 0x0

    move-wide/from16 v42, v50

    .line 1036
    .local v42, "graphicX":D
    const-wide/16 v50, 0x0

    move-wide/from16 v44, v50

    .line 1037
    .local v44, "graphicY":D
    const-wide/16 v50, 0x0

    move-wide/from16 v46, v50

    .line 1038
    .local v46, "textX":D
    const-wide/16 v50, 0x0

    move-wide/from16 v48, v50

    .line 1040
    .local v48, "textY":D
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->TOP:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_20

    .line 1041
    move-wide/from16 v50, v32

    move-wide/from16 v52, v28

    move-wide/from16 v54, v18

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v42, v50

    .line 1042
    move-wide/from16 v50, v32

    move-wide/from16 v52, v28

    move-wide/from16 v54, v22

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v46, v50

    .line 1045
    move-wide/from16 v50, v34

    move-wide/from16 v44, v50

    .line 1046
    move-wide/from16 v50, v44

    move-wide/from16 v52, v20

    add-double v50, v50, v52

    move-wide/from16 v52, v26

    add-double v50, v50, v52

    move-wide/from16 v48, v50

    .line 1072
    :cond_1e
    :goto_c
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v46

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v48

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Lcom/sun/javafx/scene/control/skin/LabeledText;->relocate(DD)V

    .line 1073
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    move/from16 v50, v0

    if-eqz v50, :cond_1f

    .line 1074
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v38

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Line;->setEndX(D)V

    .line 1075
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-wide/from16 v51, v40

    const-wide/high16 v53, 0x4024000000000000L    # 10.0

    div-double v51, v51, v53

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Line;->setStrokeWidth(D)V

    .line 1076
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->mnemonic_underscore:Ljavafx/scene/shape/Line;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v46

    move-wide/from16 v54, v36

    add-double v52, v52, v54

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v48

    move-wide/from16 v56, v40

    add-double v54, v54, v56

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    sub-double v54, v54, v56

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Ljavafx/scene/shape/Line;->relocate(DD)V

    .line 1078
    :cond_1f
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-wide/from16 v52, v42

    invoke-virtual/range {v51 .. v53}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v51

    move-object/from16 v53, v2

    move-wide/from16 v54, v44

    invoke-virtual/range {v53 .. v55}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapPosition(D)D

    move-result-wide v53

    invoke-virtual/range {v50 .. v54}, Ljavafx/scene/Node;->relocate(DD)V

    goto/16 :goto_8

    .line 1047
    :cond_20
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->RIGHT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_21

    .line 1049
    move-wide/from16 v50, v32

    move-wide/from16 v46, v50

    .line 1050
    move-wide/from16 v50, v46

    move-wide/from16 v52, v22

    add-double v50, v50, v52

    move-wide/from16 v52, v26

    add-double v50, v50, v52

    move-wide/from16 v42, v50

    .line 1051
    move-wide/from16 v50, v34

    move-wide/from16 v52, v30

    move-wide/from16 v54, v20

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v44, v50

    .line 1052
    move-wide/from16 v50, v34

    move-wide/from16 v52, v30

    move-wide/from16 v54, v24

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v48, v50

    goto/16 :goto_c

    .line 1053
    :cond_21
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->BOTTOM:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_22

    .line 1054
    move-wide/from16 v50, v32

    move-wide/from16 v52, v28

    move-wide/from16 v54, v18

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v42, v50

    .line 1055
    move-wide/from16 v50, v32

    move-wide/from16 v52, v28

    move-wide/from16 v54, v22

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v46, v50

    .line 1057
    move-wide/from16 v50, v34

    move-wide/from16 v48, v50

    .line 1058
    move-wide/from16 v50, v48

    move-wide/from16 v52, v24

    add-double v50, v50, v52

    move-wide/from16 v52, v26

    add-double v50, v50, v52

    move-wide/from16 v44, v50

    goto/16 :goto_c

    .line 1059
    :cond_22
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_23

    .line 1062
    move-wide/from16 v50, v32

    move-wide/from16 v42, v50

    .line 1063
    move-wide/from16 v50, v42

    move-wide/from16 v52, v18

    add-double v50, v50, v52

    move-wide/from16 v52, v26

    add-double v50, v50, v52

    move-wide/from16 v46, v50

    .line 1064
    move-wide/from16 v50, v34

    move-wide/from16 v52, v30

    move-wide/from16 v54, v20

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v44, v50

    .line 1065
    move-wide/from16 v50, v34

    move-wide/from16 v52, v30

    move-wide/from16 v54, v24

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v48, v50

    goto/16 :goto_c

    .line 1066
    :cond_23
    move-object/from16 v50, v13

    sget-object v51, Ljavafx/scene/control/ContentDisplay;->CENTER:Ljavafx/scene/control/ContentDisplay;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_1e

    .line 1067
    move-wide/from16 v50, v32

    move-wide/from16 v52, v28

    move-wide/from16 v54, v18

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v42, v50

    .line 1068
    move-wide/from16 v50, v32

    move-wide/from16 v52, v28

    move-wide/from16 v54, v22

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v46, v50

    .line 1069
    move-wide/from16 v50, v34

    move-wide/from16 v52, v30

    move-wide/from16 v54, v20

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v44, v50

    .line 1070
    move-wide/from16 v50, v34

    move-wide/from16 v52, v30

    move-wide/from16 v54, v24

    sub-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    move-wide/from16 v48, v50

    goto/16 :goto_c

    .line 1099
    .end local v42    # "graphicX":D
    .end local v44    # "graphicY":D
    .end local v46    # "textX":D
    .end local v48    # "textY":D
    :cond_24
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->textClip:Ljavafx/scene/shape/Rectangle;

    move-object/from16 v50, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v51

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->wrapWidth:D

    move-wide/from16 v53, v0

    sub-double v51, v51, v53

    invoke-virtual/range {v50 .. v52}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    goto/16 :goto_9

    .line 1113
    :cond_25
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/scene/control/skin/LabeledText;->getClip()Ljavafx/scene/Node;

    move-result-object v50

    if-eqz v50, :cond_b

    .line 1114
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/sun/javafx/scene/control/skin/LabeledText;->setClip(Ljavafx/scene/Node;)V

    goto/16 :goto_a
.end method

.method protected leftLabelPadding()D
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Labeled;

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->getLabelPadding()Ljavafx/geometry/Insets;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapSize(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v0
.end method

.method protected mnemonicTargetChanged()V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->containsMnemonic:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 264
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->removeMnemonic()V

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v1, v2

    .line 270
    .local v1, "control":Ljavafx/scene/control/Control;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/control/Label;

    if-eqz v2, :cond_1

    .line 271
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getLabelFor()Ljavafx/scene/Node;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    .line 272
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->addMnemonic()V

    .line 278
    .end local v1    # "control":Ljavafx/scene/control/Control;
    :cond_0
    :goto_0
    return-void

    .line 275
    .restart local v1    # "control":Ljavafx/scene/control/Control;
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->labeledNode:Ljavafx/scene/Node;

    goto :goto_0
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1155
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :goto_0
    return-object v0

    .line 1123
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Labeled;

    move-object v3, v6

    .line 1124
    .local v3, "labeled":Ljavafx/scene/control/Labeled;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/Labeled;->getAccessibleText()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1125
    .local v4, "accText":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 1128
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    if-eqz v6, :cond_1

    .line 1129
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1130
    .local v5, "text":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 1135
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 1136
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/Labeled;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1137
    .restart local v5    # "text":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 1143
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    if-eqz v6, :cond_3

    .line 1144
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    sget-object v7, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1145
    .local v5, "result":Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_3

    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 1147
    .end local v5    # "result":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 1150
    .end local v3    # "labeled":Ljavafx/scene/control/Labeled;
    .end local v4    # "accText":Ljava/lang/String;
    :pswitch_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    if-eqz v6, :cond_4

    .line 1151
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->bindings:Lcom/sun/javafx/scene/control/behavior/TextBinding;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonic()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1153
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected rightLabelPadding()D
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Labeled;

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->getLabelPadding()Ljavafx/geometry/Insets;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapSize(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v0
.end method

.method protected topLabelPadding()D
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Labeled;

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->getLabelPadding()Ljavafx/geometry/Insets;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->snapSize(D)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    return-wide v0
.end method

.method protected updateChildren()V
    .locals 8

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Labeled;

    move-object v1, v2

    .line 558
    .local v1, "labeled":Ljavafx/scene/control/Labeled;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    if-eqz v2, :cond_0

    .line 559
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphicPropertyChangedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 562
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled;->getGraphic()Ljavafx/scene/Node;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    .line 566
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    instance-of v2, v2, Ljavafx/scene/image/ImageView;

    if-eqz v2, :cond_1

    .line 567
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setMouseTransparent(Z)V

    .line 571
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreGraphic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->getContentDisplay()Ljavafx/scene/control/ContentDisplay;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ContentDisplay;->GRAPHIC_ONLY:Ljavafx/scene/control/ContentDisplay;

    if-ne v2, v3, :cond_2

    .line 573
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 590
    :goto_0
    return-void

    .line 575
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 578
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphicPropertyChangedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 579
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->isIgnoreText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 580
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 582
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->graphic:Ljavafx/scene/Node;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->text:Lcom/sun/javafx/scene/control/skin/LabeledText;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method updateDisplayedText()V
    .locals 6

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;, "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase<TC;TB;>;"
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->updateDisplayedText(DD)V

    .line 306
    return-void
.end method
